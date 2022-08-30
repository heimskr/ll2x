#include <algorithm>
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

		return std::ranges::any_of(block->allLive, [reg](const VariablePtr &var) {
			return var->registers.contains(reg);
		});
	}

	size_t lowerClobber(Function &function) {
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
					const std::string reg_name = '%' + x86_64::registerName(reg);

					auto mov = std::make_shared<Mov>(Op8(precolored), Op8(offset, function.pcRbp));
					function.comment(clobber, "Clobber " + reg_name);
					function.insertBefore(clobber, mov, false)->setDebug(*instruction, false)->setSecret()->extract();
					function.comment(clobber->unclobber, "Unclobber " + reg_name);
					function.insertBefore<Mov, false>(clobber->unclobber, Op8(offset, function.pcRbp), Op8(precolored));
					for (const auto &semi: clobber->semis) {
						function.comment(semi, "Semiunclobber " + reg_name + " into " + semi->destination->toString());
						function.insertBefore<Mov, false>(semi, Op8(offset, function.pcRbp), semi->destination);
					}
				} else {
					for (const auto &semi: clobber->semis) {
						const std::string reg_name = x86_64::registerName(reg);
						function.comment(semi, "Semiunclobber %" + reg_name + " into " + semi->destination->toString());
						OperandPtr precolored = OpV(function.makePrecoloredVariable(reg, instruction->parent.lock()));
						function.insertBefore<Mov, false>(semi, precolored, semi->destination);
					}
				}

				function.forceLiveness();

				to_remove.push_back(clobber);
				to_remove.push_back(clobber->unclobber);
				for (const auto &semi: clobber->semis)
					to_remove.push_back(semi);
			}

		function.reindexInstructions();

		for (const InstructionPtr &instruction: to_remove)
			function.remove(instruction);

		return to_remove.size();
	}
}
