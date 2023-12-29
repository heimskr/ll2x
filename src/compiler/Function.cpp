#include <cassert>
#include <climits>
#include <ctime>
#include <iomanip>
#include <iostream>
#include <unistd.h>

#define DEBUG_BLOCKS
// #define DEBUG_LINEAR
#define DEBUG_VARS
// #define DEBUG_RENDER
// #define DEBUG_SPILL
// #define DEBUG_SPLIT
#define DEBUG_READ_WRITTEN
// #define DISABLE_COMMENTS
// #define DEBUG_ESTIMATIONS
#define DEBUG_BLOCK_LIVENESS
#define DEBUG_VAR_LIVENESS
// #define DEBUG_ALIASES
// #define DEBUG_STACK
// #define DEBUG_CANSPILL
// #define DEBUG_MINILABELS
// #define DEBUG_BEFORE_SETUPCALLS
// #define DEBUG_AFTER_SETUPCALLS
// #define DEBUG_BEFORE_ALLOC
// #define DEBUG_BEFORE_FINAL
#define FINAL_DEBUG
#define STRICT_READ_CHECK
#define STRICT_WRITTEN_CHECK
// #define FN_CATCH_EXCEPTIONS
#define MOVE_PHI // Insert moves instead of coalescing ϕ-instructions.
// #define MERGE_SET_LIVENESS // Whether to use the slow and possibly badly implemented merge set method for liveness.
// #define TRADITIONAL_LIVENESS // Whether to calculate liveness using a traditional, non-SSA algorithm.

#include "Interactive.h"
#include "allocator/ColoringAllocator.h"
#include "compiler/Function.h"
#include "compiler/Getelementptr.h"
#include "compiler/Instruction.h"
#include "compiler/LLVMInstruction.h"
#include "compiler/Program.h"
#include "exception/NoChoiceError.h"
#include "instruction/Add.h"
#include "instruction/Clobber.h"
#include "instruction/Comment.h"
#include "instruction/DummyDefiner.h"
#include "instruction/Imul.h"
#include "instruction/Label.h"
#include "instruction/Lea.h"
#include "instruction/Mov.h"
#include "instruction/Mul.h"
#include "instruction/Or.h"
#include "instruction/Shl.h"
#include "options.h"
#include "parser/ASTNode.h"
#include "parser/FunctionArgs.h"
#include "parser/FunctionHeader.h"
// #include "pass/BreakUpBigSets.h"
// #include "pass/CopyArguments.h"
#include "pass/FillLocalValues.h"
#include "pass/FillOperands.h"
#include "pass/FinishMultireg.h"
#include "pass/FixBigConstants.h"
#include "pass/FixMemoryOperands.h"
#include "pass/FixMovzx.h"
#include "pass/HackOperands.h"
#include "pass/IgnoreIntrinsics.h"
#include "pass/InsertLabels.h"
#include "pass/InsertPrologue.h"
// #include "pass/LoadArguments.h"
#include "pass/LowerAlloca.h"
#include "pass/LowerAtomicrmw.h"
#include "pass/LowerBranches.h"
#include "pass/LowerClobber.h"
#include "pass/LowerConversions.h"
#include "pass/LowerExtractvalue.h"
// #include "pass/LowerFreeze.h"
#include "pass/LowerGetelementptr.h"
#include "pass/LowerIcmp.h"
// #include "pass/LowerInlineAsm.h"
// #include "pass/LowerInsertvalue.h"
#include "pass/LowerMath.h"
#include "pass/LowerMemcpy.h"
#include "pass/LowerMemmove.h"
#include "pass/LowerMemory.h"
#include "pass/LowerMemset.h"
// #include "pass/LowerObjectsize.h"
#include "pass/LowerRet.h"
#include "pass/LowerSelect.h"
// #include "pass/LowerStack.h"
// #include "pass/LowerStackrestore.h"
#include "pass/LowerStacksave.h"
#include "pass/LowerSwitch.h"
// #include "pass/LowerVarargs.h"
#include "pass/MakeCFG.h"
#include "pass/MergeAllBlocks.h"
#include "pass/MinimizeBlocks.h"
#include "pass/Phi.h"
#include "pass/RemoveDummies.h"
// #include "pass/RemoveRedundantMoves.h"
// #include "pass/RemoveUnreachable.h"
#include "pass/RemoveUselessBranches.h"
#include "pass/ReplaceBigMov.h"
#include "pass/ReplaceCmov.h"
#include "pass/ReplaceConstants.h"
#include "pass/ReplaceGlobalTemporaries.h"
// #include "pass/ReplaceStoresAndLoads.h"
#include "pass/SetupCalls.h"
#include "pass/SplitBlocks.h"
// #include "pass/SplitResultMoves.h"
#include "pass/StackSkip.h"
// #include "pass/TransformInstructions.h"
#include "pass/TransformLabels.h"
#include "pass/TrimBlocks.h"
// #include "pass/UpdateArgumentLoads.h"
#include "util/CompilerUtil.h"
#include "util/Timer.h"
#include "util/Util.h"
#include "util/strnatcmp.h"

namespace LL2X {
	Function::Function(Program &program, const ASTNode &node): parent(program), name(node.lexerInfo) {
		auto *header = dynamic_cast<FunctionHeader *>(node.front());
		if (header == nullptr)
			throw std::runtime_error("header is null in Function::Function");
		argumentsNode = header->arguments;
		arguments = &argumentsNode->arguments;
		astnode = &node;
		returnType = header->returnType;
		allocator = std::make_unique<ColoringAllocator>(*this);
		debugIndex = header->debugIndex;
		section = header->section;
	}

	Allocator::Result Function::attemptAllocation() {
		if ((lastAllocationResult = allocator->attempt()) == Allocator::Result::Success)
			allocationDone = true;
		return lastAllocationResult;
	}

	Function::Type Function::analyze(ValuePtr *value_out, int64_t *simple_index_out) {
		extractBlocks();
		Passes::ignoreIntrinsics(*this);
		if (linearInstructions.size() == 1) {
			const auto &only = linearInstructions.front();
			if (const auto *llvm = dynamic_cast<const LLVMInstruction *>(only.get())) {
				if (const auto *ret = dynamic_cast<const RetNode *>(llvm->node)) {
					switch (ret->value->valueType()) {
						case ValueType::Void:
							// info() << "Useless: " << *name << '\n';
							return analyzedType = Type::Useless;
						case ValueType::Int:
						case ValueType::Undef:
						case ValueType::Null:
						case ValueType::Bool:
						case ValueType::Global:
						case ValueType::Double:
							// info() << "Constant: " << *name << " (" << *ret->value << ")\n";
							if (value_out != nullptr)
								*value_out = ret->value;
							return analyzedType = Type::Constant;
						case ValueType::Local: {
							const Variable::ID pvar = dynamic_cast<const LocalValue *>(ret->value.get())->name;
							if (isArgument(pvar)) {
								if (simple_index_out != nullptr) {
									if (!Util::isNumeric(pvar)) {
										warn() << "Argument pvar isn't numeric; not classifying function as simple: "
											<< *pvar << '\n';
										break;
									}
									*simple_index_out = Util::parseLong(pvar);
									// info() << "Simple: " << *name << " (" << *simple_index_out << ")\n";
								} // else info() << "Simple: " << *name << '\n';
								return analyzedType = Type::Simple;
							}

							info() << "Not simple: " << *name << '\n';
							break;
						}
						default:
							break;
					}
				}
			}
		}

		return analyzedType = Type::Complex;
	}

	void Function::extractBlocks() {
		const std::string *label = StringSet::intern(std::to_string(arguments->size()));
		std::vector<const std::string *> preds {};
		std::list<InstructionPtr> instructions;
		size_t offset = 0;
		int instructionIndex = -1;
		int blockIndex = -1;
		linearInstructions.clear();
		bbLabels.clear();
		bbMap.clear();
		blocks.clear();

		std::function<void(BasicBlockPtr)> finishBlock = [&](const BasicBlockPtr &block) {
			block->offset = offset;
			block->parent = this;
			block->index = ++blockIndex;
			bbLabels.insert(block->label);
			bbMap.emplace(block->label, block);
			for (const InstructionPtr &instruction: instructions) {
				instruction->parent = block;
				instruction->extract();
				for (const std::unordered_set<VariablePtr> *variables: {&instruction->read, &instruction->written})
					for (const VariablePtr &vptr: *variables)
						variableStore.emplace(vptr->id, vptr);
			}
		};

		for (ASTNode *child: *astnode->at(1)) {
			if (child->symbol == LLVM_BLOCKHEADER) {
				blocks.push_back(std::make_shared<BasicBlock>(label, preds, instructions));
				finishBlock(blocks.back());
				offset += instructions.size();
				preds.clear();
				instructions.clear();
				const auto *header = dynamic_cast<const HeaderNode *>(child);
				if (header == nullptr)
					throw std::runtime_error("header is null in Function::extractBlocks");
				label = header->label;
				preds = header->preds;
			} else if (auto *instruction = dynamic_cast<InstructionNode *>(child)) {
				instructions.push_back(std::make_shared<LLVMInstruction>(instruction, ++instructionIndex));
				linearInstructions.push_back(instructions.back());
			}
		}

		if (!instructions.empty()) {
			blocks.push_back(std::make_shared<BasicBlock>(label, preds, instructions));
			finishBlock(blocks.back());
		}
	}

	BasicBlockPtr Function::getBlock(const std::string *label, bool can_throw) const {
		if (label->front() == '%')
			return getBlock(StringSet::intern(label->substr(1)));
		label = StringSet::unquote(label);
		if (!bbMap.contains(label)) {
			if (can_throw) {
				std::cerr << "Want: \"" << *label << "\"\n";
				for (const auto &[bname, block]: bbMap)
					std::cerr << "- \"" << *bname << "\"\n";
				throw std::runtime_error("Couldn't find block " + *label + " in function " + *name);
			}
			return nullptr;
		}
		return bbMap.at(label);
	}

	void Function::extractVariables(bool reset) {
		Timer timer("ExtractVariables");
		if (reset)
			for (const auto &map: {variableStore, extraVariables})
				for (const auto &[id, var]: map) {
					var->setUsingBlocks({});
					var->setDefiningBlocks({});
					var->setDefinitions({});
					var->setUses({});
					var->setLastUse({});
				}

		for (const BasicBlockPtr &block: blocks) {
			for (const VariablePtr &read_var: block->read)
				read_var->addUsingBlock(block);
			for (const VariablePtr &written_var: block->written)
				written_var->addDefiner(block);
			for (const InstructionPtr &instruction: block->instructions) {
				for (const VariablePtr &read_var: instruction->read) {
					read_var->setLastUse(instruction);
					read_var->addUse(instruction);
				}
				for (const VariablePtr &written_var: instruction->written)
					written_var->addDefinition(instruction);
			}
		}

		for (const auto &map: {variableStore, extraVariables})
			for (const auto &[id, var]: map)
				if (var->definingBlocks.empty()) {
					// Function arguments aren't defined by any instruction.
					// They're implicitly defined in the first block.
					if (isArgument(id)) {
						var->addDefiner(blocks.front());
						blocks.front()->written.insert(var);
					} else if (!var->usingBlocks.empty()) {
						BasicBlockPtr block = var->usingBlocks.begin()->lock();
						// info() << "Adding definer " << *block->label << " to " << var->ansiString() << '\n';
						var->addDefiner(block);
						block->written.insert(var);
					}
				}
	}

	void Function::extractInstructions(bool force) {
		for (const InstructionPtr &instruction: linearInstructions)
			instruction->extract(force);
	}

	void Function::relinearize() {
		Timer timer("Relinearize");
		linearInstructions.clear();
		int index = -1;
		for (BasicBlockPtr &block: blocks)
			for (InstructionPtr &instruction: block->instructions) {
				instruction->index = ++index;
				linearInstructions.push_back(instruction);
			}
	}

	Variable::ID Function::newLabel() const {
		auto label = getArity();
		const std::string *interned = nullptr;
		for (;;) {
			interned = StringSet::intern(std::to_string(label));
			if (0 < variableStore.count(interned) + extraVariables.count(interned) + bbLabels.count(interned))
				++label;
			else
				break;
		}

		return interned;
	}

	VariablePtr Function::newVariable(const TypePtr &type, const BasicBlockPtr &definer) {
		return getVariable(newLabel(), type, definer);
	}

	bool Function::spill(const VariablePtr &variable, bool do_debug) {
		// warn() << "Spilling " << *variable << '\n';

		bool out = false;
		// Right after the definition of the variable to be spilled, store its value onto the stack in the proper
		// location. For each use of the original variable, replace the original variable with a new variable, and right
		// before the use insert a definition for the variable by loading it from the stack.
		if (variable->definitions.empty()) {
			debug();
			variable->debug();
			throw std::runtime_error("Can't spill variable " + variable->toString() + ": no definitions");
		}

		const StackLocation &location = getSpill(variable, true);

		for (const std::weak_ptr<Instruction> &weak_definition: variable->definitions) {
			InstructionPtr definition = weak_definition.lock();
			// Because ϕ-instructions are eventually removed after aliasing the variables, they don't count as a real
			// definition here.
			// TODO: the above was true for coalescePhi. Is it true for movePhi as well?
			if (definition->isPhi())
				continue;
#ifdef DEBUG_SPILL
			std::cerr << "  Trying to spill " << *variable << " (definition: " << definition->debugExtra() << " at "
			          << definition->index << ", OID: " << *variable->originalID << ")\n";
#endif
			auto store = std::make_shared<Mov>(OpV(variable), Op8(-location.offset, pcRbp));
			store->meta.insert(InstructionMeta::StackStore);

			auto next = after(definition);
			bool should_insert = true;

			// Skip comments.
			while (next && dynamic_cast<Comment *>(next.get()) != nullptr)
				next = after(next);

			if (next) {
				auto other_store = std::dynamic_pointer_cast<Mov>(next);
				if (other_store && other_store->meta.contains(InstructionMeta::StackStore) && *other_store == *store) {
					should_insert = false;
#ifdef DEBUG_SPILL
					std::cerr << "    A stack store already exists: " << next->debugExtra() << "\n";
#endif
				}
			}

			if (should_insert) {
				assert(variable);

				if (!definition->replaceSimilarOperand(OpV(variable), Op8(-location.offset, pcRbp))) {
					// If we couldn't replace the operand (movsx, for example, rejects attempts to change its
					// destination), we need to cancel the spill.
					return false;
				}

				insertBefore<DummyDefiner>(definition, OpV(variable));

				definition->extract(true);

				// Hopefully the blocks are minimized at this point.
				// TODO: Do we need to reminimize after spilling?

				store->setDebug(*definition, true);
				out = true;
#ifdef DEBUG_SPILL
				std::cerr << "    Inserting a stack store after definition: " << store->debugExtra() << "\n";
#endif
			} else {
				comment(after(definition), "Spill: no store inserted here for " + variable->plainString());
#ifdef DEBUG_SPILL
				std::cerr << "    \e[1mNot\e[22m inserting a stack store after definition: " << store->debugExtra()
				          << "\n";
#endif
			}
		}

#ifdef DEBUG_SPILL
		if (!out)
			std::cerr << "  No stores inserted for " << *variable << ".\n";
#endif

		if (do_debug)
			debug();

		for (auto iter = linearInstructions.begin(), end = linearInstructions.end(); iter != end; ++iter) {
			InstructionPtr &instruction = *iter;
			if (auto mov = std::dynamic_pointer_cast<Mov>(instruction))
				if (mov->meta.contains(InstructionMeta::StackStore))
					continue;
#ifdef STRICT_READ_CHECK
			if (std::shared_ptr<Variable> read = instruction->doesRead(variable)) {
#else
			if (instruction->read.contains(variable)) {
#endif
				const std::string old_extra = instruction->debugExtra();
#ifdef STRICT_READ_CHECK
				const bool replaced = instruction->canReplaceRead(read);
#else
				const bool replaced = instruction->canReplaceRead(variable);
#endif
				if (replaced) {
					OperandPtr replacement = Op8(-location.offset, pcRbp);
					if (!instruction->replaceSimilarOperand(OpV(read), replacement)) {
						const auto operands = instruction->getOperands();
						VariablePtr new_var;
						for (const auto &operand_wrapper: operands) {
							OperandPtr &operand = operand_wrapper.get();
							// If we have an operand like "(%v)", we can't replace %v directly. Instead, we have to move
							// the value at the spill location into a new variable and replace the variable in the
							// operand with the new variable.
							if (operand->isIndirect() && operand->reg == read) {
								if (!new_var)
									new_var = newVariable(read->type, instruction->parent.lock());
								insertBefore<Mov>(instruction, replacement, OpV(new_var));
								operand->reg = new_var;
#ifdef DEBUG_SPILL
								info() << "Hacked " << old_extra << " into " << instruction->debugExtra() << '\n';
#endif
							}
						}
					} else {
						instruction->extract(true);
						out = true;
					}
#ifdef DEBUG_SPILL
					std::cerr << "      Replaced operand in " << instruction->debugExtra() << '\n';
#endif
				}
#ifdef DEBUG_SPILL
				BasicBlockPtr par = instruction->parent.lock();
				std::cerr << "    " << (replaced? "Replaced" : "Didn't replace")
				          << " in " << old_extra;
				if (par)
					std::cerr << " in block " << *par->label;
				if (replaced)
					std::cerr << " (now " << instruction->debugExtra() << ")";
				std::cerr << "\n";
#endif
			}
		}
#ifdef DEBUG_SPILL
		std::cerr << "\n";
#endif

		// Doing this surprisingly speeds things up significantly. It also probably improves code correctness...
		extractInstructions(true);

		// TODO: can some of this be targeted to just the spilled variable?
		reindexInstructions();
		resetLiveness();
		for (BasicBlockPtr &block: blocks)
			block->extract(true);
		extractVariables(true); // Reset stale use/define data.
		computeLiveness();
		markSpilled(variable);
		return out;
	}

	void Function::markSpilled(const VariablePtr &variable) {
		spilledVariables.insert(variable->originalID);
	}

	bool Function::isSpilled(const VariablePtr &variable) const {
		return spilledVariables.contains(variable->originalID);
	}

	bool Function::canSpill(const VariablePtr &variable) {
		if (variable->definitions.empty()) {
#ifdef DEBUG_CANSPILL
			std::cerr << "Can't spill " << variable->ansiString() << ": no definitions\n";
#endif
			return false;
		}

		if (isSpilled(variable)) {
#ifdef DEBUG_CANSPILL
			std::cerr << "Can't spill " << variable->ansiString() << ": already spilled\n";
#endif
			return false;
		}

		// If the only definition is a stack store, the variable can't be spilled.
		if (variable->definitions.size() == 1) {
			InstructionPtr single_def = variable->definitions.begin()->lock();
			auto *store = dynamic_cast<Mov *>(single_def.get());
			if (store != nullptr && store->meta.contains(InstructionMeta::StackStore) &&
				store->source->reg == variable) {
#ifdef DEBUG_CANSPILL
				std::cerr << "Can't spill " << variable->ansiString() << ": only definition is a stack store\n";
#endif
				return false;
			}
		}

		for (const std::weak_ptr<Instruction> &weak_definition: variable->definitions) {
			InstructionPtr definition = weak_definition.lock();
			// Because ϕ-instructions are eventually removed after aliasing the variables, they don't count as a real
			// definition here.
			if (definition->isPhi())
				continue;

			bool created = false;
			const StackLocation &location = getSpill(variable, true, &created);
			auto store = std::make_shared<Mov>(OpV(variable), Op8(-location.offset, pcRbp));
			store->meta.insert(InstructionMeta::StackStore);

			auto next = after(definition);
			bool should_insert = true;

			// Skip comments.
			while (next && dynamic_cast<Comment *>(next.get()) != nullptr)
				next = after(next);

			if (next) {
				auto other_store = std::dynamic_pointer_cast<Mov>(next);
				if (other_store && other_store->meta.contains(InstructionMeta::StackStore) && *other_store == *store)
					should_insert = false;
			}

			if (created) {
				// Undo addToStack
				// warn() << "Undo addToStack for " << *variable << "\n";
				if (location.width != -1) {
					stackSize -= location.width;
					spillSize -= location.width;
				}
				stack.erase(location.offset);
			}

			if (should_insert) {
#ifdef DEBUG_CANSPILL
			std::cerr << "Can spill " << variable->ansiString() << ": should insert\n";
#endif
				return true;
			}
		}

		for (auto iter = linearInstructions.begin(), end = linearInstructions.end(); iter != end; ++iter) {
			InstructionPtr &instruction = *iter;
#ifdef STRICT_READ_CHECK
			if (std::shared_ptr<Variable> read = instruction->doesRead(variable))
				if (instruction->canReplaceRead(read)) {
#ifdef DEBUG_CANSPILL
					std::cerr << "Can spill " << variable->ansiString() << ": is read and can be replaced\n";
#endif
					return true;
				}
#else
			if (instruction->read.contains(variable) && instruction->canReplaceRead(variable)) {
#ifdef DEBUG_CANSPILL
				std::cerr << "Can spill " << variable->ansiString() << ": is read and can be replaced\n";
#endif
				return true;
			}
#endif
		}

		warn() << "Can't spill " << *variable << ".\n";
		return false;
	}

	bool Function::isArgument(Variable::ID id) const {
		return Variable::isLess(id, static_cast<int64_t>(getArity()));
	}

	InstructionPtr Function::firstInstruction(bool includeComments) {
		if (includeComments) {
			for (const InstructionPtr &instruction: blocks.front()->instructions)
				if (dynamic_cast<Label *>(instruction.get()) == nullptr)
					return instruction;
		} else
			for (const InstructionPtr &instruction: blocks.front()->instructions)
				if (dynamic_cast<Label *>(instruction.get()) == nullptr)
					if (dynamic_cast<Comment *>(instruction.get()) == nullptr)
						return instruction;
		return nullptr;
	}

	InstructionPtr Function::before(const InstructionPtr &instruction) {
		auto iter = std::find(linearInstructions.begin(), linearInstructions.end(), instruction);
		return iter == linearInstructions.end() || iter == linearInstructions.begin()? nullptr : *--iter;
	}

	InstructionPtr Function::after(const InstructionPtr &instruction) {
		auto iter = std::find(linearInstructions.begin(), linearInstructions.end(), instruction);
		if (iter == linearInstructions.end())
			return nullptr;
		++iter;
		return iter == linearInstructions.end()? nullptr : *iter;
	}

	BasicBlockPtr Function::after(const BasicBlockPtr &block) {
		auto iter = std::find(blocks.begin(), blocks.end(), block);
		if (iter == blocks.end())
			return nullptr;
		++iter;
		return iter == blocks.end()? nullptr : *iter;
	}

	InstructionPtr Function::insertAfter(const InstructionPtr &base, const InstructionPtr &new_instruction,
	                                     bool reindex) {
		BasicBlockPtr block = base->parent.lock();
		if (!block) {
			std::cerr << "\e[31;1m!\e[0m " << base->debugExtra() << "\n";
			throw std::runtime_error("Couldn't lock instruction's parent block");
		}

		if (new_instruction->debugIndex == -1)
			new_instruction->debugIndex = base->debugIndex;

		if (reindex)
			// There used to be a + 1 here, but I removed it because I believe it gets incremented in the loop shortly
			// before the end of this function anyway.
			new_instruction->index = base->index;
		new_instruction->parent = base->parent;
		std::list<InstructionPtr>::iterator iter;

		if (base == linearInstructions.back()) {
			linearInstructions.push_back(new_instruction);
			block->instructions.push_back(new_instruction);
		} else {
			if (base == block->instructions.back()) {
				block->instructions.push_back(new_instruction);
			} else {
				iter = std::find(block->instructions.begin(), block->instructions.end(), base);
				++iter;
				block->instructions.insert(iter, new_instruction);
			}

			iter = std::find(linearInstructions.begin(), linearInstructions.end(), base);
			++iter;
			linearInstructions.insert(iter, new_instruction);

			if (reindex) {
				for (auto end = linearInstructions.end(); iter != end; ++iter)
					++(*iter)->index;
			}
		}

		return new_instruction;
	}

	InstructionPtr Function::insertBefore(const InstructionPtr &base, const InstructionPtr &new_instruction,
	                                      bool reindex, bool linear_warn, bool *should_relinearize_out) {
		BasicBlockPtr block = base->parent.lock();
		if (!block) {
			error() << base->debugExtra() << "\n";
			throw std::runtime_error("Couldn't lock instruction's parent block");
		}

		if (block->parent != this)
			throw std::runtime_error("Block parent isn't equal to this in Function::insertBefore");

		if (new_instruction->debugIndex == -1)
			new_instruction->debugIndex = base->debugIndex;

		new_instruction->parent = base->parent;

		auto linearIter = std::find(linearInstructions.begin(), linearInstructions.end(), base);
		if (linear_warn && linearIter == linearInstructions.end()) {
			warn() << "Couldn't find instruction in linearInstructions in " << *name << ": " << base->debugExtra()
			       << '\n';
			throw std::runtime_error("youch");
		}
		auto blockIter = std::find(block->instructions.begin(), block->instructions.end(), base);
		if (blockIter == block->instructions.end()) {
			warn() << "Couldn't find instruction in block " << *block->label << " of function " << *name << ": "
			       << base->debugExtra() << '\n';
			std::cerr << "Index: " << block->index << '\n';
			for (const auto &subblock: blocks)
				std::cerr << *subblock->label << '[' << subblock->index << "] ";
			std::cerr << "\nInstruction list:\n";
			for (const auto &block_instruction: block->instructions)
				std::cerr << "    " << block_instruction->debugExtra() << '\n';
			throw std::runtime_error("Instruction not found in block");
		}

		const bool can_insert_linear = linearIter != linearInstructions.end();
		if (can_insert_linear) {
			linearInstructions.insert(linearIter, new_instruction);
			if (should_relinearize_out != nullptr)
				*should_relinearize_out = false;
		} else if (should_relinearize_out != nullptr)
			*should_relinearize_out = true;

		block->instructions.insert(blockIter, new_instruction);

		if (reindex && can_insert_linear) {
			new_instruction->index = base->index;
			for (auto end = linearInstructions.end(); linearIter != end; ++linearIter)
				++(*linearIter)->index;
		}

		return new_instruction;
	}

	InstructionPtr Function::insertBefore(const InstructionPtr &base, const InstructionPtr &new_instruction,
	                                      const std::string &text, bool reindex) {
		insertBefore(base, new_instruction, false);
		comment(new_instruction, text, reindex);
		return new_instruction;
	}

	InstructionPtr Function::insertBefore(const InstructionPtr &base, const InstructionPtr &new_instruction,
	                                      const char *text, bool reindex) {
		insertBefore(base, new_instruction, std::string(text), reindex);
		return new_instruction;
	}

	InstructionPtr Function::comment(const InstructionPtr &instruction, const std::string &text, bool reindex) {
#ifndef DISABLE_COMMENTS
		InstructionPtr comment = std::make_shared<Comment>(text);
		insertBefore(instruction, comment, reindex);
		return comment;
#else
		return nullptr;
#endif
	}

	void Function::removeUselessBranch(const BasicBlockPtr &block) {
		if (block->instructions.empty())
			return;

		InstructionPtr &back = block->instructions.back();

		if (auto llback = std::dynamic_pointer_cast<LLVMInstruction>(back)) {
			if (llback->node->nodeType() == NodeType::BrUncond) {
				if (const auto *branch = dynamic_cast<const BrUncondNode *>(llback->node)) {
					if (BasicBlockPtr next = after(block)) {
						const std::string destination = branch->destination->substr(1);
						if (*next->label == destination)
							remove(back);
					}
				} else
					throw std::runtime_error("branch is null in Function::removeUselessBranch");
			}
		}
	}

	void Function::reindexInstructions() {
		int index = -1;
		for (const InstructionPtr &instruction: linearInstructions)
			instruction->index = ++index;
	}

	void Function::reindexBlocks() {
		int index = -1;
		for (const BasicBlockPtr &block: blocks)
			block->index = ++index;
	}

	BasicBlockPtr Function::splitBlock(const BasicBlockPtr &block, const InstructionPtr &instruction) {
		Timer timer("SplitBlock");
		const std::string *label = newLabel();
#ifdef DEBUG_SPLIT
		std::cerr << "Splitting " << *block->label << " (" << block->instructions.size() << ") into " << *block->label
		          << " & " << *label << "\n";
#endif
		auto end = block->instructions.end();
		auto iter = std::find(block->instructions.begin(), end, instruction);
		if (iter == end) {
#ifdef DEBUGS_SPLIT
			warn() << "Can't split " << *block->label << ": instruction is at end of block\n";
#endif
			return nullptr;
		}

		BasicBlockPtr new_block = std::make_shared<BasicBlock>(label, std::vector<const std::string *> {block->label},
			std::list<InstructionPtr>());
		new_block->parent = this;
		bbLabels.insert(label);
		bbMap.emplace(label, new_block);

		for (++iter; iter != end;) {
			for (const VariablePtr &var: (*iter)->written) {
				var->removeDefiner(block);
				var->addDefiner(new_block);
			}

			(*iter)->parent = new_block;
			new_block->instructions.push_back(*iter);
			block->instructions.erase(iter++);
		}

		// Replace the old label with the new label in the preds of all basic blocks.
		for (BasicBlockPtr &possible_successor: blocks) {
			auto predIter = std::find(possible_successor->preds.begin(), possible_successor->preds.end(), block->label);
			if (predIter != possible_successor->preds.end())
				*predIter = label;
		}

		// Insert the new block after the original block.
		auto blockIter = std::find(blocks.begin(), blocks.end(), block);
		++blockIter;
		blocks.insert(blockIter, new_block);

		// Add an unconditional branch from the original block to the new block.
		auto *node = new BrUncondNode("%" + *label);
		std::shared_ptr<LLVMInstruction> branch = std::make_shared<LLVMInstruction>(node, -1, true);
		branch->parent = block;
		block->instructions.push_back(branch);
		iter = std::find(linearInstructions.begin(), linearInstructions.end(), instruction);
		if (iter == linearInstructions.end())
			warn() << "Couldn't find instruction in Function::splitBlock: " << instruction->debugExtra() << '\n';
		++iter;
		linearInstructions.insert(iter, branch);

		// We need to update ϕ-instructions.
		for (const auto &possible_llvm: linearInstructions) {
			auto llvm = std::dynamic_pointer_cast<LLVMInstruction>(possible_llvm);
			if (!llvm || llvm->node->nodeType() != NodeType::Phi)
				continue;
			auto *phi = dynamic_cast<PhiNode *>(llvm->node);
			for (auto &[value, phi_label]: phi->pairs)
				if (phi_label == block->label)
					phi_label = label;
		}

		block->extract(true);
		new_block->extract();

		reindexInstructions();
		return new_block;
	}

	void Function::mergeBlocks(const BasicBlockPtr &before, const BasicBlockPtr &after) {
		// Update the preds of all the blocks by replacing the after-block's label with the before-block's.
		for (const BasicBlockPtr &block: blocks) {
			for (const std::string *&pred: block->preds) {
				if (pred == after->label)
					pred = before->label;
			}
		}

		// Move all instructions from the after-block to the before-block.
		for (InstructionPtr &instruction: after->instructions) {
			before->instructions.push_back(instruction);
			instruction->parent = before;
		}
		after->instructions.clear();

		// Replace the after-block's label with the before-block's in all instructions.
		// TODO: Add x86_64 branches.
		const std::string *before_p_label = StringSet::intern("%" + *before->label);
		const std::string *after_p_label  = StringSet::intern("%" + *after->label);
		const std::string *before_label   = before->label;
		const std::string *after_label    = after->label;
		for (InstructionPtr &instruction: linearInstructions) {
			if (BrUncondNode *branch = CompilerUtil::brUncondCast(instruction)) {
				if (branch->destination == after_p_label)
					branch->destination = before_p_label;
			} else if (BrCondNode *branch = CompilerUtil::brCondCast(instruction)) {
				if (branch->ifTrue == after_p_label)
					branch->ifTrue = before_p_label;
				if (branch->ifFalse == after_p_label)
					branch->ifFalse = before_p_label;
			} else if (SwitchNode *sw = CompilerUtil::switchCast(instruction)) {
				if (sw->label == after_label)
					sw->label = before_label;
				for (std::tuple<TypePtr, ValuePtr, const std::string *> &tuple: sw->table) {
					if (std::get<2>(tuple) == after_label)
						std::get<2>(tuple) = before_label;
				}
			}
		}

		blocks.remove(after);
	}

	Node & Function::operator[](const BasicBlock &bb) const {
		return *bbNodeMap.at(&bb);
	}

	size_t Function::getArity() const {
		return arguments != nullptr? arguments->size() : 0;
	}

	bool Function::isVariadic() const {
		return argumentsNode? argumentsNode->ellipsis : false;
	}

	std::string Function::transformLabel(const std::string &str) const {
		const std::string end = str.front() == '%'? str.substr(1) : str;
		// Some lambdas will have names like "@\"_ZZ11kernel_mainENK3$_0clEm\""
		if (1 < name->size() && (*name)[1] == '"')
			return ".\"__" + name->substr(2, name->size() - 3) + "__" + end + "\"";
		return ".__" + name->substr(1) + "__" + end;
	}

	void Function::updateInstructionNodes() {
		Timer timer("UpdateInstructionNodes");
		for (InstructionPtr &instruction: linearInstructions) {
			auto llvm = std::dynamic_pointer_cast<LLVMInstruction>(instruction);
			if (!llvm)
				continue;

			InstructionNode *node = llvm->node;
			if (auto *reader = dynamic_cast<Reader *>(node)) {
				for (const std::shared_ptr<LocalValue> &value: reader->allLocals()) {
					if (value->variable)
						value->name = value->variable->id;
				}
			}

			if (auto *writer = dynamic_cast<Writer *>(node)) {
				if (writer->operand && writer->operand->isRegister())
					writer->result = writer->operand->reg->id;
			}
		}
	}

	void Function::resetRegisters(bool respectful) {
		if (!respectful)
			for (const auto &[id, var]: variableStore)
				// TODO: should we force-reset the registers here?
				var->resetRegisters();
		else
			for (const auto &[id, var]: variableStore) {
				std::unordered_set<int> to_remove;
				for (const int reg: var->registers)
					if (!x86_64::isSpecialPurpose(reg))
						to_remove.insert(reg);
				for (const int reg: to_remove)
					var->registers.erase(reg);
			}
	}

	void Function::initialCompile() {
		Timer timer("InitialCompile");
		extractBlocks();
		makeInitialDebugIndex();
		BasicBlockPtr entry = getEntry();
		pcRax = makePrecoloredVariable(x86_64::rax, entry);
		pcRdx = makePrecoloredVariable(x86_64::rdx, entry);
		pcRsp = makePrecoloredVariable(x86_64::rsp, entry);
		pcRbp = makePrecoloredVariable(x86_64::rbp, entry);
		pcRip = makePrecoloredVariable(x86_64::rip, entry);
		Passes::ignoreIntrinsics(*this);
		// Passes::insertStackSkip(*this);
		Passes::fillLocalValues(*this);
		Passes::lowerStacksave(*this);
		for (BasicBlockPtr &block: blocks)
			block->extract(true);
		precolorArguments();
		Passes::trimBlocks(*this);
		Passes::splitBlocks(*this);
		// Passes::copyArguments(*this);
		for (BasicBlockPtr &block: blocks)
			block->extract(true);
		Passes::replaceConstants(*this);
		Passes::fillOperands(*this);
		Passes::lowerAlloca(*this);
		// Passes::loadArguments(*this);
		// Passes::lowerObjectsize(*this);
		Passes::lowerIcmp(*this);
		Passes::lowerMath(*this);
		Passes::lowerAtomicrmw(*this);
		Passes::lowerConversions(*this);
		Passes::lowerGetelementptr(*this);
		// Passes::lowerFreeze(*this);
		Passes::lowerSelect(*this);
		// initialStackSize = stackSize;
		// extractVariables();
		// Passes::lowerStackrestore(*this);
		Passes::makeCFG(*this);
		// Passes::lowerVarargsFirst(*this);
		Passes::lowerMemcpy(*this);
		Passes::lowerMemmove(*this);
		Passes::lowerMemset(*this);
#ifdef DEBUG_BEFORE_SETUPCALLS
		debug();
#endif
		Passes::setupCalls(*this);
#ifdef DEBUG_AFTER_SETUPCALLS
		debug();
#endif
		Passes::lowerMemory(*this);
		// Passes::lowerInlineAsm(*this);
		Passes::lowerExtractvalue(*this);
		// Passes::transformInstructions(*this);
		// for (BasicBlockPtr &block: blocks)
		// 	block->extract(true);
		Passes::movePhi(*this);
		for (BasicBlockPtr &block: blocks)
			block->extract(true);
		Passes::lowerSwitch(*this);
		Passes::fixBigConstants(*this);
		Passes::minimizeBlocks(*this);
		Passes::replaceGlobalTemporaries(*this);

		// for (BasicBlockPtr &block: blocks)
		// 	block->extract(true);
		// extractVariables(true);
		// resetLiveness();
		// computeLiveness();

		forceLiveness();

		updateInstructionNodes();
		reindexBlocks();
		initialDone = true;

#ifdef DEBUG_BEFORE_ALLOC
		debug();
#endif
	}

	void Function::finalCompile() {
		Timer timer("FinalCompile");
#ifdef DEBUG_BEFORE_FINAL
		debug();
#endif
		// if (*name == "@_ZL7func_532U1")
		// 	debug();
		// Passes::lowerInsertvalue(*this);
		// Passes::readjustStackSkip(*this);
		// Passes::updateArgumentLoads(*this, stackSize - initialStackSize);
		// Passes::replaceStoresAndLoads(*this);
		// Passes::lowerStack(*this);
		// forceLiveness();
		Passes::finishMultireg(*this);
		// Passes::removeRedundantMoves(*this);
		Passes::removeUselessSourceBranches(*this);
		Passes::fixMemoryOperands(*this);
		Passes::lowerClobber(*this);
		Passes::mergeAllBlocks(*this);
		forceLiveness();
		Passes::insertLabels(*this);
		Passes::lowerBranches(*this);
		Passes::removeUselessTargetBranches(*this);
		Passes::fixMovzx(*this);
		Passes::hackOperands(*this);
		forceLiveness();
		const bool naked = isNaked();
		if (!naked)
			Passes::insertPrologue(*this);
		// Passes::loadArgumentsReadjust(*this);
		if (!naked)
			Passes::lowerRet(*this);
		// Passes::lowerVarargsSecond(*this);
		// Passes::removeUnreachable(*this);
		// Passes::breakUpBigSets(*this);
		// forceLiveness();
		Passes::replaceCmov(*this);
		Passes::replaceBigMov(*this);
		Passes::transformLabels(*this);
		forceLiveness(); // Hack: some other pass is forgetting to extract after changing operands.
		Passes::removeDummies(*this);
		hackVariables();
		forceLiveness();
		// for (InstructionPtr &instruction: linearInstructions) {
		// 	if (instruction->debugIndex != -1) {
		// 		auto lock = parent.getLock();
		// 		parent.debugIndices.insert(instruction->debugIndex);
		// 	}
		// 	if (!dynamic_cast<WhyInstruction *>(instruction.get()))
		// 		error() << "Untranslated instruction in " << *name << ":\n\n    " << instruction->debugExtra()
		// 		        << "\n\n";
		// }
		finalDone = true;
#ifdef FINAL_DEBUG
		// if (*name == "@_ZL7func_532U1")
		// 	debug();
		// allocator->interference.renderTo("interference_final_" + *name + ".png");
		// allocator->interference.renderTo("interference_final_" + *name + ".svg");
		// if (*name == "@_ZL7func_532U1")
		// 	allocator->interference.renderTo("interference_final_" + *name + ".svg");
#endif
	}

	void Function::allocateRegisters() {
		Timer timer("RegisterAllocation");
#ifdef FN_CATCH_EXCEPTIONS
		try {
#endif
			while (allocator->attempt() != Allocator::Result::Success);
#ifdef FN_CATCH_EXCEPTIONS
		} catch (std::exception &err) {
			error() << err.what() << "\n";
			if (parent)
				LL2X::interactive(*parent, this);
			throw;
		}
#endif
	}

	void Function::compile() {
		initialCompile();
#ifdef DEBUG_ALIASES
		debug();
#endif
		allocateRegisters();
		finalCompile();
#ifdef DEBUG_SPILL
		info() << "Total spills: \e[1m" << allocator->getSpillCount() << "\e[0m. Finished \e[1m" << *name
		       << "\e[0m.\n\n";
#endif
	}

	void Function::forceLiveness() {
		Timer timer("ForceLiveness");
		extractInstructions(true);
		for (const BasicBlockPtr &block: blocks)
			block->extract(true);
		extractVariables(true);
		resetLiveness();
		computeLiveness();
	}

	void Function::precolorArguments() {
		static std::array<int, 6> regs {
			x86_64::rdi,
			x86_64::rsi,
			x86_64::rdx,
			x86_64::rcx,
			x86_64::r8,
			x86_64::r9
		};

		if (arguments == nullptr)
			throw std::runtime_error("Can't precolor arguments: arguments vector not present");

		try {
			size_t argument_index = 0;
			const auto arity = getArity();
			for (int i = 0; i < 6 && argument_index < arity;) {
				VariablePtr argument = getVariable(std::to_string(argument_index++), true);
				const int required = argument->registersRequired();
				if (required == 0) {
					++i;
					continue;
				}
				if (6 - i < required)
					break;
				std::set<int> registers;
				for (int j = 0; j < required; ++j)
					registers.insert(regs[i++ + j]);
				argument->setRegisters(registers);
				argument->fixed = true;
			}
		} catch (const std::out_of_range &) {
			warn() << "VariableStore (" << variableStore.size() << ") in " << *name << ":\n";
			for (const auto &[id, var]: variableStore)
				warn() << "  " << *id << '\n';
			throw;
		}
	}

	VariablePtr Function::makePrecoloredVariable(unsigned char index, const BasicBlockPtr &definer) {
		if (x86_64::totalRegisters <= index)
			throw std::invalid_argument("Index too high: " + std::to_string(index));
		VariablePtr new_var = getVariable("pc" + std::to_string(precoloredCount++), IntType::make(64), definer);
		new_var->setRegisters({index});
		new_var->fixed = true;
		return new_var;
	}

	StackLocation & Function::addToStack(const VariablePtr &variable, StackLocation::Purpose purpose, int64_t width,
	                                     int64_t align) {
		for (auto &[offset, location]: stack)
			if (*location.variable == *variable && location.purpose == purpose)
				return location;

		if (width == -1) {
			width = !variable || !variable->type? 8 : Util::upalign(variable->type->width() < 8? 1 :
				variable->type->width() / 8, 8);
		}

		if (align == 0)
			align = 1;

		stackSize = Util::upalign(stackSize + width, align);
		auto &added = stack.try_emplace(stackSize, this, variable, purpose, stackSize, width).first->second;
		if (purpose == StackLocation::Purpose::Spill)
			spillSize += width;
		return added;
	}

	void Function::remove(const InstructionPtr &instruction) {
		instruction->parent.lock()->instructions.remove(instruction);
		auto found = std::find(linearInstructions.begin(), linearInstructions.end(), instruction);
		if (found != linearInstructions.end()) {
			auto iter = found;
			++iter;
			linearInstructions.erase(found);
			for (auto end = linearInstructions.end(); iter != end; ++iter)
				--(*iter)->index;
		}

		for (auto &[id, var]: variableStore) {
			var->removeUse(instruction);
			var->removeDefinition(instruction);
		}
	}

	void Function::remove(const BasicBlockPtr &block) {
		blocks.remove(block);
	}

	void Function::replace(const InstructionPtr &to_replace, const InstructionPtr &substitute) {
		insertBefore(to_replace, substitute);
		remove(substitute);
	}

	VariablePtr Function::get64(const InstructionPtr &before, uint64_t value, bool reindex) {
		VariablePtr var = newVariable(IntType::make(64), before->parent.lock());
		OperandPtr operand = Operand::make(var);
		insertBefore<Mov, false>(before, Op4(value >> 32), operand, 64);
		insertBefore<Shl, false>(before, operand, Op4(32), 64);
		insertBefore<Or,  false>(before, operand, Op4(value & 0xffffffff), 64);
		if (reindex)
			reindexInstructions();
		return var;
	}

	VariablePtr Function::getVariable(Variable::ID id, bool add_arguments) {
		if (variableStore.contains(id))
			return variableStore.at(id);
		if (add_arguments && isArgument(id))
			return getVariable(id, arguments->at(Util::parseLong(id)).type, getEntry());
		if (extraVariables.contains(id))
			return extraVariables.at(id);
		throw std::out_of_range("Couldn't find variable with ID " + *id + " in function " + *name);
	}

	VariablePtr Function::getVariable(const std::string &label, bool add_arguments) {
		return getVariable(StringSet::intern(label), add_arguments);
	}

	VariablePtr Function::getVariable(const std::string &label) {
		return getVariable(StringSet::intern(label));
	}

	VariablePtr Function::getVariable(Variable::ID id, const TypePtr &type, const BasicBlockPtr &definer) {
		const size_t vcount = variableStore.count(id);
		const size_t ecount = extraVariables.count(id);
		if (vcount == 0 && ecount == 0) {
			auto out =
				variableStore.emplace(id, std::make_shared<Variable>(id, type? type->copy() : nullptr)).first->second;
			if (definer)
				out->addDefiner(definer);
			return out;
		}
		VariablePtr out;
		if (ecount != 0)
			out = extraVariables.at(id);
		else
			out = variableStore.at(id);
		if (definer)
			out->addDefiner(definer);
		return out;
	}

	VariablePtr Function::getVariable(const std::string &id, const TypePtr &type, const BasicBlockPtr &definer) {
		return getVariable(StringSet::intern(id), type, definer);
	}

	BasicBlockPtr Function::getEntry() {
		return blocks.front();
	}

	bool Function::isLiveInUsingMergeSet(const Node::NMap &merges, Node *block, const VariablePtr &var) {
		if (!djGraph.has_value())
			throw std::runtime_error("Can't compute liveness with merge sets when the DJ graph is empty");

		// if (var->definingBlocks.size() != 1) {
		// 	warn() << "Variable " << *var << " has " << var->definingBlocks.size() << " defining blocks, not 1.\n";
		// 	return false;
		// }

		const Node::NSet &merge = merges.at(block);
		const auto &defs = var->definingBlocks;

		// M^r(n) = M(n) ∪ {n}
		Node::NSet m_r(merge.begin(), merge.end());
		m_r.insert(block);

		// for t ∈ uses(a)
		for (const auto &weak_t: var->usingBlocks) {
			auto t = weak_t.lock();
			if (!t)
				throw std::runtime_error("Couldn't lock std::weak_ptr while computing liveness");
			// while t != def(a)
			while (!defs.contains(t)) {
				// if t ∩ M^r (n)
				if (m_r.contains(&(*djGraph)[*t->label]))
					return true;
				auto *t_node = &(*djGraph)[*t->label];
				if (t_node == nullptr) {
					// error() << "t_node (" << *t->label << ") is null in isLiveInUsingMergeSet\n";
					break;
				}
				auto *parent = djGraph->parent(*t_node, *djGraph->startNode);
				if (parent == nullptr) {
					// error() << "parent of " << t_node->label() << " is null in isLiveInUsingMergeSet\n";
					break;
				}
				// t = dom-parent(t);
				t = bbMap.at(StringSet::intern(parent->label()));
			}
		}

		return false;
	}

	bool Function::isLiveOutUsingMergeSet(const Node::NMap &merges, Node *block, const VariablePtr &var) {
		if (!djGraph.has_value())
			throw std::runtime_error("Can't compute liveness with merge sets when the DJ graph is empty");

		// if (var->definingBlocks.size() != 1) {
		// 	warn() << "Variable " << *var << " has " << var->definingBlocks.size() << " defining blocks, not 1.\n";
		// 	return false;
		// }

		const auto &defs = var->definingBlocks;

		// if def(a) = n
		if (defs.contains(bbMap.at(StringSet::intern(block->label())))) {
			// return uses(a)\def(a) = ∅
			// At least, I assume the use of φ in the PDF actually refers to the empty set.
			auto difference = var->usingBlocks;
			for (const auto &weak_block: var->definingBlocks)
				difference.erase(weak_block);
			return !difference.empty();
		}

		// M_s(n) = ∅
		Node::NSet m_s;

		// for w ∈ succ(n)
		for (Node *successor: block->out()) {
			// M_s(n) = M_s(n) ∪ M^r(w)
			// The authors define M^r(n) as {M(n) ∪ {n}}.
			m_s.insert(successor);
			const auto &m_r = merges.at(successor);
			m_s.insert(m_r.begin(), m_r.end());
		}

		// for t ∈ uses(a)
		for (const auto &weak_t: var->usingBlocks) {
			auto t = weak_t.lock();
			if (!t)
				throw std::runtime_error("Couldn't lock std::weak_ptr while computing liveness");
			// while t != def(a)
			while (!defs.contains(t)) {
				// if t ∩ M_s(n)
				if (m_s.contains(&(*djGraph)[*t->label]))
					return true;
				auto *t_node = &(*djGraph)[*t->label];
				if (t_node == nullptr) {
					// error() << "t_node (" << *t->label << ") is null in isLiveOutUsingMergeSet\n";
					break;
				}
				auto *parent = djGraph->parent(*t_node, *djGraph->startNode);
				if (parent == nullptr) {
					// error() << "parent of " << t_node->label() << " is null in isLiveOutUsingMergeSet\n";
					break;
				}
				// t = dom-parent(t);
				t = bbMap.at(StringSet::intern(parent->label()));
			}
		}

		return false;
	}

	void Function::computeLivenessMS() {
		Timer timer("ComputeLivenessMS");

		if (!djGraph.has_value())
			throw std::runtime_error("Can't compute liveness with merge sets when the DJ graph is empty");

		auto mergesets = djGraph->getMergeSets();
		// There must be a better way than this brute-force approach. I'm just not smart enough to find it.
		// This is obviously O(bv), where b is the number of basic blocks and v is the number of variables.
		// I'm guessing that's around 45,000 for vsnprintf. That's absurd.
		for (const auto &[name, var]: variableStore)
			if (!var->hasSpecialRegister())
				for (const auto &block: blocks) {
					if (isLiveInUsingMergeSet(mergesets, &(*djGraph)[*block->label], var)) {
						block->liveIn.insert(var);
						block->allLive.insert(var);
					}
					if (isLiveOutUsingMergeSet(mergesets, &(*djGraph)[*block->label], var)) {
						block->liveOut.insert(var);
						block->allLive.insert(var);
					}
				}
		for (const auto &[name, var]: extraVariables)
			if (!var->hasSpecialRegister())
				for (const auto &block: blocks) {
					if (isLiveInUsingMergeSet(mergesets, &(*djGraph)[*block->label], var)) {
						block->liveIn.insert(var);
						block->allLive.insert(var);
					}
					if (isLiveOutUsingMergeSet(mergesets, &(*djGraph)[*block->label], var)) {
						block->liveOut.insert(var);
						block->allLive.insert(var);
					}
				}
	}

	void Function::computeLivenessTraditional() {
		Timer timer("ComputeLivenessTraditional");
		// https://www.classes.cs.uchicago.edu/archive/2004/spring/22620-1/docs/liveness.pdf, page 9
		std::map<BasicBlock::Label, std::set<VariablePtr>> in;
		std::map<BasicBlock::Label, std::set<VariablePtr>> out;
		std::map<BasicBlock::Label, std::set<VariablePtr>> in_;
		std::map<BasicBlock::Label, std::set<VariablePtr>> out_;
		std::map<BasicBlock::Label, std::vector<BasicBlockPtr>> goes_to;

		bool working = true;

		// Oh no.
		{
			Timer subtimer("GoesTo");
			for (auto &block: blocks) {
				goes_to.try_emplace(block->label);
				for (auto &other: blocks)
					if (Util::contains(other->preds, block->label))
						goes_to[block->label].push_back(other);
			}
		}

		do {
			for (const auto &block: blocks) {
				const auto *n = block->label;
				in_[n]  = in[n];
				out_[n] = out[n];
				in[n] = block->read;
				for (const auto &var: out[n])
					if (!block->written.contains(var))
						in[n].insert(var);
				out[n].clear();
				for (const auto &succ: goes_to.at(n))
					for (const auto &var: in[succ->label])
						out[n].insert(var);
			}

			working = false;
			for (auto &block: blocks) {
				const auto *n = block->label;
				if (!(Util::equal(in_[n], in[n]) && Util::equal(out_[n], out[n]))) {
					working = true;
					break;
				}
			}
		} while (working);

		for (auto &block: blocks) {
			block->liveIn  = std::unordered_set<VariablePtr>(in[block->label].cbegin(),  in[block->label].cend());
			block->liveOut = std::unordered_set<VariablePtr>(out[block->label].cbegin(), out[block->label].cend());
			block->allLive = Util::merge(block->liveIn, block->liveOut);
		}
	}

	void Function::computeLiveness() {
#ifdef TRADITIONAL_LIVENESS
		computeLivenessTraditional();
#elif defined(MERGE_SET_LIVENESS)
		computeLivenessMS();
#else
		computeLivenessUAM();
#endif
	}

	void Function::upAndMark(const BasicBlockPtr &block, const VariablePtr &var) {
		for (const auto &instruction: block->instructions) {
			if (instruction->isPhi())
				continue;
			// if def(v) ∈ B (φ excluded) then return
			if (instruction->written.contains(var) && !var->fromPhi)
				return;
		}

		// if v ∈ LiveIn(B) then return
		if (block->liveIn.contains(var))
			return;

		// LiveIn(B) = LiveIn(B) ∪ {v}
		block->liveIn.insert(var);
		block->allLive.insert(var);

		// if v ∈ PhiDefs(B) then return
		if (block->inPhiDefs(var))
			return;

		// for each P ∈ CFG_preds(B) do
		try {
			for (const Node *node: bbNodeMap.at(block.get())->in()) {
				BasicBlockPtr p = node->get<std::weak_ptr<BasicBlock>>().lock();
				// LiveOut(P) = LiveOut(P) ∪ {v}
				p->liveOut.insert(var);
				p->allLive.insert(var);
				upAndMark(p, var);
			}
		} catch (const std::out_of_range &) {
			std::cerr << "Couldn't find block " << *block->label << ". Known blocks:";
			for (const auto &pair: bbNodeMap)
				std::cerr << ' ' << *pair.first->label;
			std::cerr << '\n';
			debug();
			throw;
		}
	}

	void Function::computeLivenessUAM() {
		Timer timer("ComputeLivenessUAM");
		for (const BasicBlockPtr &block: blocks) {
			block->extractPhi();
			block->extract();
			for (const VariablePtr &var: block->phiUses) {
				block->liveOut.insert(var);
				upAndMark(block, var);
			}
			for (const VariablePtr &var: block->nonPhiRead)
				upAndMark(block, var);
		}

		hackLiveness();
	}

	void Function::hackLiveness() {
		for (const auto &[id, var]: variableStore) {
			const auto &defines = var->definingBlocks;
			const auto &uses = var->usingBlocks;
			if (defines.size() == 1 && uses.size() == 1 && defines.begin()->lock() == uses.begin()->lock())
				for (const BasicBlockPtr &block: blocks) {
					block->liveIn.erase(var);
					block->liveOut.erase(var);
					block->allLive.erase(var);
				}
		}
	}

	void Function::resetLiveness() {
		for (const BasicBlockPtr &block: blocks) {
			block->liveIn.clear();
			block->liveOut.clear();
			block->allLive.clear();
		}
	}

	std::unordered_set<std::shared_ptr<BasicBlock>> Function::getLive(const VariablePtr &var,
	const std::function<std::unordered_set<std::shared_ptr<Variable>> &(const std::shared_ptr<BasicBlock> &)> &getter)
	const {
		Timer timer("GetLive");
		std::unordered_set<std::shared_ptr<BasicBlock>> out;
		const auto &alias_pointers = var->getAliases();
		std::unordered_set<std::shared_ptr<Variable>> aliases;
		for (const auto &[id, subvar]: variableStore)
			if (alias_pointers.contains(subvar.get()))
				aliases.insert(subvar);
		aliases.insert(var);
		for (const auto &alias: aliases)
			for (const auto &block: blocks)
				if (getter(block).contains(alias))
					out.insert(block);
		return out;
	}

	std::unordered_set<std::shared_ptr<BasicBlock>> Function::getLiveIn(const VariablePtr &var) const {
		return getLive(var, [&](const auto &block) -> auto & {
			return block->liveIn;
		});
	}

	std::unordered_set<std::shared_ptr<BasicBlock>> Function::getLiveOut(const VariablePtr &var) const {
		return getLive(var, [&](const auto &block) -> auto & {
			return block->liveOut;
		});
	}


	std::string Function::toString() {
		Timer timer("Function::toString");
		std::stringstream out;

		if (section != nullptr)
			out << ".section " << *section << '\n';
		else
			out << ".section .text\n";

		std::string chopped = Util::unquote(std::string_view(*name).substr(1));

#ifdef USE_UNDERSCORE
		out << ".global _" << chopped << "\n.p2align 4, 0x90\n_" << chopped << ":\n";
#else
		out << ".global " << chopped << "\n.p2align 4, 0x90\n" << chopped << ":\n";
#endif

		for (const InstructionPtr &instruction: linearInstructions) {
#ifdef SPACE_COUNT
			out << std::string(' ', SPACE_COUNT);
#else
			out << '\t';
#endif
			out << instruction->toString();
			const int dbg = instruction->debugIndex;
			if (dbg != -1 && instruction->showDebug()) {
				auto lock = parent.getLock();
				if (parent.locations.contains(dbg)) {
					const long index = parent.locations.at(dbg).index;
					if (index != -1)
						out << " !" << index;
				} else
					warn() << "Couldn't find location for !" << dbg << '\n';
			}
			out << '\n';
		}
		return out.str();
	}

	std::string Function::headerString() const {
		std::stringstream out;
		out << *returnType << " \e[35m" << *name << "\e[94m(\e[39m";
		for (auto begin = arguments->begin(), iter = begin, end = arguments->end(); iter != end; ++iter) {
			if (iter != begin)
				out << "\e[2m,\e[0m ";
			out << *iter->type;
			if (iter->name != nullptr)
				out << " " << *iter->name;
		}
		out << "\e[94m)\e[0m";
		return out.str();
	}

	void Function::debug(std::ostream &stream) {
		debug(
#ifdef DEBUG_BLOCKS
			true,
#else
			false,
#endif
#ifdef DEBUG_LINEAR
			true,
#else
			false,
#endif
#ifdef DEBUG_VARS
			true,
#else
			false,
#endif
#ifdef DEBUG_BLOCK_LIVENESS
			true,
#else
			false,
#endif
#ifdef DEBUG_READ_WRITTEN
			true,
#else
			false,
#endif
#ifdef DEBUG_VAR_LIVENESS
			true,
#else
			false,
#endif
#ifdef DEBUG_RENDER
			true,
#else
			false,
#endif
#ifdef DEBUG_ESTIMATIONS
			true,
#else
			false,
#endif
#ifdef DEBUG_ALIASES
			true,
#else
			false,
#endif
#ifdef DEBUG_STACK
			true,
#else
			false,
#endif
			stream
		);
	}

	void Function::debug(bool doBlocks, bool linear, bool vars, bool blockLiveness, bool readWritten, bool varLiveness,
	                     bool render, bool estimations, bool aliases, bool stack, std::ostream &stream) {
		if (doBlocks || linear || vars)
			stream << headerString() + " \e[94m{\e[39m\n";
		if (doBlocks) {
			for (const BasicBlockPtr &block: blocks) {
#ifdef DEBUG_MINILABELS
				(void) blockLiveness;
				stream << "\e[34m" << *block->label << ":\e[39m\n";
#else
				stream << "    \e[2m; \e[4;1m" << *block->label << "\e[22;2;4m @ " << block->index
				       << ": preds =";
				for (auto begin = block->preds.begin(), iter = begin, end = block->preds.end(); iter != end; ++iter) {
					if (iter != begin)
						stream << ',';
					stream << " %" << **iter;
				}
				stream << '.';
				if (blockLiveness) {
					std::set<std::string> uses;
					for (const InstructionPtr &instruction: block->instructions)
						for (const VariablePtr &var: instruction->written)
							uses.insert(*var->id);
					if (!uses.empty()) {
						stream << "; writes =";
						for (auto begin = uses.begin(), iter = begin, end = uses.end(); iter != end; ++iter) {
							if (iter != begin)
								stream << ',';
							stream << " %" << *iter;
						}
					}

					if (!block->liveIn.empty()) {
						stream << "; live-in =";
						const auto &liveIn = block->liveIn;
						for (auto begin = liveIn.begin(), iter = begin, end = liveIn.end(); iter != end; ++iter) {
							if (iter != begin)
								stream << ',';
							stream << " %" << *(*iter)->id;
						}
					}

					if (!block->liveOut.empty()) {
						stream << "; live-out =";
						const auto &liveOut = block->liveOut;
						for (auto begin = liveOut.begin(), iter = begin, end = liveOut.end(); iter != end; ++iter) {
							if (iter != begin)
								stream << ',';
							stream << " %" << *(*iter)->id;
						}
					}
				}
				stream << "\e[22;24m\n";
#endif
				if (readWritten)
					for (const InstructionPtr &instruction: block->instructions) {
						int read = 0;
						int written = 0;
						std::tie(read, written) = instruction->extract();
						stream << "\e[s    " << instruction->debugExtra() << "\e[u\e[2m" << read << " " << written
						       << "\e[0m\n";
					}
				else
					for (const InstructionPtr &instruction: block->instructions)
						stream << "    " << instruction->debugExtra() << "\n";
				stream << "\n";
			}
		}
		if (linear)
			for (const InstructionPtr &instruction: linearInstructions) {
				int read = 0;
				int written = 0;
				std::tie(read, written) = instruction->extract();
				stream << "\e[s    " << instruction->debugExtra() << "\e[u\e[2m" << read << " " << written << "\e[0m\n";
			}
		if (vars) {
			stream << "    \e[2m; Variables:\e[0m\n";

			struct Compare {
				bool operator()(const Variable::ID &left, const Variable::ID &right) const {
					return strnatcmp(left->c_str(), right->c_str()) == -1;
				}
			};

			std::map<Variable::ID, VariablePtr, Compare> all_vars;
			all_vars.insert(variableStore.cbegin(), variableStore.cend());
			all_vars.insert(extraVariables.cbegin(), extraVariables.cend());

			for (auto &[id, var]: all_vars) {
				if (extraVariables.contains(id))
					stream << "\e[31m[e]\e[39m";
				else
					stream << "   ";
				stream << " \e[2m; \e[1m%" << *id << "/" << *var->id << "/" << *var->originalID << "\e[0;2m  defs ("
				       << var->definitions.size() << " inst) =";
				for (const std::weak_ptr<BasicBlock> &def: var->definingBlocks)
					if (auto locked = def.lock())
						stream << " \e[1;2m" << std::setw(2) << *locked->label << "\e[22m";
					else
						stream << " \e[2m??\e[22m";
				stream << "  \e[2muses =";
				for (const std::weak_ptr<BasicBlock> &use: var->usingBlocks)
					if (auto locked = use.lock())
						stream << " \e[1;2m" << std::setw(2) << *locked->label << "\e[22m";
					else
						stream << " \e[2m??\e[22m";
				const int spill_cost = var->spillCost();
				stream << "\e[2m  cost = \e[1m" << (spill_cost == INT_MAX? "∞" : std::to_string(spill_cost))
				       << "\e[0;2m";
				if (var->definingBlocks.size() > 1)
					stream << " (multiple defs)";
				stream << "  pid = \e[1m" << *var->parentID() << "\e[22;2m";
				const auto aliases = var->getAliases();
				if (!aliases.empty()) {
					stream << "  aliases =\e[1m";
					for (const Variable *alias: aliases)
						stream << " " << *alias->id;
					stream << "\e[22;2m";
				}
				if (!var->registers.empty()) {
					stream << " \e[32;1m";
					for (const int reg: var->registers)
						stream << " %" << x86_64::registerName(reg);
				}
				stream << "\e[0m\n";
				if (varLiveness) {
					stream << "    \e[2m;      \e[32min   =\e[1m";
					for (const BasicBlockPtr &block: blocks) {
						if (block->isLiveIn(var))
							stream << " %" << *block->label;
					}
					stream << "\e[0m\n";
					stream << "    \e[2m;      \e[31mout  =\e[1m";
					for (const BasicBlockPtr &block: blocks) {
						if (block->isLiveOut(var))
							stream << " %" << *block->label;
					}
					stream << "\e[0m\n";
				}
			}
		}
		if (doBlocks || linear || vars)
			stream << "\e[94m}\e[39m\n\n";
		if (aliases) {
			stream << "<Aliases>\n";
			for (auto &[id, var]: variableStore) {
				stream << *id << " = " << *var;
				if (auto vparent = var->getParent().lock())
					stream << "(parent = " << *vparent << ")";
				stream << ":";
				for (Variable *alias: var->getAliases())
					stream << " " << *alias;
				stream << "\n";
			}
			stream << "</Aliases>\n";
		}
		if (render) {
			stream << "Rendering.\n";
			if (estimations)
				for (Node *node: cfg.nodes()) {
					if (node->data.has_value()) {
						BasicBlockPtr bb = node->get<std::weak_ptr<BasicBlock>>().lock();
						if (bb)
							node->rename("\"" + node->label() + ":" + std::to_string(bb->estimatedExecutions) + "\"");
					}
				}
			cfg.renderTo("graph_" + *name + ".png");
			if (dTree.has_value())
				dTree->renderTo("graph_D_" + *name + ".png");
			if (djGraph.has_value())
				djGraph->renderTo("graph_DJ_" + *name + ".png");
		}
		if (stack)
			debugStack(stream);
	}

	void Function::debugStack(std::ostream &stream) const {
		for (const std::pair<const int, StackLocation> &pair: stack)
			stream << pair.first << '[' << pair.second.width << "]:" << *pair.second.variable << ' ';
		stream << '\n';
	}

	bool Function::isNaked() const {
		const auto *header = dynamic_cast<const FunctionHeader *>(astnode->children.front());
		if (header->fnattrs.contains(FnAttr::naked))
			return true;
		if (header->fnattrsIndex == -1)
			return false;
		auto lock = parent.getLock();
		return parent.fnattrs.at(header->fnattrsIndex).contains(FnAttr::naked);
	}

	StackLocation & Function::getSpill(const VariablePtr &variable, bool create, bool *created) {
		if (created != nullptr)
			*created = false;
		for (std::pair<const int, StackLocation> &pair: stack)
			if (pair.second.variable->id == variable->id && pair.second.purpose == StackLocation::Purpose::Spill)
				return pair.second;
		if (create) {
			if (created != nullptr)
				*created = true;
			if (variable->type)
				return addToStack(variable, StackLocation::Purpose::Spill, -1, variable->type->alignment());
			return addToStack(variable, StackLocation::Purpose::Spill);
		}
		throw std::out_of_range("Couldn't find a spill location for " + variable->plainString(x86_64::Width::Eight));
	}

	std::shared_ptr<LocalValue> Function::replaceGetelementptrValue(const std::shared_ptr<GetelementptrValue> &gep,
	                                                                const InstructionPtr &instruction) {
		TypePtr out_type;

		const std::list<int64_t> indices = Getelementptr::getLongIndices(*gep);

		const int64_t offset = Util::updiv(Getelementptr::compute(gep->ptrType, indices, &out_type), 8l);
		if (Util::outOfRange(offset))
			warn() << "Getelementptr offset inexplicably out of range: " << offset << '\n';

		switch (gep->variable->valueType()) {
			case ValueType::Global: {
				VariablePtr new_var = newVariable(out_type);
				OperandPtr operand = OpV(new_var);

				insertBefore<Lea>(instruction, Op4(*dynamic_cast<GlobalValue *>(gep->variable.get())->name, true,
					false), operand);

				if (offset != 0)
					insertBefore<Add>(instruction, Op4(offset), operand, 64);

				return LocalValue::make(new_var);
			}

			case ValueType::Local: {
				VariablePtr new_var(newVariable(out_type));
				OperandPtr operand = Operand::make(64, new_var);
				insertBefore<Mov>(instruction, OpV(dynamic_cast<LocalValue *>(gep->variable.get())->getVariable(*this)),
					operand, 64);
				insertBefore<Add>(instruction, Op4(offset), operand, 64);
				return LocalValue::make(new_var);
			}

			default:;
		}

		if (gep->variable->isIntLike()) {
			VariablePtr new_var(newVariable(out_type));
			OperandPtr operand = Operand::make(64, new_var);
			insertBefore<Mov>(instruction, Op4(gep->variable->longValue() + offset), operand);
			return LocalValue::make(new_var);
		}

		throw std::invalid_argument("Expected a global, local or intlike value in Function::replaceGetelementptrValue");
	}

	VariablePtr Function::makeVariable(const ValuePtr &value, const InstructionPtr &instruction, const TypePtr &hint) {
		VariablePtr new_var;
		InstructionPtr mov_or_lea;

		switch (value->valueType()) {
			case ValueType::Getelementptr:
				return replaceGetelementptrValue(std::dynamic_pointer_cast<GetelementptrValue>(value), instruction)
					->getVariable(*this);
			case ValueType::Local:
				return dynamic_cast<LocalValue *>(value.get())->variable;
			case ValueType::Global: {
				auto *global = dynamic_cast<GlobalValue *>(value.get());
				new_var = newVariable(hint? hint : GlobalTemporaryType::make(global->name));
				// TODO!: maybe lea?
				// comment(instruction, "Perhaps this should be lea instead of mov");
				mov_or_lea = std::make_shared<Lea>(Op4(*global->name, true, false), OpV(new_var));
				break;
			}
			case ValueType::Int:
			case ValueType::Bool:
			case ValueType::Null:
			case ValueType::Undef: {
				new_var = newVariable(hint? hint : IntType::make(64));
				mov_or_lea = std::make_shared<Mov>(Op8(value->longValue()), OpV(new_var));
				break;
			}
			case ValueType::Icmp: {
				auto *icmp = dynamic_cast<IcmpValue *>(value.get());
				new_var = newVariable(hint? hint : IntType::make(1));
				Passes::lowerIcmp(*this, instruction, icmp->makeNode(new_var).get());
				break;
			}
			case ValueType::Logic: {
				auto *logic = dynamic_cast<LogicValue *>(value.get());
				new_var = newVariable(hint? hint : logic->left->type);
				Passes::lowerLogic(*this, instruction, logic->makeNode(new_var).get());
				break;
			}
			case ValueType::Operand: {
				auto *operand_value = dynamic_cast<OperandValue *>(value.get());
				if (operand_value->operand->isRegister()) {
					new_var = operand_value->operand->reg;
				} else {
					new_var = newVariable(hint? hint : IntType::make(64));
					mov_or_lea = std::make_shared<Mov>(operand_value->operand, OpV(new_var));
				}
				break;
			}
			default:
				throw std::runtime_error("Unhandled value in Function::makeVariable: " +
					value_map.at(value->valueType()));
		}

		if (!new_var)
			throw std::runtime_error("new_var is null at the end of Function::makeVariable");

		if (mov_or_lea)
			insertBefore(instruction, mov_or_lea)->setDebug(*instruction, true);

		return new_var;
	}

	void Function::hackVariables() {
		Timer timer("HackVariables");
		std::list<VariablePtr> all_vars;
		for (auto &pair: extraVariables)
			all_vars.push_back(pair.second);
		for (auto &pair: variableStore)
			all_vars.push_back(pair.second);
		for (VariablePtr &var: all_vars) {
			auto var_parent = var->getParent().lock();

			if (var->registers.empty() && var_parent != nullptr)
				var->registers = var_parent->registers;

			if (var->registers.empty()) {
				for (Variable *alias: var->getAliases())
					if (!alias->registers.empty()) {
						var->registers = alias->registers;
						break;
					}
				// As a last resort, if this variable *still* has no register assigned, check all other known variables
				// for a variable with the same id and try to absorb its register assignment.
				if (var->registers.empty()) {
					for (VariablePtr &other: all_vars)
						if (other != var && other->id == var->id && !other->registers.empty()) {
							var->registers = other->registers;
							break;
						}
					if (var->registers.empty())
						warn() << "hackVariables: last resort failed in " << *name << '\n';
				}
			} else
				for (Variable *alias: var->getAliases())
					if (alias->registers.empty())
						alias->registers = var->registers;
		}
	}

	Graph Function::makeDependencyGraph() const {
		Timer timer("Function::makeDependencyGraph");
		Graph dependencies;
		for (const auto &[id, var]: variableStore)
			dependencies.addNode(*var->originalID).data = var.get();
		for (const auto &[id, var]: variableStore) {
			for (Variable *phi_parent: var->phiParents)
				dependencies[*phi_parent->originalID].link(dependencies[*var->originalID], true);
			for (Variable *child: var->phiChildren)
				dependencies[*var->originalID].link(dependencies[*child->originalID], true);
		}
		return dependencies;
	}

	void Function::makeInitialDebugIndex() {
		if (debugIndex == -1)
			return;
		auto lock = parent.getLock();
		initialDebugIndex = parent.newDebugIndex();
		Subprogram &subprogram = parent.subprograms.at(debugIndex);
		Location location(subprogram.line, 1, debugIndex);
		location.file = subprogram.file;
		parent.locations.emplace(initialDebugIndex, location);
	}

	std::shared_ptr<Clobber> Function::clobber(const InstructionPtr &instruction, int reg) {
		auto out = Clobber::make(reg);
		insertBefore(instruction, out)->setDebug(*instruction);
		return out;
	}

	std::shared_ptr<Unclobber>
	Function::unclobber(const InstructionPtr &instruction, const std::shared_ptr<Clobber> &clob) {
		auto out = Unclobber::make(clob->reg);
		clob->unclobber = out;
		insertBefore(instruction, out)->setDebug(*instruction, true);
		return out;
	}

	size_t Function::replaceOperand(const OperandPtr &to_replace, const OperandPtr &replace_with) {
		size_t out = 0;
		for (const InstructionPtr &instruction: linearInstructions)
			if (instruction->replaceOperand(to_replace, replace_with))
				++out;
		return out;
	}

	size_t Function::replaceSimilarOperand(const OperandPtr &to_replace, const OperandPtr &replace_with) {
		size_t out = 0;
		for (const InstructionPtr &instruction: linearInstructions)
			if (instruction->replaceSimilarOperand(to_replace, replace_with))
				++out;
		return out;
	}

	void Function::multiply(const InstructionPtr &anchor, const OperandPtr &operand, int64_t value, bool reindex,
	                        int64_t debug) {
		multiply_impl<Imul>(anchor, operand, value, reindex, debug);
	}

	void Function::multiply(const InstructionPtr &anchor, const OperandPtr &operand, uint64_t value, bool reindex,
	                        int64_t debug) {
		multiply_impl<Mul>(anchor, operand, value, reindex, debug);
	}

	InstructionPtr Function::insertLeaOrMov(const InstructionPtr &anchor, const OperandPtr &source,
	                                        const OperandPtr &destination, bool reindex) {
		InstructionPtr out;

		if (source->isGlobal()) {
			out = insertBefore<Lea, false>(anchor, source, destination);
		} else {
			out = insertBefore<Mov, false>(anchor, source, destination);
		}

		if (reindex)
			reindexInstructions();

		return out;
	}
}
