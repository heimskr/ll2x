#include <cassert>
#include <iostream>

#include "compiler/Function.h"
#include "compiler/Instruction.h"
#include "instruction/Clobber.h"
#include "instruction/Mov.h"
#include "pass/LowerClobber.h"
#include "util/Timer.h"

namespace LL2X::Passes {
	static bool isLive(const InstructionPtr &instruction, int reg) {
		BasicBlockPtr block = instruction->parent.lock();

		if (!block)
			throw std::runtime_error("Couldn't lock instruction block in LowerClobber");

		for (const VariablePtr &var: block->liveOut)
			if (var->registers.contains(reg))
				return true;

		return false;
	}

	int lowerClobber(Function &function) {
		Timer timer("LowerClobber");
		std::list<InstructionPtr> to_remove;

		for (InstructionPtr &instruction: function.linearInstructions)
			if (auto clobber = std::dynamic_pointer_cast<Clobber>(instruction)) {
				const int reg = clobber->reg;
				assert(reg == clobber->unclobber->reg);
				if (isLive(instruction, reg)) {
					// TODO: check liveness of register at unclobber location?
					VariablePtr precolored = function.makePrecoloredVariable(reg, instruction->parent.lock());
					const StackLocation *location = nullptr;

					if (function.clobbers.contains(reg)) {
						location = function.clobbers.at(reg);
					} else {
						location = &function.addToStack(precolored, StackLocation::Purpose::Clobber);
						function.clobbers.emplace(reg, location);
					}

					const int offset = -location->offset;

					auto mov = std::make_shared<Mov>(Op8(precolored), Op8(offset, function.pcRbp));
					function.comment(clobber, "Clobber " + x86_64::registerName(reg));
					function.insertBefore(clobber, mov, false)->setDebug(*instruction, false)->setSecret()->extract();
					function.comment(clobber->unclobber, "Unclobber " + x86_64::registerName(reg));
					function.insertBefore<Mov, false>(clobber->unclobber, Op8(offset, function.pcRbp), Op8(precolored));
				}

				to_remove.push_back(clobber);
				to_remove.push_back(clobber->unclobber);
			}

		function.reindexInstructions();

		for (InstructionPtr &instruction: to_remove)
			function.remove(instruction);

		return to_remove.size();
	}
}
