#include "compiler/Function.h"
#include "compiler/Instruction.h"
#include "compiler/LLVMInstruction.h"
#include "instruction/Cmp.h"
#include "instruction/Mov.h"
#include "instruction/Sub.h"
#include "pass/LowerSelect.h"
#include "util/Timer.h"

namespace LL2X::Passes {
	size_t lowerSelect(Function &function) {
		Timer timer("LowerSelect");
		std::list<InstructionPtr> to_remove;

		for (const InstructionPtr &instruction: function.linearInstructions) {
			auto llvm = std::dynamic_pointer_cast<LLVMInstruction>(instruction);
			if (!llvm || llvm->node->nodeType() != NodeType::Select)
				continue;
			auto *select = dynamic_cast<SelectNode *>(llvm->node);

			// TODO: verify GlobalValue works properly
			OperandPtr left_operand  = select->firstValue->makeOperand();
			OperandPtr right_operand = select->secondValue->makeOperand();
			OperandPtr test_operand  = select->conditionValue->makeOperand();

			function.insertBefore<Cmp, false>(instruction, test_operand, Op4(0));
			function.insertBefore<Mov, false>(instruction, left_operand, select->operand);
			function.insertBefore<Mov>(instruction, right_operand, select->operand, x86_64::Condition::IfEqual);

			to_remove.push_back(instruction);
		}

		for (InstructionPtr &instruction: to_remove)
			function.remove(instruction);

		return to_remove.size();
	}
}
