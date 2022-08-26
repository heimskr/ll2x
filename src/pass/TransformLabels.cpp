#include "compiler/Function.h"
#include "compiler/Instruction.h"
#include "pass/TransformLabels.h"
#include "util/Timer.h"

namespace LL2X::Passes {
	size_t transformLabels(Function &function) {
		Timer timer("TransformLabels");
		size_t changed = 0;

		for (const InstructionPtr &instruction: function.linearInstructions)
			for (const auto &operand_wrapper: instruction->getOperands()) {
				OperandPtr operand = operand_wrapper.get();
				if (operand->labelNeedsTransformation) {
					operand->label = function.transformLabel(operand->label);
					operand->labelNeedsTransformation = false;
					++changed;
				}
			}

		return changed;
	}
}
