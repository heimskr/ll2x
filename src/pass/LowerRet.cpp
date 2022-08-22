#include <iostream>

#include "compiler/Function.h"
#include "compiler/Instruction.h"
#include "compiler/LLVMInstruction.h"
#include "instruction/Jmp.h"
#include "instruction/Label.h"
#include "instruction/Mov.h"
#include "instruction/Movabs.h"
#include "instruction/Pop.h"
#include "instruction/Ret.h"
#include "pass/LowerRet.h"
#include "util/Timer.h"

namespace LL2X::Passes {
	int lowerRet(Function &function) {
		Timer timer("LowerRet");
		std::list<InstructionPtr> to_remove;
		
		for (InstructionPtr &instruction: function.linearInstructions) {
			LLVMInstruction *llvm = dynamic_cast<LLVMInstruction *>(instruction.get());
			if (!llvm)
				continue;
			if (llvm->node->nodeType() == NodeType::Unreachable)
				to_remove.push_back(instruction);
			if (llvm->node->nodeType() != NodeType::Ret)
				continue;

			RetNode *ret = dynamic_cast<RetNode *>(llvm->node);

			BasicBlockPtr block = instruction->parent.lock();
			if (!block)
				throw std::runtime_error("Couldn't lock instruction parent in LowerRet");

			const VariablePtr &rbp = function.rbp;
			const VariablePtr &rsp = function.rsp;
			VariablePtr rax = function.makePrecoloredVariable(x86_64::rax, block);

			// Put the return value into %rax (and possibly also %rdx).
			if (ret->value->isIntLike()) {
				int64_t long_value = ret->value->longValue();
				InstructionPtr mov;
				if (UINT32_MAX < static_cast<uint64_t>(long_value))
					mov = std::make_shared<Movabs>(Operand8(long_value), Operand8(rax));
				else
					mov = std::make_shared<Mov>(Operand4(long_value), Operand8(rax));
				function.insertBefore(instruction, mov, false)->setDebug(llvm, true);
			} else if (ret->value->isLocal()) {
				VariablePtr var = dynamic_cast<LocalValue *>(ret->value.get())->variable;
				function.extraVariables.emplace(var->id, var);
				if (var->multireg()) {
					VariablePtr rdx = function.makePrecoloredVariable(x86_64::rdx, block);
					if (2 < var->registers.size())
						throw std::runtime_error("Too many registers for " + var->plainString() + " in LowerRet");
					auto iter = var->registers.begin();
					for (size_t i = 0; i < var->registers.size(); ++i) {
						auto subvar = function.makePrecoloredVariable(*iter++, block);
						auto mov = std::make_shared<Mov>(OperandV(subvar), Operand8(i == 0? rax : rdx));
						function.insertBefore(instruction, mov, false)->setDebug(llvm, true);
					}
				} else {
					function.insertBefore(instruction, std::make_shared<Mov>(OperandV(var), Operand8(rax)), false)
						->setDebug(llvm, true);
				}
			} else if (ret->value->valueType() == ValueType::Operand) {
				// TODO: Handle multireg in Register mode
				OperandPtr operand = dynamic_cast<OperandValue *>(ret->value.get())->operand;
				if (!operand->isRegisters({x86_64::rax})) {
					function.insertBefore(instruction, std::make_shared<Mov>(operand, OperandX(operand->width, rax)),
						false)->setDebug(llvm, true);
				}
			} else if (ret->value->valueType() != ValueType::Void)
				throw std::runtime_error("Unhandled return value in " + *function.name + ": " +
					std::string(*ret->value));

			// Restore all the registers that were saved in the prologue.
			for (auto begin = function.savedRegisters.rbegin(), iter = begin, end = function.savedRegisters.rend();
			     iter != end; ++iter) {
				VariablePtr variable = function.makePrecoloredVariable(*iter, block);
				const auto &location = *function.calleeSaved.at(*iter);
				function.insertBefore(instruction, std::make_shared<Mov>(Operand8(-location.offset, rbp),
					Operand8(variable)), false)->setDebug(llvm, true);
			}

			// Insert the epilogue (minus the jump).
			// movq %rbp, %rsp
			function.insertBefore(instruction, std::make_shared<Mov>(Operand8(rbp), Operand8(rsp)), false)
				->setDebug(llvm, true);
			// popq %rbp
			function.insertBefore(instruction, std::make_shared<Pop>(Operand8(rbp)), false)->setDebug(llvm, true);

			// Return from the function.
			function.insertBefore(instruction, std::make_shared<Ret>(), false)->setDebug(llvm, true);

			to_remove.push_back(instruction);
		}

		function.reindexInstructions();

		for (InstructionPtr &instruction: to_remove)
			function.remove(instruction);

		return to_remove.size();
	}
}
