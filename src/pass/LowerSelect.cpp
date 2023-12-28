#include "compiler/Function.h"
#include "compiler/Instruction.h"
#include "compiler/LLVMInstruction.h"
#include "compiler/Program.h"
#include "instruction/Cmp.h"
#include "instruction/Lea.h"
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

			OperandPtr left_operand  = select->firstValue->makeOperand();
			OperandPtr right_operand = select->secondValue->makeOperand();
			OperandPtr test_operand  = select->conditionValue->makeOperand();

			function.insertBefore<Cmp, false>(instruction, test_operand, Op4(0));
			function.insertLeaOrMov(instruction, left_operand, select->operand, false);
			if (std::optional<std::string> global_name = right_operand->getGlobal()) {
				TypePtr global_type = function.parent.getGlobalType(*global_name);

				if (!global_type)
					throw std::runtime_error("Couldn't find type of global " + *global_name + " in LowerSelect");

				OperandPtr temp_operand = OpV(function.newVariable(PointerType::make(global_type),
					instruction->parent.lock()));
				function.insertBefore<Lea, false>(instruction, right_operand, temp_operand);
				function.insertBefore<Mov>(instruction, temp_operand, select->operand, x86_64::Condition::IfEqual);
			} else {
				function.insertBefore<Mov>(instruction, right_operand, select->operand, x86_64::Condition::IfEqual);
			}

			to_remove.push_back(instruction);
		}

		for (const InstructionPtr &instruction: to_remove)
			function.remove(instruction);

		return to_remove.size();
	}
}
