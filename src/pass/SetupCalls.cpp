#include "compiler/Function.h"
#include "compiler/Getelementptr.h"
#include "compiler/Program.h"
#include "compiler/LLVMInstruction.h"
#include "instruction/Add.h"
#include "instruction/And.h"
#include "instruction/Call.h"
#include "instruction/Clobber.h"
#include "instruction/Invalid.h"
#include "instruction/Jmp.h"
#include "instruction/Lea.h"
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
				if ((ellipsis = call->argumentEllipsis)) {
					if (argument_types) {
						argument_types->reserve(call->constants.size());
						for (const auto &constant: call->constants)
							argument_types->push_back(constant->convert()->type);
					}
				} else if (argument_types)
					*argument_types = call->argumentTypes;
				return;
			} else if (function.parent.functions.contains("@" + *global)) {
				// When the arguments aren't explicit, we check the parent program's map of functions.
				Function &func = *function.parent.functions.at("@" + *global);
				ellipsis = func.isVariadic();
				if (argument_types) {
					argument_types->reserve(func.arguments->size());
					for (FunctionArgument &argument: *func.arguments)
						argument_types->push_back(argument.type);
				}
				return;
			} else if (function.parent.declarations.contains(*global)) {
				// We can also check the map of declarations.
				FunctionHeader *header = function.parent.declarations.at(*global);
				ellipsis = header->arguments->ellipsis;
				if (argument_types) {
					argument_types->reserve(header->arguments->arguments.size());
					for (FunctionArgument &argument: header->arguments->arguments)
						argument_types->push_back(argument.type);
				}
				return;
			} else if (function.parent.aliases.contains(StringSet::intern("@" + *global))) {
				// In rare cases, there may be an alias.
				AliasDef *alias = function.parent.aliases.at(StringSet::intern("@" + *global));
				global = alias->aliasTo->front() == '@'? StringSet::intern(alias->aliasTo->substr(1)) : alias->aliasTo;
			} else
				throw std::runtime_error("Couldn't find signature for function " + *global);
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

			const bool big_return = 64 < call->returnType->width();
			const int arg_offset = big_return? 1 : 0; 

			constexpr int reg_max = 6;
			const int arg_count = argument_types.size();

			constexpr static int arg_regs[] {
				x86_64::rdi,
				x86_64::rsi,
				x86_64::rdx,
				x86_64::rcx,
				x86_64::r8,
				x86_64::r9,
				x86_64::r10, // Not technically an argument register, but needs to be saved by the caller.
				x86_64::r11, // Same here.
			};

			// // First, push the current values of the argument registers to the stack.
			// for (i = 0; i < arg_count + arg_offset && i < reg_max; ++i) {
			// 	VariablePtr arg_variable = function.makePrecoloredVariable(arg_regs[i], block);
			// 	function.insertBefore(instruction, std::make_shared<Push>(Operand8(arg_variable), x86_64::Width::Eight),
			// 		false)->setDebug(*llvm, true);
			// }

			// Clobber caller-saved registers as necessary.
			const int clobber_start = 0;
			std::unordered_map<int, std::shared_ptr<Clobber>> clobbers;
			for (i = 0; i < 8; ++i)
				clobbers.emplace(i, function.clobber(instruction, arg_regs[i]));

			VariablePtr rax = function.makePrecoloredVariable(x86_64::rax, block);
			std::shared_ptr<Clobber> rax_clobber;

			const int return_size = call->returnType->width();

			// If the callee returns a large struct (more than can fit in two registers), we need to allocate space on
			// the stack for the struct and pass a pointer to it in %rdi.
			VariablePtr big_result;
			if (call->result && 128 < return_size) {
				big_result = function.newVariable(call->returnType, block);
				const StackLocation &location = function.addToStack(big_result, StackLocation::Purpose::BigStruct);
				OperandPtr pointer = Operand8(-location.offset, function.rbp);
				OperandPtr rdi = Operand8(function.makePrecoloredVariable(x86_64::rdi, block));
				auto lea = std::make_shared<Lea>(pointer, rdi);
				function.insertBefore(instruction, lea, false)->setDebug(*instruction, true);
			}

			// Move variables into the argument registers.
			for (i = arg_offset; i < reg_max && i < arg_count + arg_offset; ++i) {
				VariablePtr precolored = function.makePrecoloredVariable(arg_regs[i], instruction->parent.lock());
				setupCallValue(function, OperandV(precolored), instruction, call->constants[i - arg_offset]);
			}

			// If the function returns a value, clobber %rax.
			if (call->result)
				rax_clobber = function.clobber(instruction, x86_64::rax);

			// Push variables onto the stack, right to left.
			int bytes_pushed = 0;
			for (i = arg_count + arg_offset - 1; reg_max <= i; --i)
				bytes_pushed += pushCallValue(function, instruction, call->constants[i - arg_offset], bytes_pushed);

			function.maxPushedForCalls = std::max(function.maxPushedForCalls, bytes_pushed);

			// The number of floating point arguments passed to a variadic function has to be stored in %rax.
			// Floating point numbers aren't really supported yet and currently aren't properly passed to the function.
			// (They need to be passed in the %xmm registers.)
			if (ellipsis) {
				int floating = 0;
				for (const auto &constant: call->constants)
					if (constant->type->typeType() == TypeType::Float)
						++floating;
				function.insertBefore(instruction, std::make_shared<Mov>(Operand8(floating), Operand8(rax)), false);
			}

			// Once we're done putting the arguments in the proper place, remove the variables from the call
			// instruction's set of read variables so the register allocator doesn't try to insert any spills/loads.
			llvm->read.clear();

			// At this point, we're ready to insert the call.
			if (global_uptr) {
				function.insertBefore(instruction, std::make_shared<Call>(Operand8(*global_uptr->name, false)))
					->setDebug(*llvm, true);
			} else {
				VariablePtr jump_var = dynamic_cast<LocalValue *>(name_value)->variable;
				auto jump = std::make_shared<Call>(Operand8(jump_var));
				function.insertBefore(instruction, jump, "SetupCalls: jump to function pointer " +
					jump_var->plainString(), false)->setDebug(*llvm, true);
			}

			// Move the stack pointer up past the variables that were pushed onto the stack with pushCallValue.
			if (0 < bytes_pushed) {
				auto add = std::make_shared<Add>(Operand4(bytes_pushed), Operand8(function.rsp), x86_64::Width::Eight);
				function.insertBefore(instruction, add, "SetupCalls: readjust stack pointer", false)
					->setDebug(*llvm)->extract();
			}

			// If the call specified a result variable, move %rax into that variable (unless the result is > 128 bits)
			// and unclobber %rax. Or something.
			if (call->result) {
				if (return_size <= 128) {
					auto result = OperandV(function.getVariable(*call->result));
					// mov %rax, %result
					auto move = std::make_shared<Mov>(OperandX(result->width, rax), result);
					function.insertBefore(instruction, move, "SetupCalls: move result from %rax", false)
						->setDebug(*llvm, false)->setSecret(true, false)->extract();
					function.categories["SetupCalls:MoveFromResult"].insert(move);
				}

				// unclobber %rax
				function.unclobber(instruction, rax_clobber);
			}

			// Unclobber caller-saved registers as necessary.
			for (i = 7; clobber_start <= i; --i)
				function.unclobber(instruction, clobbers.at(i));

			to_remove.push_back(instruction);
			function.reindexInstructions();
		}

		for (InstructionPtr &instruction: to_remove)
			function.remove(instruction);

		function.extractVariables();
	}

	int pushCallValue(Function &function, const InstructionPtr &instruction, const ConstantPtr &constant, int pushed) {
		// Stack parameters seem to be passed on a 64-bit boundary.

		int size = 8;
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
					// mov %src, %dest
					function.insertBefore(instruction, std::make_shared<Mov>(Operand1(source), Operand1(destination),
						x86_64::Width::Low))->setDebug(*instruction, true);
					// and %dest, $1
					function.insertBefore(instruction, std::make_shared<And>(Operand4(1), Operand8(destination),
						x86_64::Width::Eight))->setDebug(*instruction, true);
					return;
				case  8:
					function.insertBefore(instruction, std::make_shared<Mov>(Operand1(source), Operand1(destination),
						x86_64::Width::Low))->setDebug(*instruction, true);
					function.insertBefore(instruction, std::make_shared<And>(Operand4(0xff), Operand8(destination),
						x86_64::Width::Eight))->setDebug(*instruction, true);
					return;
				case 16:
					function.insertBefore(instruction, std::make_shared<Mov>(Operand1(source), Operand1(destination),
						x86_64::Width::Low))->setDebug(*instruction, true);
					function.insertBefore(instruction, std::make_shared<And>(Operand4(0xffff), Operand8(destination),
						x86_64::Width::Eight))->setDebug(*instruction, true);
					return;
				case 32:
					function.insertBefore(instruction, std::make_shared<Mov>(Operand1(source), Operand1(destination),
						x86_64::Width::Low))->setDebug(*instruction, true);
					function.insertBefore(instruction, std::make_shared<And>(Operand4(0xffffffff),
						Operand8(destination), x86_64::Width::Eight))->setDebug(*instruction, true);
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

			if (constant->type->typeType() == TypeType::Struct) {
				// Some notes based on seeing what clang -S emits:
				// - A struct containing a single 64-bit member is passed like a scalar.
				// - A struct containing two 64-bit members is put in the caller's stack frame and a pointer thereto is
				//   passed to the callee.
				throw std::runtime_error("Passing structs on the stack is not yet supported");
			}

			VariablePtr var = signext? function.newVariable(IntType::make(64)) : local->variable;
			insert_exts(local->variable, var);
			function.insertBefore(instruction, std::make_shared<Mov>(Operand8(var), Operand8(pushed, function.rsp)),
				false)->setDebug(*instruction, true);
			return size;
		} else if (value_type == ValueType::Global) {
			// Global variables
			std::shared_ptr<GlobalValue> global = std::dynamic_pointer_cast<GlobalValue>(constant->value);
			VariablePtr new_var = function.newVariable(constant->type);
			auto mov = std::make_shared<Mov>(Operand8(*global->name), OperandV(new_var));
			insert_exts(new_var, new_var);
			function.insertBefore(instruction, mov)->setDebug(*instruction, true);
			function.insertBefore(instruction, std::make_shared<Mov>(Operand8(new_var), Operand8(pushed, function.rsp)),
				false)->setDebug(*instruction, true);
			return size;
		} else if (value_type == ValueType::Int) {
			// Integer-like values
			VariablePtr new_var = function.newVariable(constant->type);
			auto mov = std::make_shared<Mov>(Operand4(constant->value->longValue()), OperandV(new_var));
			function.insertBefore(instruction, mov)->setDebug(*instruction, true);
			insert_exts(new_var, new_var);
			function.insertBefore(instruction, std::make_shared<Mov>(Operand8(new_var), Operand8(pushed, function.rsp)),
				false)->setDebug(*instruction, true);
			return size;
		} else if (value_type == ValueType::Bool) {
			// Booleans
			std::shared_ptr<BoolValue> bval = std::dynamic_pointer_cast<BoolValue>(constant->value);
			VariablePtr new_var = function.newVariable(constant->type);
			auto mov = std::make_shared<Mov>(Operand4(bval->value? 1 : 0), OperandV(new_var), x86_64::Width::Eight);
			function.insertBefore(instruction, mov)->setDebug(*instruction, true);
			insert_exts(new_var, new_var);
			function.insertBefore(instruction, std::make_shared<Mov>(Operand8(new_var), Operand8(pushed, function.rsp)),
				false)->setDebug(*instruction, true);
			return size;
		} else if (value_type == ValueType::Null || value_type == ValueType::Undef) {
			// Null and undef values
			VariablePtr new_var = function.newVariable(constant->type);
			auto mov = std::make_shared<Mov>(Operand4(0), OperandV(new_var));
			function.insertBefore(instruction, mov)->setDebug(*instruction, true);
			function.insertBefore(instruction, std::make_shared<Mov>(Operand8(new_var), Operand8(pushed, function.rsp)),
				false)->setDebug(*instruction, true);
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
					auto add = std::make_shared<Add>(Operand4(offset), OperandV(new_var));
					function.insertBefore(instruction, add)->setDebug(*instruction, true);
				}
				insert_exts(new_var, new_var);
				function.insertBefore(instruction, std::make_shared<Mov>(Operand8(new_var),
					Operand8(pushed, function.rsp)), false)->setDebug(*instruction, true);
				return size;
			}
		} else if (constant->conversionSource) {
			return pushCallValue(function, instruction, constant->conversionSource, pushed);
		} else {
			warn() << "Not sure what to do with " << *constant << " (" << getName(value_type) << ") at " __FILE__ ":"
			       << __LINE__ << '\n';
			function.insertBefore(instruction, InvalidInstruction::make());
			return 0;
		}
	}

	InstructionPtr setupCallValue(Function &function, const OperandPtr &new_operand, const InstructionPtr &instruction,
	                              const ConstantPtr &constant) {
		if (constant->conversionSource) {
			setupCallValue(function, new_operand, instruction, constant->conversionSource);
			return nullptr;
		}

		int signext = constant->parattrs.signext? constant->type->width() : 0;
		int zeroext = constant->parattrs.zeroext? constant->type->width() : 0;
		signext = signext == 64? 0 : signext;
		zeroext = zeroext == 64? 0 : zeroext;

		auto insert_signext = [&] {
			switch (signext) {
				case  0:
				case 64:
					return;
				case  8:
					// movsbq %var, %var
					function.insertBefore(instruction, std::make_shared<Movsx>(Operand1(*new_operand),
						Operand8(*new_operand)), false)->setDebug(*instruction, true);
					return;
				case 16:
					// movswq %var, %var
					function.insertBefore(instruction, std::make_shared<Movsx>(Operand2(*new_operand),
						Operand8(*new_operand)), false)->setDebug(*instruction, true);
					return;
				case 32:
					// movsdq %var, %var
					function.insertBefore(instruction, std::make_shared<Movsx>(Operand4(*new_operand),
						Operand8(*new_operand)), false)->setDebug(*instruction, true);
					return;
				default:
					std::cerr << instruction->debugExtra() << '\n';
					throw std::runtime_error("Invalid sign extension in pushCallValue: " + std::to_string(signext));
			}
		};

		auto insert_zeroext = [&] {
			switch (zeroext) {
				case  0:
				case 64:
					return;
				case  1:
					function.insertBefore(instruction, std::make_shared<And>(Operand4(1), Operand8(*new_operand),
						x86_64::Width::Eight))->setDebug(*instruction, true);
					return;
				case  8:
					function.insertBefore(instruction, std::make_shared<And>(Operand4(0xff), Operand8(*new_operand),
						x86_64::Width::Eight))->setDebug(*instruction, true);
					return;
				case 16:
					function.insertBefore(instruction, std::make_shared<And>(Operand4(0xffff), Operand8(*new_operand),
						x86_64::Width::Eight))->setDebug(*instruction, true);
					return;
				case 32:
					function.insertBefore(instruction, std::make_shared<And>(Operand4(0xffffffff),
						Operand8(*new_operand), x86_64::Width::Eight))->setDebug(*instruction, true);
					return;
				default:
					std::cerr << instruction->debugExtra() << '\n';
					throw std::runtime_error("Invalid zero extension in pushCallValue: " + std::to_string(zeroext));
			}
		};

		auto insert_exts = [&] {
			insert_signext();
			insert_zeroext();
		};

		ValueType value_type = constant->value->valueType();
		if (value_type == ValueType::Local) {
			// If it's a variable, move it into the argument register.
			auto local = std::dynamic_pointer_cast<LocalValue>(constant->value);
			auto mov = std::make_shared<Mov>(OperandV(local->variable), new_operand, x86_64::Width::Eight);
			auto out = function.insertBefore(instruction, mov);
			out->setDebug(*instruction, true);
			insert_exts();
			return out;
		} else if (value_type == ValueType::Int) {
			// If it's an integer constant, set the argument register to it.
			auto mov = std::make_shared<Mov>(Operand4(constant->value->longValue()), new_operand);
			auto out = function.insertBefore(instruction, mov);
			out->setDebug(*instruction, true);
			insert_exts();
			return out;
		} else if (value_type == ValueType::Bool) {
			// If it's a boolean constant, convert it to an integer and do the same.
			auto bval = std::dynamic_pointer_cast<BoolValue>(constant->value);
			auto mov = std::make_shared<Mov>(Operand4(bval->value? 1 : 0), new_operand);
			auto out = function.insertBefore(instruction, mov);
			out->setDebug(*instruction, true);
			insert_exts();
			return out;
		} else if (value_type == ValueType::Null || value_type == ValueType::Undef) {
			// If it's a null or undef constant, just use zero. No need to sign extend.
			auto mov = std::make_shared<Mov>(Operand4(0), new_operand);
			auto out = function.insertBefore(instruction, mov);
			out->setDebug(*instruction, true);
			return out;
		} else if (value_type == ValueType::Getelementptr) {
			// If it's a getelementptr expression, things are a little more difficult.
			auto *gep = dynamic_cast<GetelementptrValue *>(constant->value.get());
			auto *gep_global = dynamic_cast<GlobalValue *>(gep->variable.get());
			// TODO, maybe: reduce duplication
			if (!gep_global) {
				std::shared_ptr<LocalValue> local;
				if (auto *gep_local = dynamic_cast<LocalValue *>(gep->variable.get()))
					local = std::make_shared<LocalValue>(gep_local->getVariable(function));
				else if (auto subgep = std::dynamic_pointer_cast<GetelementptrValue>(gep->variable))
					local = function.replaceGetelementptrValue(subgep, instruction);
				else {
					warn() << "Not sure what to do when the argument of getelementptr isn't a global or getelementptr."
					          "\n    " << std::string(*gep->variable);
					if (auto *llvm = dynamic_cast<LLVMInstruction *>(instruction.get()))
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
					auto mov = std::make_shared<Mov>(OperandV(local->getVariable(function)), new_operand);
					function.insertBefore(instruction, mov)->setDebug(*instruction, true);
					out = mov;
				} else {
					VariablePtr var = local->getVariable(function);
					auto mov = std::make_shared<Mov>(OperandV(var), new_operand);
					function.insertBefore(instruction, mov)->setDebug(*instruction, true);
					auto add = std::make_shared<Add>(Operand4(offset), new_operand);
					function.insertBefore(instruction, add)->setDebug(*instruction, true);
					out = add;
				}
				insert_exts();
				return out;
			} else {
				const std::list<long> indices = Getelementptr::getLongIndices(*gep);

				const long offset = Util::updiv(Getelementptr::compute(gep->ptrType, indices), 8l);
				if (Util::outOfRange(offset))
					warn() << "Getelementptr offset inexplicably out of range: " << offset << '\n';

				auto movsym = std::make_shared<Mov>(Operand8(*gep_global->name), new_operand);
				auto out = function.insertBefore(instruction, movsym);
				out->setDebug(*instruction, true);
				if (offset != 0) {
					auto add = std::make_shared<Add>(Operand4(offset), new_operand);
					function.insertBefore(instruction, add)->setDebug(*instruction, true);
				}
				insert_exts();
				return out;
			}
		} else if (value_type == ValueType::Global) {
			auto *global = dynamic_cast<GlobalValue *>(constant->value.get());
			auto mov = std::make_shared<Mov>(Operand8(*global->name), new_operand);
			function.insertBefore(instruction, mov)->setDebug(*instruction, true);
			insert_exts();
			return mov;
		} else if (value_type == ValueType::Icmp) {
			auto *icmp = dynamic_cast<IcmpValue *>(constant->value.get());
			auto node = IcmpNode::make(new_operand, icmp->cond, icmp->left, icmp->right);
			Passes::lowerIcmp(function, instruction, node.get());
			insert_exts();
			return nullptr; // Whatever.
		} else if (value_type == ValueType::Operand) {
			auto operand_value = std::dynamic_pointer_cast<OperandValue>(constant->value);
			auto mov = std::make_shared<Mov>(operand_value->operand, new_operand);
			auto out = function.insertBefore(instruction, mov);
			out->setDebug(*instruction, true);
			insert_exts();
			return out;
		} else {
			warn() << "Not sure what to do with " << *constant << " (" << getName(value_type) << ") at " __FILE__ ":"
			       << __LINE__ << '\n';
			return function.insertBefore(instruction, InvalidInstruction::make());
		}
	}
}
