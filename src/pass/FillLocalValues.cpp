#include "compiler/Function.h"
#include "compiler/LLVMInstruction.h"
#include "pass/FillLocalValues.h"
#include "util/Timer.h"

namespace LL2X::Passes {
	void fillLocalValues(Function &function) {
		Timer timer("FillLocalValues");
		for (InstructionPtr &instruction: function.linearInstructions) {
			auto *llvm = dynamic_cast<LLVMInstruction *>(instruction.get());
			if (llvm == nullptr)
				continue;

			InstructionNode *node = llvm->node;
			if (auto *reader = dynamic_cast<Reader *>(node))
				for (const std::shared_ptr<LocalValue> &value: reader->allLocals())
					value->variable = function.getVariable(*value->name);

			if (auto *writer = dynamic_cast<Writer *>(node))
				if (writer->result != nullptr)
					writer->operand = OpV(function.getVariable(*writer->result));
		}
	}
}
