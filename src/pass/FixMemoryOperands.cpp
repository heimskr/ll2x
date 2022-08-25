#include "compiler/Function.h"
#include "instruction/SourceToDest.h"
#include "pass/FixMemoryOperands.h"
#include "util/Timer.h"

namespace LL2X::Passes {
	size_t fixMemoryOperands(Function &function) {
		Timer timer("FixMemoryOperands");

		size_t num_changed = 0;

		for (const InstructionPtr &instruction: function.linearInstructions) {
			if (auto source_to_dest = std::dynamic_pointer_cast<SourceToDest>(instruction)) {
				if (source_to_dest->source->isIndirect() && source_to_dest->destination->isIndirect()) {
					VariablePtr temp = function.newVariable(IntType::make(source_to_dest->destination->bitWidth), 
						instruction->parent.lock());
					function.insertAfter<Mov, false>(instruction, OpV(temp), source_to_dest->destination);
					source_to_dest->destination = OpV(temp);
					++num_changed;
				}
			}
		}

		if (0 < num_changed) {
			function.reindexInstructions();
			function.resetRegisters(false);
			function.allocateRegisters();
		}

		return num_changed;
	}
}
