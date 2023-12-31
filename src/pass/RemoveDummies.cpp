#include "compiler/Function.h"
#include "compiler/Instruction.h"
#include "compiler/LLVMInstruction.h"
#include "instruction/Jmp.h"
#include "pass/RemoveDummies.h"
#include "util/Timer.h"

namespace LL2X::Passes {
	void removeDummies(Function &function) {
		Timer timer("RemoveDummies");
		std::list<InstructionPtr> to_remove;

		for (const InstructionPtr &instruction: function.linearInstructions) {
			if (instruction->isDummy())
				to_remove.push_back(instruction);
		}

		for (const InstructionPtr &instruction: to_remove)
			function.remove(instruction);
	}
}
