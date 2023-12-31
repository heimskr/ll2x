#include <iostream>

#include "compiler/Function.h"
#include "compiler/Instruction.h"
#include "compiler/LLVMInstruction.h"
#include "compiler/Program.h"
#include "instruction/Jmp.h"
#include "instruction/Label.h"
#include "instruction/Mov.h"
#include "instruction/Movabs.h"
#include "instruction/Pop.h"
#include "instruction/Ret.h"
#include "pass/LowerRet.h"
#include "util/Timer.h"

namespace LL2X::Passes {
	size_t lowerRet(Function &function) {
		Timer timer("LowerRet");
		std::list<InstructionPtr> to_remove;

		for (const InstructionPtr &instruction: function.linearInstructions) {
			auto *llvm = dynamic_cast<LLVMInstruction *>(instruction.get());
			if (llvm == nullptr)
				continue;
			if (llvm->node->nodeType() == NodeType::Unreachable)
				to_remove.push_back(instruction);
			if (llvm->node->nodeType() != NodeType::Ret)
				continue;

			auto *ret = dynamic_cast<RetNode *>(llvm->node);

			BasicBlockPtr block = instruction->parent.lock();
			if (!block)
				throw std::runtime_error("Couldn't lock instruction parent in LowerRet");

			const VariablePtr &rbp = function.pcRbp;
			const VariablePtr &rsp = function.pcRsp;
			VariablePtr rax = function.makePrecoloredVariable(x86_64::rax, block);

			// Put the return value into %rax (and possibly also %rdx).
			if (ret->value->isIntLike()) {

				const int64_t long_value = ret->value->longValue();
				if (long_value < INT32_MIN || INT32_MAX < long_value)
					function.insertBefore<Movabs, false>(instruction, Op8(long_value), Op8(rax));
				else
					function.insertBefore<Mov, false>(instruction, Op4(long_value), Op8(rax));

			} else if (ret->value->isLocal()) {

				VariablePtr var = std::dynamic_pointer_cast<LocalValue>(ret->value)->variable;
				function.extraVariables.emplace(var->getID(), var);

				if (var->multireg()) {
					VariablePtr rdx = function.makePrecoloredVariable(x86_64::rdx, block);
					if (2 < var->getRegisters().size())
						throw std::runtime_error("Too many registers for " + var->plainString() + " in LowerRet");
					auto iter = var->getRegisters().begin();
					for (size_t i = 0; i < var->getRegisters().size(); ++i) {
						auto subvar = function.makePrecoloredVariable(*iter++, block);
						function.insertBefore<Mov, false>(instruction, OpV(subvar), Op8(i == 0? rax : rdx));
					}
				} else
					function.insertBefore<Mov, false>(instruction, OpV(var), Op8(rax));

			} else if (ret->value->valueType() == ValueType::Operand) {

				OperandPtr operand = std::dynamic_pointer_cast<OperandValue>(ret->value)->operand;
				if (!operand->isRegisters({x86_64::rax})) {
					if (operand->isRegister() && 1 < operand->reg->getRegisters().size()) {
						const size_t reg_count = operand->reg->getRegisters().size();
						if (reg_count != 2)
							throw std::runtime_error("Can't return a variable that requires three or more registers");
						if (operand->bitWidth != 128)
							throw std::runtime_error("Expected a bitwidth of 128 for a two-register return operand, "
								"got " + std::to_string(operand->bitWidth));
						VariablePtr rdx = function.makePrecoloredVariable(x86_64::rdx, block);
						auto iter = operand->reg->getRegisters().begin();
						VariablePtr to_rax = function.makePrecoloredVariable(*iter, block);
						VariablePtr to_rdx = function.makePrecoloredVariable(*++iter, block);
						function.comment(instruction, "LowerRet: two-register return");
						function.insertBefore<Mov, false>(instruction, Op8(to_rax), Op8(rax));
						function.insertBefore<Mov, false>(instruction, Op8(to_rdx), Op8(rdx));
					} else {
						function.insertBefore<Mov, false>(instruction, operand, OpX(operand->bitWidth, rax));
					}
				}

			} else if (ret->value->valueType() == ValueType::Global) {

				auto global = std::dynamic_pointer_cast<GlobalValue>(ret->value);
				const std::string &global_name = *global->name;
				TypePtr type = function.parent.getGlobalType(global_name);

				x86_64::Width width = x86_64::Width::Eight;
				if (type)
					width = x86_64::getWidth(type->width());

				function.insertBefore<Mov, false>(instruction, OpX(width, global_name, true, false), OpX(width, rax));

			} else if (ret->value->valueType() != ValueType::Void) {
				throw std::runtime_error("Unhandled return value in " + *function.name + ": " +
					std::string(*ret->value));
			}

			// Restore all the registers that were saved in the prologue.
			for (auto begin = function.savedRegisters.rbegin(), iter = begin, end = function.savedRegisters.rend();
			     iter != end; ++iter) {
				VariablePtr variable = function.makePrecoloredVariable(*iter, block);
				const auto &location = *function.calleeSaved.at(*iter);
				function.insertBefore<Mov, false>(instruction, Op8(-location.offset, rbp), Op8(variable));
			}

			// Insert the epilogue (minus the jump).
			// movq %rbp, %rsp
			function.insertBefore<Mov, false>(instruction, Op8(rbp), Op8(rsp));

			// popq %rbp
			function.insertBefore<Pop, false>(instruction, Op8(rbp));

			// Return from the function.
			function.insertBefore<Ret>(instruction);

			to_remove.push_back(instruction);
		}

		function.reindexInstructions();

		for (InstructionPtr &instruction: to_remove)
			function.remove(instruction);

		return to_remove.size();
	}
}
