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
	namespace {
		bool isLive(const InstructionPtr &instruction, int reg) {
			BasicBlockPtr block = instruction->parent.lock();

			if (!block)
				throw std::runtime_error("Couldn't lock instruction block in LowerClobber");

			return std::ranges::any_of(block->allLive, [reg](const VariablePtr &var) {
				return var->hasRegister(reg);
			});
		}

		bool isLive(const std::shared_ptr<Clobber> &clobber) {
			BasicBlockPtr block = clobber->parent.lock();

			if (!block)
				throw std::runtime_error("Couldn't lock instruction block in LowerClobber");

			const int reg = clobber->reg;

			if (!std::ranges::any_of(block->allLive, [reg](const VariablePtr &var) { return var->hasRegister(reg); }))
				return false;

			return isLive(clobber->unclobber, reg);
		}

		std::string joinLive(const BasicBlockPtr &block, int reg) {
			if (!block)
				return "???";
			std::vector<std::string> filtered;
			for (const VariablePtr &live: block->allLive)
				if (live->hasRegister(reg))
					filtered.push_back(live->plainString());
			return Util::join(filtered, ", ");
		}
	}

	size_t lowerClobber(Function &function) {
		Timer timer("LowerClobber");
		std::list<InstructionPtr> to_remove;

		for (InstructionPtr &instruction: function.linearInstructions)
			if (auto clobber = std::dynamic_pointer_cast<Clobber>(instruction)) {
				const int reg = clobber->reg;
				assert(reg == clobber->unclobber->reg);
				if (isLive(clobber)) {
					// TODO: check liveness of register at unclobber location?
					VariablePtr precolored = function.makePrecoloredVariable(reg, instruction->parent.lock());
					const StackLocation *location = nullptr;

					if (function.clobbers.contains(reg)) {
						location = function.clobbers.at(reg);
					} else {
						location = &function.addToStack(precolored, StackLocation::Purpose::Clobber, 8, 8);
						function.clobbers.emplace(reg, location);
					}

					const int offset = -location->offset;
					const std::string reg_name = x86_64::registerName(reg);

					if (isLive(clobber->unclobber, reg)) {
						std::string live = joinLive(clobber->unclobber->parent.lock(), reg);
						function.comment(clobber->unclobber, "Unclobber %" + reg_name + ", live inside " + live);
						function.insertBefore<Mov, false>(clobber->unclobber, Op8(offset, function.pcRbp), Op8(precolored));
					}

					auto mov = std::make_shared<Mov>(Op8(precolored), Op8(offset, function.pcRbp));
					function.comment(clobber, "Clobber %" + reg_name);
					function.insertBefore(clobber, mov, false)->setDebug(*instruction, false)->setSecret()->extract();

					for (const auto &semi: clobber->semis) {
						function.comment(semi, "Semiunclobber live %" + reg_name + " into " +
							semi->destination->toString());
						function.insertBefore<Mov, false>(semi, Op8(offset, function.pcRbp), semi->destination);
					}
				} else {
					for (const auto &semi: clobber->semis) {
						const std::string reg_name = x86_64::registerName(reg);
						// TODO!(seminar): investigate widths
						function.comment(semi, "Semiunclobber non-live %" + reg_name + " into " +
							semi->destination->toString());
						OperandPtr precolored = OpV(function.makePrecoloredVariable(reg, instruction->parent.lock()));
						function.insertBefore<Mov, false>(semi, precolored, semi->destination);
					}
				}

				// function.forceLiveness();

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
