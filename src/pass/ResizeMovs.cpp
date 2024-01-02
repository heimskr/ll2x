#include "compiler/Function.h"
#include "compiler/Instruction.h"
#include "instruction/Mov.h"
#include "pass/ResizeMovs.h"
#include "util/Timer.h"

namespace LL2X::Passes {
	void resizeMovs(Function &function) {
		Timer timer("ResizeMovs");

		for (const InstructionPtr &instruction: function.linearInstructions) {
			auto mov = std::dynamic_pointer_cast<Mov>(instruction);
			if (!mov)
				continue;

			OperandPtr source = mov->source;
			OperandPtr destination = mov->destination;

			if (!source->isRegister() || !destination->isRegister())
				continue;

			if (source->bitWidth < destination->bitWidth) {
				function.comment(mov, "Adjusting source operand from " + std::to_string(source->bitWidth) + " bits to " +
					std::to_string(destination->bitWidth) + " bits and adjusting mov width from " + std::to_string(mov->size));
				source->setWidth(destination->bitWidth);
				mov->size = destination->bitWidth;
			} else if (destination->bitWidth < source->bitWidth) {
				function.comment(mov, "Adjusting source operand from " + std::to_string(destination->bitWidth) + " bits to " +
					std::to_string(source->bitWidth) + " bits and adjusting mov width from " + std::to_string(mov->size));
				destination->setWidth(source->bitWidth);
				mov->size = source->bitWidth;
			}
		}
	}
}
