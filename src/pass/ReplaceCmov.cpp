#include "compiler/Function.h"
#include "compiler/Instruction.h"
#include "instruction/Jmp.h"
#include "instruction/Label.h"
#include "instruction/Mov.h"
#include "pass/ReplaceCmov.h"
#include "util/Timer.h"

namespace LL2X::Passes {
	size_t replaceCmov(Function &function) {
		Timer timer("ReplaceCmov");

		std::vector<InstructionPtr> to_remove;
		to_remove.reserve(function.linearInstructions.size() / 32);

		const std::string base = function.transformLabel("RC");

		for (const InstructionPtr &instruction: function.linearInstructions) {
			auto cmov = std::dynamic_pointer_cast<Mov>(instruction);
			if (!cmov || cmov->condition == x86_64::Condition::Unconditional)
				continue;

			const std::string label = base + std::to_string(to_remove.size());
			function.insertBefore<Jmp, false>(instruction, Op8(label, false), x86_64::invert(cmov->condition));
			function.insertBefore<Mov, false>(instruction, cmov->source, cmov->destination, cmov->size);
			function.insertBefore<Label>(instruction, label);

			to_remove.push_back(instruction);
		}

		for (const InstructionPtr &instruction: to_remove)
			function.remove(instruction);

		return to_remove.size();
	}
}
