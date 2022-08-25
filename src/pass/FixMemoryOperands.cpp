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

		for (const InstructionPtr &instruction: function.linearInstructions) {
			if (auto source_to_dest = std::dynamic_pointer_cast<SourceToDest>(instruction)) {
				if (source_to_dest->source->isIndirect() && source_to_dest->destination->isIndirect()) {
					function.insertBefore<Push, false>(instruction, Op8(function.pcRax));
					VariablePtr rax = function.makePrecoloredVariable(x86_64::rax, instruction->parent.lock());
					rax->setType(IntType::make(source_to_dest->destination->bitWidth));
					auto mov = function.insertAfter<Mov, false>(instruction, OpV(rax), source_to_dest->destination);
					function.insertAfter<Pop, false>(mov, Op8(function.pcRax));
					source_to_dest->destination = OpV(rax);
					++num_changed;
				}
			}
		}

		if (0 < num_changed)
			function.reindexInstructions();

		return num_changed;
	}
}
