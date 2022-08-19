#include "compiler/Function.h"
#include "compiler/LLVMInstruction.h"
#include "pass/FillOperands.h"
#include "util/Timer.h"

namespace LL2X::Passes {
	void fillOperands(Function &function) {
		Timer timer("FillOperands");
		for (InstructionPtr &instruction: function.linearInstructions) {
			if (LLVMInstruction *llvm = dynamic_cast<LLVMInstruction *>(instruction.get())) {
				InstructionNode *node = llvm->node;
				if (Reader *reader = dynamic_cast<Reader *>(node))
					for (ValuePtr *value: reader->allValuePointers())
						if (value && *value && (*value)->isLocal())
							*value = OperandValue::make(OperandV(dynamic_cast<LocalValue *>(value->get())->variable));
			} else {
				
			}
		}
	}
}
