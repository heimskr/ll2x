#include "compiler/Function.h"
#include "instruction/Pop.h"
#include "instruction/Push.h"
#include "instruction/SourceToDest.h"
#include "pass/FixMemoryOperands.h"
#include "util/Timer.h"

namespace LL2X::Passes {
	size_t fixMemoryOperands(Function &function) {
		Timer timer("FixMemoryOperands");

		size_t num_changed = 0;

		const std::unordered_set<int> reg_choices {
			x86_64::r8,
			x86_64::r9,
			x86_64::r10,
			x86_64::r11,
			x86_64::r12,
			x86_64::r13,
			x86_64::r14,
			x86_64::r15
		};

		for (const InstructionPtr &instruction: function.linearInstructions) {
			if (auto source_to_dest = std::dynamic_pointer_cast<SourceToDest>(instruction)) {
				if (source_to_dest->source->isIndirect() && source_to_dest->destination->isIndirect()) {
					// We need to choose a temporary register, but we must make sure it's not being used in either
					// operand.

					std::unordered_set<VariablePtr> read_vars;
					std::unordered_set<VariablePtr> written_vars;

					source_to_dest->source->extract(false, read_vars, written_vars);
					source_to_dest->destination->extract(false, read_vars, written_vars);

					auto regs = reg_choices;

					for (const auto &variable: read_vars)
						for (const int reg: variable->registers)
							regs.erase(reg);

					if (regs.empty()) // Unlikely.
						throw std::runtime_error("Can't fix memory operands: register pool is depleted");

					VariablePtr temp = function.makePrecoloredVariable(*regs.begin(), instruction->parent.lock());
					function.insertBefore<Push, false>(instruction, Op8(temp));
					int size = source_to_dest->destination->bitWidth;
					if (auto sized = std::dynamic_pointer_cast<Sized>(source_to_dest))
						size = sized->size;
					temp->setType(IntType::make(size));
					auto mov = function.insertAfter<Mov, false>(instruction, OpV(temp), source_to_dest->destination,
						size);
					function.insertAfter<Pop, false>(mov, Op8(temp));
					source_to_dest->destination = OpV(temp);
					++num_changed;
				}
			}
		}

		if (0 < num_changed)
			function.reindexInstructions();

		return num_changed;
	}
}
