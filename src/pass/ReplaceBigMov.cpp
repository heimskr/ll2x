#include "compiler/Function.h"
#include "compiler/Instruction.h"
#include "instruction/Mov.h"
#include "instruction/Movabs.h"
#include "pass/ReplaceBigMov.h"
#include "util/Timer.h"

namespace LL2X::Passes {
	size_t replaceBigMov(Function &function) {
		Timer timer("ReplaceBigMov");

		std::vector<InstructionPtr> to_remove;
		to_remove.reserve(function.linearInstructions.size() / 32);

		for (const InstructionPtr &instruction: function.linearInstructions) {
			auto mov = std::dynamic_pointer_cast<Mov>(instruction);
			if (!mov || !mov->source->isConstant())
				continue;

			const auto constant = mov->source->getConstant();
			if (!Util::outOfRange(constant))
				continue;

			function.insertBefore<Movabs, false>(mov, Op8(constant), mov->destination, mov->size);
			to_remove.push_back(mov);
		}

		if (!to_remove.empty()) {
			for (const InstructionPtr &instruction: to_remove)
				function.remove(instruction);
			function.reindexInstructions();
		}

		return to_remove.size();
	}
}
