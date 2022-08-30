#include "compiler/Function.h"
#include "compiler/Getelementptr.h"
#include "compiler/LLVMInstruction.h"
#include "compiler/Program.h"
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
					if (argument_types != nullptr) {
						argument_types->reserve(call->constants.size());
						for (const auto &constant: call->constants)
							argument_types->push_back(constant->convert()->type);
					}
				} else if (argument_types != nullptr)
					*argument_types = call->argumentTypes;
				return;
			}

			// When the arguments aren't explicit, we check the parent program's map of functions.
			if (function.parent.functions.contains("@" + *global)) {
				Function &func = *function.parent.functions.at("@" + *global);
				ellipsis = func.isVariadic();
				if (argument_types != nullptr) {
					argument_types->reserve(func.arguments->size());
					for (FunctionArgument &argument: *func.arguments)
						argument_types->push_back(argument.type);
				}
				return;
			}

			// We can also check the map of declarations.
			if (function.parent.declarations.contains(*global)) {
				FunctionHeader *header = function.parent.declarations.at(*global);
				ellipsis = header->arguments->ellipsis;
				if (argument_types != nullptr) {
					argument_types->reserve(header->arguments->arguments.size());
					for (FunctionArgument &argument: header->arguments->arguments)
						argument_types->push_back(argument.type);
				}
				return;
			}

			// In rare cases, there may be an alias.
			if (function.parent.aliases.contains(StringSet::intern("@" + *global))) {
				AliasDef *alias = function.parent.aliases.at(StringSet::intern("@" + *global));
				global = alias->aliasTo->front() == '@'? StringSet::intern(alias->aliasTo->substr(1)) : alias->aliasTo;
			} else
				throw std::runtime_error("Couldn't find signature for function " + *global);
		} while (true);
	}

	void setupCalls(Function &function) {
		auto lock = function.parent.getLock();
		Timer timer("SetupCalls");
		ssize_t i = 0;
		std::list<InstructionPtr> to_remove;

		for (const InstructionPtr &instruction: function.linearInstructions) {
			// Look for a call instruction.
			auto llvm = std::dynamic_pointer_cast<LLVMInstruction>(instruction);
			if (!llvm || llvm->node->nodeType() != NodeType::Call)
				continue;
			auto *call = dynamic_cast<CallNode *>(llvm->node);
			BasicBlockPtr block = instruction->parent.lock();

			auto *global_name = dynamic_cast<GlobalValue *>(call->name.get());
			std::unique_ptr<GlobalValue> global_uptr;

			const std::string prefix = "SetupCalls(" + std::string(call->location) + "): ";

			if (global_name != nullptr) {
				global_uptr = std::make_unique<GlobalValue>(*global_name);
				const auto &name = *global_name->name;
				if (function.parent.uselessFunctions.contains(name)) {
					to_remove.push_back(instruction);
					continue;
				}
				if (function.parent.simpleFunctions.contains(name)) {
					bool ellipsis = false;
					const int64_t simple_index = function.parent.simpleFunctions.at(name);
					extractInfo(global_uptr->name, function, call, ellipsis, nullptr);
					// TODO: Instructions inserted here won't be touched by SplitResultMoves. This might be an issue.
					if (call->result == nullptr) {
						warn() << "Call to simple function " << name << " has no result.\n";
					} else {
						auto out = setupCallValue(function, call->operand, instruction, call->constants[simple_index],
							{});
						if (out)
							function.comment(out, prefix + "simple function elision for " + name);
						else
							function.comment(instruction, prefix + "simple function elision for " + name +
								" somewhere around here");
						to_remove.push_back(instruction);
						continue;
					}
				}
			}

			// Now we need to find out about the function's arguments because we need to know how to call it.
			std::vector<TypePtr> argument_types;
			bool ellipsis = false;

			if (global_uptr)
				extractInfo(global_uptr->name, function, call, ellipsis, &argument_types);
			else
				for (ConstantPtr &ptr: call->constants)
					argument_types.push_back(ptr->type);

			const auto return_size = call->returnType->width();
			const bool huge_return = 128 < return_size;
			const int  arg_offset  = huge_return? 1 : 0;

			constexpr int reg_max = 6;
			const ssize_t arg_count = static_cast<ssize_t>(argument_types.size());

			constexpr static std::array<int, 9> arg_regs {
				x86_64::rdi,
				x86_64::rsi,
				x86_64::rdx,
				x86_64::rcx,
				x86_64::r8,
				x86_64::r9,
				x86_64::r10, // Not technically an argument register, but needs to be saved by the caller.
				x86_64::r11, // Same here.
				x86_64::rax, // Same here.
			};

			constexpr int arg_reg_count = sizeof(arg_regs) / sizeof(arg_regs[0]);

			// Clobber caller-saved registers as necessary.
			const int clobber_start = 0;
			std::unordered_map<size_t, std::shared_ptr<Clobber>> clobbers;
			ClobberMap clobbers_by_reg;
			for (i = 0; i < arg_reg_count; ++i) {
				auto clobber = function.clobber(instruction, arg_regs[i]);
				clobbers.emplace(i, clobber);
				clobbers_by_reg.emplace(arg_regs[i], clobber);
			}

			VariablePtr rax = function.makePrecoloredVariable(x86_64::rax, block);

			// If the callee returns a large struct (more than can fit in two registers), we need to allocate space on
			// the stack for the struct and pass a pointer to it in %rdi.
			VariablePtr big_result;
			if (call->result != nullptr && huge_return) {
				big_result = function.newVariable(call->returnType, block);
				const StackLocation &location = function.addToStack(big_result, StackLocation::Purpose::BigStruct);
				OperandPtr pointer = Op8(-location.offset, function.pcRbp);
				OperandPtr rdi = Op8(function.makePrecoloredVariable(x86_64::rdi, block));
				function.insertBefore<Lea, false>(instruction, pointer, rdi);
			}

			// Move variables into the argument registers.
			for (i = arg_offset; i < reg_max && i < arg_count + arg_offset; ++i) {
				VariablePtr precolored = function.makePrecoloredVariable(arg_regs[i], instruction->parent.lock());
				ConstantPtr constant = call->constants[i - arg_offset];
				function.comment(instruction, prefix + "move argument " + constant->convert()->value->toString());
				setupCallValue(function, OpV(precolored), instruction, constant, clobbers_by_reg);
			}

			// Push variables onto the stack, right to left.
			int bytes_pushed = 0;
			for (i = arg_count + arg_offset - 1; reg_max <= i; --i) {
				// info() << "arg_offset[" << arg_offset << "], i[" << i << "]\n";
				function.comment(instruction, prefix + "push " + call->constants.at(i - arg_offset)->toString());
				bytes_pushed += pushCallValue(function, instruction, call->constants.at(i - arg_offset), bytes_pushed,
				                              clobbers_by_reg);
			}

			function.maxPushedForCalls = std::max(function.maxPushedForCalls, bytes_pushed);

			// The number of floating point arguments passed to a variadic function has to be stored in %rax.
			// Floating point numbers aren't really supported yet and currently aren't properly passed to the function.
			// (They need to be passed in the %xmm registers.)
			if (ellipsis) {
				int floating = 0;
				for (const auto &constant: call->constants)
					if (constant->type->typeType() == TypeType::Float)
						++floating;
				function.insertBefore<Mov, false>(instruction, Op8(floating), Op8(rax));
			}

			// Once we're done putting the arguments in the proper place, remove the variables from the call
			// instruction's set of read variables so the register allocator doesn't try to insert any spills/loads.
			llvm->read.clear();

			// At this point, we're ready to insert the call.
			if (global_uptr) {
				function.insertBefore<Call>(llvm, Op8(*global_uptr->name + (call->usePLT? "@PLT" : ""), false));
			} else if (call->name->isLocal()) {
				auto jump_var = std::dynamic_pointer_cast<LocalValue>(call->name)->variable;
				function.comment(llvm, prefix + "jump to function pointer " + jump_var->plainString());
				function.insertBefore<Call, false>(llvm, Op8(jump_var));
			} else if (call->name->isOperand()) {
				auto operand = std::dynamic_pointer_cast<OperandValue>(call->name)->operand;
				function.comment(llvm, prefix + "jump to function operand " + operand->toString());
				function.insertBefore<Call, false>(llvm, operand);
			} else
				throw std::runtime_error("Unsupported call destination: " + std::string(*call->name));

			// Move the stack pointer up past the variables that were pushed onto the stack with pushCallValue.
			if (0 < bytes_pushed) {
				// function.comment(llvm, prefix + "readjust stack pointer");
				// function.insertBefore<Add, false>(instruction, Op4(bytes_pushed), Op8(function.pcRsp), 64);
			}

			// If the call specified a result variable, move %rax into that variable (unless the result is > 128 bits)
			// and unclobber %rax. Or something.
			if (call->result != nullptr) {
				if (return_size == 128) {
					auto result = OpV(function.getVariable(*call->result));
					VariablePtr pack = function.makePrecoloredVariable(x86_64::rax, instruction->parent.lock());
					pack->registers.insert(x86_64::rdx);
					pack->type = IntType::make(128);
					// mov %pack, %result
					auto move = std::make_shared<Mov>(OpV(pack), result);
					function.comment(llvm, prefix + "move 128-bit result from %rax and %rdx");
					function.insertBefore(llvm, move, false)->setDebug(*llvm, false)->setSecret(true, false)->extract();
				} else if (return_size <= 64) {
					auto result = OpV(function.getVariable(*call->result));
					// mov %rax, %result
					auto move = std::make_shared<Mov>(OpV(rax), result);
					function.comment(llvm, prefix + "move result from %rax");
					function.insertBefore(llvm, move, false)->setDebug(*llvm, false)->setSecret(true, false)->extract();
				} else
					throw std::runtime_error("Unsupported return size: " + std::to_string(return_size));
			}

			// Unclobber caller-saved registers as necessary.
			for (i = arg_reg_count - 1; clobber_start <= i; --i)
				function.unclobber(instruction, clobbers.at(i));

			to_remove.push_back(instruction);
			function.reindexInstructions();
		}

		for (InstructionPtr &instruction: to_remove)
			function.remove(instruction);

		function.extractVariables();
	}

	int pushCallValue(Function &function, const InstructionPtr &instruction, const ConstantPtr &constant, int pushed,
	                  const ClobberMap &clobbers) {
		// Stack parameters seem to be passed on a 64-bit boundary.
		// TOOD!: clobbers.

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
					function.insertBefore<Movsx, false>(instruction, Op1(source), Op8(destination));
					return;
				case 16:
					// movswq %src, %dest
					function.insertBefore<Movsx, false>(instruction, Op2(source), Op8(destination));
					return;
				case 32:
					// movsdq %src, %dest
					function.insertBefore<Movsx, false>(instruction, Op4(source), Op8(destination));
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
					function.insertBefore<Mov, false>(instruction, Op1(source), Op1(destination), 8);
					// and %dest, $1
					function.insertBefore<And>(instruction, Op4(1), Op8(destination), 64);
					return;
				case  8:
					// mov %src, %dest
					function.insertBefore<Mov, false>(instruction, Op1(source), Op1(destination), 8);
					// and %dest, $0xff
					function.insertBefore<And>(instruction, Op4(0xff), Op8(destination), 64);
					return;
				case 16:
					// mov %src, %dest
					function.insertBefore<Mov, false>(instruction, Op1(source), Op1(destination), 8);
					// and %dest, $0xffff
					function.insertBefore<And>(instruction, Op4(0xffff), Op8(destination), 64);
					return;
				case 32:
					// mov %src, %dest
					function.insertBefore<Mov, false>(instruction, Op1(source), Op1(destination), 8);
					// and %dest, $0xffffffff
					function.insertBefore<And>(instruction, Op4(0xffffffff), Op8(destination), 64);
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

		// Local variables
		if (value_type == ValueType::Local) {
			auto local = std::dynamic_pointer_cast<LocalValue>(constant->value);

			if (constant->type->typeType() == TypeType::Struct) {
				// Some notes based on seeing what clang -S emits:
				// - A struct containing a single 64-bit member is passed like a scalar.
				// - A struct containing two 64-bit members is put in the caller's stack frame and a pointer thereto is
				//   passed to the callee.
				throw std::runtime_error("Passing structs on the stack is not yet supported");
			}

			VariablePtr var = signext != 0? function.newVariable(IntType::make(64)) : local->variable;
			insert_exts(local->variable, var);
			function.insertBefore<Mov, false>(instruction, Op8(var), Op8(pushed, function.pcRsp));
			return size;
		}

		// Global variables
		if (value_type == ValueType::Global) {
			auto global = std::dynamic_pointer_cast<GlobalValue>(constant->value);
			VariablePtr new_var = function.newVariable(constant->type);
			insert_exts(new_var, new_var);
			function.insertBefore<Mov, false>(instruction, Op8(*global->name), OpV(new_var));
			function.insertBefore<Mov>(instruction, Op8(new_var), Op8(pushed, function.pcRsp));
			return size;
		}

		// Integer-like values
		if (value_type == ValueType::Int) {
			VariablePtr new_var = function.newVariable(constant->type);
			const int64_t long_value = constant->value->longValue();
			function.insertBefore<Mov, false>(instruction, Op4(long_value), OpV(new_var));
			insert_exts(new_var, new_var);
			function.insertBefore<Mov>(instruction, Op8(new_var), Op8(pushed, function.pcRsp));
			return size;
		}

		// Booleans
		if (value_type == ValueType::Bool) {
			const bool bval = std::dynamic_pointer_cast<BoolValue>(constant->value)->value;
			VariablePtr new_var = function.newVariable(constant->type);
			function.insertBefore<Mov, false>(instruction, Op4(bval? 1 : 0), OpV(new_var), 64);
			insert_exts(new_var, new_var);
			function.insertBefore<Mov>(instruction, Op8(new_var), Op8(pushed, function.pcRsp));
			return size;
		}

		// Null and undef values
		if (value_type == ValueType::Null || value_type == ValueType::Undef) {
			VariablePtr new_var = function.newVariable(constant->type);
			function.insertBefore<Mov, false>(instruction, Op4(0), OpV(new_var));
			function.insertBefore<Mov>(instruction, Op8(new_var), Op8(pushed, function.pcRsp));
			return size;
		}

		if (value_type == ValueType::Getelementptr) {
			// Getelementptr expressions
			auto gep        = std::dynamic_pointer_cast<GetelementptrValue>(constant->value);
			auto gep_global = std::dynamic_pointer_cast<GlobalValue>(gep->variable);
			if (!gep_global) {
				warn() << "Not sure what to do when the argument of getelementptr isn't a global.\n";
				function.insertBefore<InvalidInstruction>(instruction);
				return 0;
			}

			const std::list<int64_t> indices = Getelementptr::getLongIndices(*gep);
			const int64_t offset = Util::updiv(Getelementptr::compute(gep->ptrType, indices), 8l);
			if (Util::outOfRange(offset))
				warn() << "Getelementptr offset inexplicably out of range: " << offset << '\n';
			VariablePtr new_var = function.newVariable(constant->type);
			function.insertBefore<Mov, false>(instruction, Op8(*gep_global->name), OpV(new_var));
			if (offset != 0)
				function.insertBefore<Add, false>(instruction, Op4(offset), OpV(new_var));
			insert_exts(new_var, new_var);
			function.insertBefore<Mov>(instruction, Op8(new_var), Op8(pushed, function.pcRsp));
			return size;
		}

		if (value_type == ValueType::Operand) {
			if (constant->type->typeType() == TypeType::Struct) {
				// Some notes based on seeing what clang -S emits:
				// - A struct containing a single 64-bit member is passed like a scalar.
				// - A struct containing two 64-bit members is put in the caller's stack frame and a pointer thereto is
				//   passed to the callee.
				throw std::runtime_error("Passing structs on the stack is not yet supported");
			}

			auto operand = std::dynamic_pointer_cast<OperandValue>(constant->value)->operand;

			// TODO!: sign extension
			// VariablePtr var = signext != 0? function.newVariable(IntType::make(64)) : local->variable;
			// insert_exts(local->variable, var);
			function.insertBefore<Mov, false>(instruction, operand, Op8(pushed, function.pcRsp));
			return size;
		}

		if (constant->conversionSource)
			return pushCallValue(function, instruction, constant->conversionSource, pushed, clobbers);

		warn() << "Not sure what to do with " << *constant << " (" << getName(value_type) << ") at " __FILE__ ":"
		       << __LINE__ << '\n';

		function.insertBefore<InvalidInstruction>(instruction);

		return 0;
	}

	InstructionPtr setupCallValue(Function &function, const OperandPtr &new_operand, const InstructionPtr &instruction,
	                              const ConstantPtr &constant, const ClobberMap &clobbers) {
		if (constant->conversionSource) {
			setupCallValue(function, new_operand, instruction, constant->conversionSource, clobbers);
			return nullptr;
		}

		new_operand->bitWidth = constant->type->width();

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
					function.insertBefore<Movsx, false>(instruction, Op1(*new_operand), Op8(*new_operand));
					return;
				case 16:
					// movswq %var, %var
					function.insertBefore<Movsx, false>(instruction, Op2(*new_operand), Op8(*new_operand));
					return;
				case 32:
					// movslq %var, %var
					function.insertBefore<Movsx, false>(instruction, Op4(*new_operand), Op8(*new_operand));
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
					function.insertBefore<And>(instruction, Op4(1), Op8(*new_operand), 64);
					return;
				case  8:
					function.insertBefore<And>(instruction, Op4(0xff), Op8(*new_operand), 64);
					return;
				case 16:
					function.insertBefore<And>(instruction, Op4(0xffff), Op8(*new_operand), 64);
					return;
				case 32:
					function.insertBefore<And>(instruction, Op4(0xffffffff), Op8(*new_operand), 64);
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
			// Moving argument into argument registers can be problematic (e.g., movq %rsi, %rdx, which would take place
			// after %rsi is overwritten!), so we use the clobbered memory locations for those.
			auto local = std::dynamic_pointer_cast<LocalValue>(constant->value);
			InstructionPtr out;
			if (local->variable->registers.size() == 1 && clobbers.contains(*local->variable->registers.begin())) {
				const int reg = *local->variable->registers.begin();
				out = function.insertBefore(instruction, clobbers.at(reg)->makeSemi(new_operand));
			} else
				out = function.insertBefore<Mov>(instruction, OpV(local->variable), new_operand, 64);
			out->setDebug(*instruction, true);
			insert_exts();
			return out;
		}

		if (value_type == ValueType::Int) {
			// If it's an integer constant, set the argument register to it.
			auto out = function.insertBefore<Mov>(instruction, Op4(constant->value->longValue()), new_operand);
			insert_exts();
			return out;
		}

		if (value_type == ValueType::Bool) {
			// If it's a boolean constant, convert it to an integer and do the same.
			const bool bval = std::dynamic_pointer_cast<BoolValue>(constant->value)->value;
			auto out = function.insertBefore<Mov>(instruction, Op4(bval? 1 : 0), new_operand);
			insert_exts();
			return out;
		}

		if (value_type == ValueType::Null || value_type == ValueType::Undef) {
			// If it's a null or undef constant, just use zero. No need to sign extend.
			return function.insertBefore<Mov>(instruction, Op4(0), new_operand);
		}

		if (value_type == ValueType::Getelementptr) {
			// If it's a getelementptr expression, things are a little more difficult.
			auto gep        = std::dynamic_pointer_cast<GetelementptrValue>(constant->value);
			auto gep_global = std::dynamic_pointer_cast<GlobalValue>(gep->variable);
			// TODO, maybe: reduce duplication
			if (!gep_global) {
				std::shared_ptr<LocalValue> local;

				if (auto gep_local = std::dynamic_pointer_cast<LocalValue>(gep->variable)) {
					local = std::make_shared<LocalValue>(gep_local->getVariable(function));
				} else if (auto subgep = std::dynamic_pointer_cast<GetelementptrValue>(gep->variable)) {
					local = function.replaceGetelementptrValue(subgep, instruction);
				} else {
					warn() << "Not sure what to do when the argument of getelementptr isn't a global or getelementptr."
					          "\n    " << std::string(*gep->variable);
					if (auto llvm = std::dynamic_pointer_cast<LLVMInstruction>(instruction))
						std::cerr << " (" << llvm->node->location << ")";
					std::cerr << "\n";
					return function.insertBefore<InvalidInstruction>(instruction);
				}

				const std::list<int64_t> indices = Getelementptr::getLongIndices(*gep);
				const int64_t offset = Util::updiv(Getelementptr::compute(gep->ptrType, indices), 8l);

				if (Util::outOfRange(offset))
					warn() << "Getelementptr offset inexplicably out of range: " << offset << '\n';

				InstructionPtr out;

				if (offset == 0) {
					out = function.insertBefore<Mov>(instruction, OpV(local->getVariable(function)), new_operand);
				} else {
					function.insertBefore<Mov, false>(instruction, OpV(local->getVariable(function)), new_operand);
					out = function.insertBefore<Add>(instruction, Op4(offset), new_operand);
				}

				insert_exts();
				return out;
			}

			const std::list<int64_t> indices = Getelementptr::getLongIndices(*gep);
			const int64_t offset = Util::updiv(Getelementptr::compute(gep->ptrType, indices), 8l);

			if (Util::outOfRange(offset))
				warn() << "Getelementptr offset inexplicably out of range: " << offset << '\n';

			auto out = function.insertBefore<Mov>(instruction, Op8(*gep_global->name), new_operand);
			if (offset != 0)
				function.insertBefore<Add>(instruction, Op4(offset), new_operand);
			insert_exts();
			return out;
		}

		if (value_type == ValueType::Global) {
			auto global = std::dynamic_pointer_cast<GlobalValue>(constant->value);
			auto mov = function.insertBefore<Mov>(instruction, Op8(*global->name), new_operand);
			insert_exts();
			return mov;
		}

		if (value_type == ValueType::Icmp) {
			auto icmp = std::dynamic_pointer_cast<IcmpValue>(constant->value);
			auto node = IcmpNode::make(new_operand, icmp->cond, icmp->left, icmp->right);
			Passes::lowerIcmp(function, instruction, node.get());
			insert_exts();
			return nullptr; // Whatever.
		}

		if (value_type == ValueType::Operand) {
			const auto &operand = std::dynamic_pointer_cast<OperandValue>(constant->value)->operand;

			InstructionPtr out;
			if (operand->isRegister() && operand->reg->registers.size() == 1) {
				const int reg = *operand->reg->registers.begin();
				if (clobbers.contains(reg))
					out = function.insertBefore(instruction, clobbers.at(reg)->makeSemi(new_operand));
			}

			if (!out)
				out = function.insertBefore<Mov>(instruction, operand, new_operand);

			out->setDebug(*instruction, true);
			insert_exts();
			return out;
		}

		warn() << "Not sure what to do with " << *constant << " (" << getName(value_type) << ") at " __FILE__ ":"
			   << __LINE__ << '\n';

		return function.insertBefore<InvalidInstruction>(instruction);
	}
}
