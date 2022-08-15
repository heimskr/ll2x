#include <iostream>

#include "compiler/Function.h"
#include "compiler/Instruction.h"
#include "instruction/Clobber.h"
#include "instruction/Pop.h"
#include "instruction/Push.h"
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

	template <typename P>
	static void lower(Function &function, const std::shared_ptr<IntermediateInstruction> &instruction, int reg) {
		if (isLive(instruction, reg)) {
			OperandPtr precolored = Operand8(function.makePrecoloredVariable(reg, instruction->parent.lock()));
			function.insertBefore(instruction, std::make_shared<P>(precolored), false)->setDebug(*instruction, true);
		}
	}

	int lowerClobber(Function &function) {
		Timer timer("LowerClobber");
		std::list<InstructionPtr> to_remove;
		
		for (InstructionPtr &instruction: function.linearInstructions) {
			if (auto clobber = std::dynamic_pointer_cast<Clobber>(instruction))
				lower<Push>(function, clobber, clobber->reg);
			else if (auto unclobber = std::dynamic_pointer_cast<Unclobber>(instruction))
				lower<Pop>(function, unclobber, unclobber->reg);
			else
				continue;

			to_remove.push_back(instruction);
		}

		function.reindexInstructions();

		for (InstructionPtr &instruction: to_remove)
			function.remove(instruction);

		return to_remove.size();
	}
}
