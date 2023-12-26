#include "compiler/Function.h"
#include "compiler/Instruction.h"
#include "instruction/And.h"
#include "instruction/Mov.h"
#include "instruction/Movzx.h"
#include "pass/FixMovzx.h"
#include "util/Timer.h"

namespace LL2X::Passes {
	size_t fixMovzx(Function &function) {
		Timer timer("FixMovzx");

		std::vector<InstructionPtr> to_remove;
		to_remove.reserve(function.linearInstructions.size() / 32);

		for (const InstructionPtr &instruction: function.linearInstructions) {
			auto movzx = std::dynamic_pointer_cast<Movzx>(instruction);
			if (!movzx)
				continue;

			// Can't use immediate operands in movzx.
			if (movzx->source->isConstant()) {
				function.comment(movzx, "Fixed movzx with constant source operand");
				function.insertBefore<Mov, false>(movzx, movzx->source, movzx->destination);

				// Truncate if necessary
				if (movzx->source->bitWidth < 32) {
					OperandPtr mask = Op4((1 << movzx->source->bitWidth) - 1);
					function.insertBefore<And, false>(movzx, std::move(mask), movzx->destination);
				}

				to_remove.push_back(movzx);
				continue;
			}

			if (movzx->source->bitWidth == 32 && movzx->destination->bitWidth >= 32) {
				function.comment(movzx, "Fixed movzx with 32-bit source operand");
				function.insertBefore<Mov, false>(movzx, movzx->source, OpN(32, movzx->destination));
				to_remove.push_back(movzx);
				continue;
			}

			if (movzx->source->width == movzx->destination->width) {
				function.comment(movzx, "Fixed movzx with identical source and destination widths");
				function.insertBefore<Mov, false>(movzx, movzx->source, movzx->destination);
				to_remove.push_back(movzx);
				continue;
			}
		}

		if (!to_remove.empty()) {
			for (const InstructionPtr &instruction: to_remove)
				function.remove(instruction);
			function.reindexInstructions();
		}

		return to_remove.size();
	}
}
