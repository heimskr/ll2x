#include "compiler/Function.h"
#include "compiler/Instruction.h"
#include "compiler/LLVMInstruction.h"
#include "compiler/Program.h"
#include "instruction/Call.h"
#include "pass/LowerSelect.h"
#include "util/Timer.h"

namespace LL2X::Passes {
	size_t usePLT(Function &function) {
		Timer timer("UsePLT");
		size_t changed = 0;

		for (const InstructionPtr &instruction: function.linearInstructions) {
			auto call = std::dynamic_pointer_cast<Call>(instruction);
			if (call && call->source->isLabel() && !function.parent.functions.contains('@' + call->source->label)) {
				call->source->label += "@PLT";
				++changed;
			}
		}

		return changed;
	}

	size_t usePLT(Program &program) {
		size_t changed = 0;
		for (const auto &[name, function]: program.functions)
			changed += usePLT(*function);
		return changed;
	}
}
