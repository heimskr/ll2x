#include <tuple>

#include "compiler/Function.h"
#include "compiler/Getelementptr.h"
#include "compiler/Program.h"
#include "compiler/LLVMInstruction.h"
#include "instruction/Add.h"
#include "instruction/And.h"
#include "instruction/Call.h"
#include "instruction/Invalid.h"
#include "instruction/Jmp.h"
#include "instruction/Mov.h"
#include "instruction/Movsx.h"
#include "instruction/Pop.h"
#include "instruction/Push.h"
#include "instruction/Sub.h"
#include "pass/LowerIcmp.h"
#include "pass/MakeCFG.h"
#include "pass/SetupCalls.h"
#include "util/Timer.h"
#include "util/Util.h"

// TODO: implement floating point support
// TODO: passing structs

namespace LL2X::Passes {
	static void extractInfo(const std::string *global, Function &function, CallNode *call, bool &ellipsis,
	                        std::vector<TypePtr> *argument_types) {
		do {
			// First, we check the call node itself—it sometimes contains the signature of the function.
			if (call->argumentsExplicit) {
				if (argument_types)
					*argument_types = call->argumentTypes;
				ellipsis = call->argumentEllipsis;
				return;
			} else if (function.parent.functions.count("@" + *global) != 0) {
				// When the arguments aren't explicit, we check the parent program's map of functions.
				Function &func = *function.parent.functions.at("@" + *global);
				ellipsis = func.isVariadic();
				if (argument_types) {
					argument_types->reserve(func.arguments->size());
					for (FunctionArgument &argument: *func.arguments)
						argument_types->push_back(argument.type);
				}
				return;
			} else if (function.parent.declarations.count(*global) != 0) {
				// We can also check the map of declarations.
				FunctionHeader *header = function.parent.declarations.at(*global);
				ellipsis = header->arguments->ellipsis;
				if (argument_types) {
					argument_types->reserve(header->arguments->arguments.size());
					for (FunctionArgument &argument: header->arguments->arguments)
						argument_types->push_back(argument.type);
				}
				return;
			} else if (function.parent.aliases.count(StringSet::intern("@" + *global)) != 0) {
				// In rare cases, there may be an alias.
				AliasDef *alias = function.parent.aliases.at(StringSet::intern("@" + *global));
				global = alias->aliasTo->front() == '@'? StringSet::intern(alias->aliasTo->substr(1)) : alias->aliasTo;
			} else throw std::runtime_error("Couldn't find signature for function " + *global);
		} while (true);
	}

	void setupCalls(Function &function) {
		auto lock = function.parent.getLock();
		Timer timer("SetupCalls");
		int i;
		std::list<InstructionPtr> to_remove;

		for (InstructionPtr &instruction: function.linearInstructions) {
			// Look for a call instruction.
			std::shared_ptr<LLVMInstruction> llvm = std::dynamic_pointer_cast<LLVMInstruction>(instruction);
			if (!llvm || llvm->node->nodeType() != NodeType::Call)
				continue;
			CallNode *call = dynamic_cast<CallNode *>(llvm->node);
			BasicBlockPtr block = instruction->parent.lock();

			VariableValue *name_value = dynamic_cast<VariableValue *>(call->name.get());
			GlobalValue *global_name = dynamic_cast<GlobalValue *>(name_value);
			std::unique_ptr<GlobalValue> global_uptr;

			if (global_name) {
				global_uptr = std::make_unique<GlobalValue>(*global_name);
				const auto &name = *global_name->name;
				if (function.parent.uselessFunctions.count(name) != 0) {
					to_remove.push_back(instruction);
					continue;
				}
				if (function.parent.simpleFunctions.count(name) != 0) {
					bool ellipsis;
					const long simple_index = function.parent.simpleFunctions.at(name);
					extractInfo(global_uptr->name, function, call, ellipsis, nullptr);
					// TODO: Instructions inserted here won't be touched by SplitResultMoves. This might be an issue.
					if (!call->result) {
						warn() << "Call to simple function " << name << " has no result.\n";
					} else {
						auto out = setupCallValue(function, call->operand, instruction, call->constants[simple_index]);
						if (out)
							function.comment(out, "SetupCallValue: simple function elision for " + name);
						else
							function.comment(instruction, "SetupCallValue: simple function elision for " + name +
								" somewhere around here");
						to_remove.push_back(instruction);
						continue;
					}
				}
			}

			// Now we need to find out about the function's arguments because we need to know how to call it.
			std::vector<TypePtr> argument_types;
			bool ellipsis;

			if (global_uptr) {
				extractInfo(global_uptr->name, function, call, ellipsis, &argument_types);
			} else {
				for (ConstantPtr &ptr: call->constants)
					argument_types.push_back(ptr->type);
				ellipsis = false;
			}

			constexpr int reg_max = 6;
			const int arg_count = argument_types.size();

			constexpr static int arg_regs[] {
				x86_64::rdi,
				x86_64::rsi,
				x86_64::rdx,
				x86_64::rcx,
				x86_64::r8,
				x86_64::r9
			};

			// First, push the current values of the argument registers to the stack.
			for (i = 0; i < arg_count && i < reg_max; ++i) {
				VariablePtr arg_variable = function.makePrecoloredVariable(arg_regs[i], block);
				function.insertBefore(instruction, std::make_shared<Push>(arg_variable, x86_64::Width::Eight), false)
					->setDebug(*llvm, true);
			}

			VariablePtr rax = function.makePrecoloredVariable(x86_64::rax, block);

			// Next, if the function returns a value, push %rax to the stack.
			if (call->result)
				function.insertBefore(instruction, std::make_shared<Push>(rax, x86_64::Width::Eight), false)
					->setDebug(*llvm, true);

			// Next, if applicable, we account for the situation where the jump is to an argument register. Because it
			// may be overwritten right before the jump, we'd need to copy it to a temporary variable and jump to that.
			// VariablePtr jump_var;
			// if (!global_uptr) {
			// 	jump_var = dynamic_cast<LocalValue *>(name_value)->variable;
			// 	if (jump_var->isLess(arg_count)) {
			// 		VariablePtr new_var = function.newVariable(jump_var->type);
			// 		auto move = std::make_shared<MoveInstruction>(jump_var, new_var);
			// 		function.insertBefore(instruction, move, "jump_var -> new_var")->setDebug(*llvm)->extract();
			// 		jump_var = new_var;
			// 	}
			// }

			// Next, move variables into the argument registers.
			for (i = 0; i < reg_max && i < arg_count; ++i) {
				VariablePtr precolored = function.makePrecoloredVariable(arg_regs[i], instruction->parent.lock());
				setupCallValue(function, precolored, instruction, call->constants[i]);
			}

			// Push variables onto the stack, right to left.
			int bytes_pushed = 0;
			if (ellipsis)
				for (i = call->constants.size() - 1; 0 <= i; --i)
					bytes_pushed += pushCallValue(function, instruction, call->constants[i]);
			else
				for (i = arg_count - 1; reg_max <= i; --i)
					bytes_pushed += pushCallValue(function, instruction, call->constants[i]);

			// VariablePtr m2;

			// if (function.isVariadic()) {
			// 	m2 = function.mx(2, instruction->parent.lock());
			// 	function.insertBefore(instruction, std::make_shared<StackPushInstruction>(m2))
			// 		->setDebug(*llvm)->extract();
			// }

			// Once we're done putting the arguments in the proper place, remove the variables from the call
			// instruction's set of read variables so the register allocator doesn't try to insert any spills/loads.
			llvm->read.clear();

			// At this point, we're ready to insert the jump.
			if (global_uptr) {
				function.insertBefore(instruction, std::make_shared<Call>(Operand8(global_uptr->name, false)))
					->setDebug(*llvm, true);
			} else {
				VariablePtr jump_var = dynamic_cast<LocalValue *>(name_value)->variable;
				auto jump = std::make_shared<Call>(Operand8(jump_var), true);
				function.insertBefore(instruction, jump, "SetupCalls: jump to function pointer " +
					jump_var->plainString(), false)->setDebug(*llvm, true);
			}

			// Move the stack pointer up past the variables that were pushed onto the stack with pushCallValue.
			if (0 < bytes_pushed) {
				VariablePtr rsp = function.stackPointer(block);
				auto add = std::make_shared<Add>(rsp, Operand4(bytes_pushed));
				function.insertBefore(instruction, add, "SetupCalls: readjust stack pointer", false)
					->setDebug(*llvm)->extract();
			}

			// if (function.isVariadic())
			// 	function.insertBefore(instruction, std::make_shared<StackPopInstruction>(m2), false);

			// Pop %rax if necessary.
			if (call->result)
				function.insertBefore(instruction, std::make_shared<Pop>(rax, x86_64::Width::Eight), false)
					->setDebug(*llvm, true);

			// Pop the argument registers from the stack.
			for (i = std::min(reg_max - 1, arg_count - 1); 0 <= i; --i) {
				VariablePtr arg_variable = function.makePrecoloredVariable(arg_regs[i], block);
				function.insertBefore(instruction, std::make_shared<Pop>(arg_variable, x86_64::Width::Eight), false)
					->setDebug(*llvm, true);
			}

			// If the call specified a result variable, move %rax into that variable.
			if (call->result) {
				auto move = std::make_shared<Mov>(rax, function.getVariable(*call->result));
				function.insertBefore(instruction, move, "SetupCalls: move result from %rax", false)
					->setDebug(*llvm, true);
				function.categories["SetupCalls:MoveFromResult"].insert(move);
			}

			to_remove.push_back(instruction);
			function.reindexInstructions();
		}

		for (InstructionPtr &instruction: to_remove)
			function.remove(instruction);

		function.extractVariables();
	}

	int pushCallValue(Function &function, const InstructionPtr &instruction, const ConstantPtr &constant) {
		// Stack parameters seem to be passed on a 64-bit boundary.

		constexpr int size = 8;
		ValueType value_type = constant->value->valueType();
		int signext = constant->parattrs.signext? constant->type->width() : 0;
		int zeroext = constant->parattrs.zeroext? constant->type->width() : 0;
		signext = signext == 64? 0 : signext;
		zeroext = zeroext == 64? 0 : zeroext;

		auto insert_signext = [&](const VariablePtr &source, const VariablePtr &destination) -> void {
			switch (signext) {
				case  0:
				case 64:
					return;
				case  1:
					// mov 0, %dest
					function.insertBefore(instruction, std::make_shared<Mov>(Operand4(0), Operand8(destination)),
						false)->setDebug(*instruction, true);
					// and %src, 1
					function.insertBefore(instruction, std::make_shared<And>(Operand8(source), Operand4(1)), false)
						->setDebug(*instruction, true);
					// sub %dest, %src
					function.insertBefore(instruction, std::make_shared<Sub>(Operand8(destination), Operand8(source)),
						false)->setDebug(*instruction, true);
					return;
				case  8:
					// movsbq %src, %dest
					function.insertBefore(instruction, std::make_shared<Movsx>(Operand1(source), Operand8(destination)),
						false)->setDebug(*instruction, true);
					return;
				case 16:
					// movswq %src, %dest
					function.insertBefore(instruction, std::make_shared<Movsx>(Operand2(source), Operand8(destination)),
						false)->setDebug(*instruction, true);
					return;
				case 32:
					// movsdq %src, %dest
					function.insertBefore(instruction, std::make_shared<Movsx>(Operand4(source), Operand8(destination)),
						false)->setDebug(*instruction, true);
					return;
				default:
					std::cerr << instruction->debugExtra() << '\n';
					throw std::runtime_error("Invalid sign extension in pushCallValue: " + std::to_string(signext));
			}
		};

		auto insert_zeroext = [&](const VariablePtr &source, const VariablePtr &destination) -> void {
			switch (zeroext) {
				case  0:
				case 64:
					return;
				case  1:
					function.insertBefore(instruction, std::make_shared<Mov>(Operand1(source), Operand1(destination),
						x86_64::Width::Low))->setDebug(*instruction, true);
					function.insertBefore(instruction, std::make_shared<And>(Operand8(destination), Operand4(1),
						x86_64::Width::Eight))->setDebug(*instruction, true);
					return;
				case  8:
					function.insertBefore(instruction, std::make_shared<Mov>(Operand1(source), Operand1(destination),
						x86_64::Width::Low))->setDebug(*instruction, true);
					function.insertBefore(instruction, std::make_shared<And>(Operand8(destination), Operand4(0xff),
						x86_64::Width::Eight))->setDebug(*instruction, true);
					return;
				case 16:
					function.insertBefore(instruction, std::make_shared<Mov>(Operand1(source), Operand1(destination),
						x86_64::Width::Low))->setDebug(*instruction, true);
					function.insertBefore(instruction, std::make_shared<And>(Operand8(destination), Operand4(0xffff),
						x86_64::Width::Eight))->setDebug(*instruction, true);
					return;
				case 32:
					function.insertBefore(instruction, std::make_shared<Mov>(Operand1(source), Operand1(destination),
						x86_64::Width::Low))->setDebug(*instruction, true);
					function.insertBefore(instruction, std::make_shared<And>(Operand8(destination),
						Operand4(0xffffffff), x86_64::Width::Eight))->setDebug(*instruction, true);
					return;
				default:
					std::cerr << instruction->debugExtra() << '\n';
					throw std::runtime_error("Invalid zero extension in pushCallValue: " + std::to_string(zeroext));
			}
		};

		auto insert_exts = [&](const VariablePtr &source, const VariablePtr &destination) -> void {
			insert_signext(source, destination);
			insert_zeroext(source, destination);
		};

		if (value_type == ValueType::Local) {
			// Local variables
			std::shared_ptr<LocalValue> local = std::dynamic_pointer_cast<LocalValue>(constant->value);
			VariablePtr var = signext? function.newVariable(IntType::make(64)) : local->variable;
			insert_exts(local->variable, var);
			function.insertBefore(instruction, std::make_shared<Push>(var, x86_64::Width::Eight))
				->setDebug(*instruction, true);
			return size;
		} else if (value_type == ValueType::Global) {
			// Global variables
			std::shared_ptr<GlobalValue> global = std::dynamic_pointer_cast<GlobalValue>(constant->value);
			VariablePtr new_var = function.newVariable(constant->type);
			auto mov  = std::make_shared<Mov>(Operand8(global->name), OperandV(new_var));
			auto push = std::make_shared<Push>(OperandV(new_var));
			insert_exts(new_var, new_var);
			function.insertBefore(instruction, mov)->setDebug(*instruction, true);
			function.insertBefore(instruction, push)->setDebug(*instruction, true);
			return size;
		} else if (value_type == ValueType::Int) {
			// Integer-like values
			VariablePtr new_var = function.newVariable(constant->type);
			OperandPtr mov_source = Operand8(constant->value->intValue(false));
			mov_source->originalConstant = constant->value->longValue();
			auto mov  = std::make_shared<Mov>(mov_source, OperandV(new_var));
			auto push = std::make_shared<Push>(new_var, x86_64::Width::Eight);
			function.insertBefore(instruction, mov)->setDebug(*instruction, true);
			insert_exts(new_var, new_var);
			function.insertBefore(instruction, push)->setDebug(*instruction, true);
			return size;
		} else if (value_type == ValueType::Bool) {
			// Booleans
			std::shared_ptr<BoolValue> bval = std::dynamic_pointer_cast<BoolValue>(constant->value);
			VariablePtr new_var = function.newVariable(constant->type);
			auto mov  = std::make_shared<Mov>(Operand4(bval->value? 1 : 0), OperandV(new_var), x86_64::Width::Eight);
			auto push = std::make_shared<Push>(OperandV(new_var), x86_64::Width::Eight);
			function.insertBefore(instruction, mov)->setDebug(*instruction, true);
			insert_exts(new_var, new_var);
			function.insertBefore(instruction, push)->setDebug(*instruction, true);
			return size;
		} else if (value_type == ValueType::Null || value_type == ValueType::Undef) {
			// Null and undef values
			VariablePtr new_var = function.newVariable(constant->type);
			auto mov  = std::make_shared<Mov>(Operand4(0), OperandV(new_var));
			auto push = std::make_shared<Push>(Operand4(0), OperandV(new_var), x86_64::Width::Eight);
			function.insertBefore(instruction, mov)->setDebug(*instruction, true);
			function.insertBefore(instruction, push)->setDebug(*instruction, true);
			return size;
		} else if (value_type == ValueType::Getelementptr) {
			// Getelementptr expressions
			std::shared_ptr<GetelementptrValue> gep = std::dynamic_pointer_cast<GetelementptrValue>(constant->value);
			std::shared_ptr<GlobalValue> gep_global = std::dynamic_pointer_cast<GlobalValue>(gep->variable);
			if (!gep_global) {
				warn() << "Not sure what to do when the argument of getelementptr isn't a global.\n";
				function.insertBefore(instruction, InvalidInstruction::make());
				return 0;
			} else {
				const std::list<long> indices = Getelementptr::getLongIndices(*gep);
				const long offset = Util::updiv(Getelementptr::compute(gep->ptrType, indices), 8l);
				if (Util::outOfRange(offset))
					warn() << "Getelementptr offset inexplicably out of range: " << offset << '\n';
				VariablePtr new_var = function.newVariable(constant->type);
				auto movsym = std::make_shared<Mov>(Operand8(*gep_global->name), OperandV(new_var));
				function.insertBefore(instruction, movsym)->setDebug(*instruction, true);
				if (offset != 0) {
					auto add = std::make_shared<Add>(OperandV(new_var), Operand4(offset));
					function.insertBefore(instruction, add)->setDebug(*instruction, true);
				}
				insert_exts(new_var, new_var);
				auto push = std::make_shared<Push>(OperandV(new_var), x86_64::Width::Eight);
				function.insertBefore(instruction, push)->setDebug(*instruction, true);
				return size;
			}
		} else if (constant->conversionSource) {
			return pushCallValue(function, instruction, constant->conversionSource);
		} else {
			warn() << "Not sure what to do with " << *constant << " (" << getName(value_type) << ") at " __FILE__ ":"
			       << __LINE__ << '\n';
			function.insertBefore(instruction, InvalidInstruction::make());
			return 0;
		}
	}

	InstructionPtr
	setupCallValue(Function &function, VariablePtr new_var, InstructionPtr instruction, ConstantPtr constant) {
		if (constant->conversionSource) {
			setupCallValue(function, new_var, instruction, constant->conversionSource);
			return nullptr;
		}

		int signext = constant->parattrs.signext? constant->type->width() : 0;
		int zeroext = constant->parattrs.zeroext? constant->type->width() : 0;
		signext = signext == 64? 0 : signext;
		zeroext = zeroext == 64? 0 : zeroext;

		auto insert_signext = [&](const VariablePtr &source, const VariablePtr &destination) -> void {
			switch (signext) {
				case  0:
				case 64:
					return;
				case  1:
					// mov 0, %dest
					function.insertBefore(instruction, std::make_shared<Mov>(Operand4(0), Operand8(destination)),
						false)->setDebug(*instruction, true);
					// and %src, 1
					function.insertBefore(instruction, std::make_shared<And>(Operand8(source), Operand4(1)), false)
						->setDebug(*instruction, true);
					// sub %dest, %src
					function.insertBefore(instruction, std::make_shared<Sub>(Operand8(destination), Operand8(source)),
						false)->setDebug(*instruction, true);
					return;
				case  8:
					// movsbq %src, %dest
					function.insertBefore(instruction, std::make_shared<Movsx>(Operand1(source), Operand8(destination)),
						false)->setDebug(*instruction, true);
					return;
				case 16:
					// movswq %src, %dest
					function.insertBefore(instruction, std::make_shared<Movsx>(Operand2(source), Operand8(destination)),
						false)->setDebug(*instruction, true);
					return;
				case 32:
					// movsdq %src, %dest
					function.insertBefore(instruction, std::make_shared<Movsx>(Operand4(source), Operand8(destination)),
						false)->setDebug(*instruction, true);
					return;
				default:
					std::cerr << instruction->debugExtra() << '\n';
					throw std::runtime_error("Invalid sign extension in pushCallValue: " + std::to_string(signext));
			}
		};

		auto insert_zeroext = [&](const VariablePtr &source, const VariablePtr &destination) -> void {
			switch (zeroext) {
				case  0:
				case 64:
					return;
				case  1:
					function.insertBefore(instruction, std::make_shared<Mov>(Operand1(source), Operand1(destination),
						x86_64::Width::Low))->setDebug(*instruction, true);
					function.insertBefore(instruction, std::make_shared<And>(Operand8(destination), Operand4(1),
						x86_64::Width::Eight))->setDebug(*instruction, true);
					return;
				case  8:
					function.insertBefore(instruction, std::make_shared<Mov>(Operand1(source), Operand1(destination),
						x86_64::Width::Low))->setDebug(*instruction, true);
					function.insertBefore(instruction, std::make_shared<And>(Operand8(destination), Operand4(0xff),
						x86_64::Width::Eight))->setDebug(*instruction, true);
					return;
				case 16:
					function.insertBefore(instruction, std::make_shared<Mov>(Operand1(source), Operand1(destination),
						x86_64::Width::Low))->setDebug(*instruction, true);
					function.insertBefore(instruction, std::make_shared<And>(Operand8(destination), Operand4(0xffff),
						x86_64::Width::Eight))->setDebug(*instruction, true);
					return;
				case 32:
					function.insertBefore(instruction, std::make_shared<Mov>(Operand1(source), Operand1(destination),
						x86_64::Width::Low))->setDebug(*instruction, true);
					function.insertBefore(instruction, std::make_shared<And>(Operand8(destination),
						Operand4(0xffffffff), x86_64::Width::Eight))->setDebug(*instruction, true);
					return;
				default:
					std::cerr << instruction->debugExtra() << '\n';
					throw std::runtime_error("Invalid zero extension in pushCallValue: " + std::to_string(zeroext));
			}
		};

		auto insert_exts = [&](const VariablePtr &source, const VariablePtr &destination) -> void {
			insert_signext(source, destination);
			insert_zeroext(source, destination);
		};

		ValueType value_type = constant->value->valueType();
		if (value_type == ValueType::Local) {
			// If it's a variable, move it into the argument register.
			std::shared_ptr<LocalValue> local = std::dynamic_pointer_cast<LocalValue>(constant->value);
			auto move = std::make_shared<MoveInstruction>(local->variable, new_var);
			auto out =function.insertBefore(instruction, move);
			out->setDebug(*instruction, true);
			if (signext)
				function.insertBefore(instruction, make_signext());
			return out;
		} else if (value_type == ValueType::Int) {
			// If it's an integer constant, set the argument register to it.
			auto set = std::make_shared<SetInstruction>(new_var, constant->value->intValue(false));
			set->setOriginalValue(constant->value);
			auto out = function.insertBefore(instruction, set);
			out->setDebug(*instruction, true);
			if (signext)
				function.insertBefore(instruction, make_signext());
			return out;
		} else if (value_type == ValueType::Bool) {
			// If it's a boolean constant, convert it to an integer and do the same.
			std::shared_ptr<BoolValue> bval = std::dynamic_pointer_cast<BoolValue>(constant->value);
			auto set = std::make_shared<SetInstruction>(new_var, bval->value? 1 : 0);
			auto out = function.insertBefore(instruction, set);
			out->setDebug(*instruction, true);
			if (signext)
				function.insertBefore(instruction, make_signext());
			return out;
		} else if (value_type == ValueType::Null || value_type == ValueType::Undef) {
			// If it's a null or undef constant, just use zero. No need to sign extend.
			auto set = std::make_shared<SetInstruction>(new_var, 0);
			auto out = function.insertBefore(instruction, set);
			out->setDebug(*instruction, true);
			return out;
		} else if (value_type == ValueType::Getelementptr) {
			// If it's a getelementptr expression, things are a little more difficult.
			GetelementptrValue *gep = dynamic_cast<GetelementptrValue *>(constant->value.get());
			GlobalValue *gep_global = dynamic_cast<GlobalValue *>(gep->variable.get());
			// TODO, maybe: reduce duplication
			if (!gep_global) {
				std::shared_ptr<LocalValue> local;
				if (LocalValue *gep_local = dynamic_cast<LocalValue *>(gep->variable.get()))
					local = std::make_shared<LocalValue>(gep_local->getVariable(function));
				else if (auto subgep = std::dynamic_pointer_cast<GetelementptrValue>(gep->variable))
					local = function.replaceGetelementptrValue(subgep, instruction);
				else {
					warn() << "Not sure what to do when the argument of getelementptr isn't a global or getelementptr."
					       << "\n    " << std::string(*gep->variable);
					if (LLVMInstruction *llvm = dynamic_cast<LLVMInstruction *>(instruction.get()))
						std::cerr << " (" << llvm->node->location << ")";
					std::cerr << "\n";
					return function.insertBefore(instruction, InvalidInstruction::make());
				}

				const std::list<long> indices = Getelementptr::getLongIndices(*gep);

				const long offset = Util::updiv(Getelementptr::compute(gep->ptrType, indices), 8l);
				if (Util::outOfRange(offset))
					warn() << "Getelementptr offset inexplicably out of range: " << offset << '\n';

				InstructionPtr out;
				if (offset == 0) {
					auto move = std::make_shared<MoveInstruction>(local->getVariable(function), new_var);
					function.insertBefore(instruction, move)->setDebug(*instruction, true);
					out = move;
				} else {
					auto addi = std::make_shared<AddIInstruction>(local->getVariable(function), int(offset), new_var);
					function.insertBefore(instruction, addi)->setDebug(*instruction, true);
					out = addi;
				}
				if (signext)
					function.insertBefore(instruction, make_signext());
				return out;
			} else {
				const std::list<long> indices = Getelementptr::getLongIndices(*gep);

				const long offset = Util::updiv(Getelementptr::compute(gep->ptrType, indices), 8l);
				if (Util::outOfRange(offset))
					warn() << "Getelementptr offset inexplicably out of range: " << offset << '\n';

				auto setsym = std::make_shared<SetInstruction>(new_var, gep_global->name);
				auto out = function.insertBefore(instruction, setsym);
				out->setDebug(*instruction, true);
				if (offset != 0)
					function.insertAfter(setsym, std::make_shared<AddIInstruction>(new_var, int(offset), new_var))
						->setDebug(*instruction, true);
				if (signext)
					function.insertBefore(instruction, make_signext());
				return out;
			}
		} else if (value_type == ValueType::Global) {
			auto *global = dynamic_cast<GlobalValue *>(constant->value.get());
			auto out = function.insertBefore(instruction, std::make_shared<SetInstruction>(new_var, global->name));
			out->setDebug(*instruction, true);
			if (signext)
				function.insertBefore(instruction, make_signext());
			return out;
		} else if (value_type == ValueType::Icmp) {
			auto *icmp = dynamic_cast<IcmpValue *>(constant->value.get());
			auto node = IcmpNode::make(new_var, icmp->cond, icmp->left, icmp->right);
			Passes::lowerIcmp(function, instruction, node.get());
			if (signext)
				function.insertBefore(instruction, make_signext());
			return nullptr; // Whatever.
		} else {
			warn() << "Not sure what to do with " << *constant << " (" << getName(value_type) << ") at " __FILE__ ":"
			       << __LINE__ << '\n';
			return function.insertBefore(instruction, InvalidInstruction::make());
		}
	}
}
