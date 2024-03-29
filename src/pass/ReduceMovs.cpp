#include "compiler/Function.h"
#include "compiler/Instruction.h"
#include "compiler/LLVMInstruction.h"
#include "instruction/Jmp.h"
#include "pass/ReduceMovs.h"
#include "util/Timer.h"

#include <cassert>

namespace LL2X::Passes {
	namespace {
		bool canReduce(const std::shared_ptr<Mov> &mov) {
			// If, given an instruction M of the form mov %a, %b,
			//  1. All blocks in the function are minimized
			//  2. %a isn't live-out at the mov
			//  3. %b has no use U such that D can reach U and U can reach M for any D in defs(%a)
			// then M can be removed and all uses and definitions of %a can be replaced with %b.
			// Point 2 ensures that nothing depending on the old value of %a after any future definitions
			// of %b gets the wrong value.
			// This function assumes that condition 1 is met.

			if (!mov->source->isRegister() || !mov->destination->isRegister())
				return false;

			BasicBlockPtr block = mov->parent.lock();
			assert(block);

			Function &function = *block->parent;
			VariablePtr source = mov->source->reg;
			VariablePtr destination = mov->destination->reg;

			// Check point 2
			if (block->liveOut.contains(source))
				return false;

			// Can't reduce the register if either register is precolored.
			if (!source->getRegisters().empty() || !destination->getRegisters().empty())
				return false;

			if (source->getDefinitions().empty()) {
				warn() << mov->debugExtra() << ": " << *source << '\n';
				throw std::runtime_error("mov source has no definitions in ReduceMovs");
			}

			// Check point 3
			for (const std::weak_ptr<Instruction> &weak_use: destination->getUses()) {
				InstructionPtr use = weak_use.lock();

				if (!use)
					continue;

				BasicBlockPtr use_block = use->parent.lock();

				if (!use_block || !function.canReach(use_block, block))
					continue;

				for (const std::weak_ptr<Instruction> &weak_definition: source->getDefinitions()) {
					InstructionPtr definition = weak_definition.lock();
					if (!definition || definition == mov)
						continue;

					if (function.canReach(definition->parent.lock(), use_block))
						return false;
				}
			}

			return true;
		}

		void strategy1(Function &function) {
			Timer timer("ReduceMovs[1]");
			std::list<InstructionPtr> to_remove;

			for (const InstructionPtr &instruction: function.linearInstructions) {
				auto mov = std::dynamic_pointer_cast<Mov>(instruction);

				if (!mov)
					continue;

				if (canReduce(mov)) {
					info() << "Reducing " << mov->debugExtra() << '\n';
					mov->source->reg->makeAliasOf(mov->destination->reg);
					to_remove.push_back(mov);
				}
			}

			for (const InstructionPtr &instruction: to_remove)
				function.remove(instruction);
		}

		void strategy2(Function &function) {
			Timer timer("ReduceMovs[2]");
			std::unordered_set<InstructionPtr> to_remove;

			for (const InstructionPtr &instruction: function.linearInstructions) {
				if (to_remove.contains(instruction))
					continue;

				auto mov = std::dynamic_pointer_cast<Mov>(instruction);

				if (!mov)
					continue;

				auto next_mov = std::dynamic_pointer_cast<Mov>(function.after(instruction));

				if (!next_mov)
					continue;

				// We have two consecutive movs. We want them to be in this form:
				//   mov X, %b
				//   mov %b, Y

				OperandPtr destination = mov->destination;
				OperandPtr source = next_mov->source;

				if (!destination->isRegister() || !source->isRegister() || *destination->reg != *source->reg)
					continue;

				// If %b isn't live-out at the second mov, it's valid to merge the movs together.

				BasicBlockPtr block = next_mov->parent.lock();

				if (block->isLiveOut(source->reg))
					continue;

				mov->destination = next_mov->destination;
				to_remove.insert(next_mov);
			}

			for (const InstructionPtr &instruction: to_remove)
				function.remove(instruction);
		}

		void strategy3(Function &function) {
			Timer timer("ReduceMovs[3]");
			std::unordered_set<InstructionPtr> to_remove;

			for (const InstructionPtr &instruction: function.linearInstructions) {
				if (to_remove.contains(instruction))
					continue;

				auto mov = std::dynamic_pointer_cast<Mov>(instruction);

				if (!mov)
					continue;

				auto next = std::dynamic_pointer_cast<Mov>(function.after(instruction));

				if (!next)
					continue;

				// We have two consecutive movs. We want them to be in this form:
				//   mov A, B
				//   mov B, A

				OperandPtr destination = mov->destination;
				OperandPtr source = next->source;

				if (*mov->source != *next->destination || *mov->destination != *next->source)
					continue;

				to_remove.insert(next);
			}

			for (const InstructionPtr &instruction: to_remove)
				function.remove(instruction);
		}
	}

	void reduceMovs(Function &function) {
		strategy2(function);
		strategy3(function);
	}
}
