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
						if (value && *value && (*value)->isLocal()) {
							info() << llvm->debugExtra() << '\n';
							info() << "value->get() == " << value->get() << '\n';
							auto *cast = dynamic_cast<LocalValue *>(value->get());
							info() << "(LocalValue *) value->get() == " << cast << '\n';
							info() << "value->variable.get() == " << cast->variable.get() << '\n';
							info() << "*value->name == \"" << *cast->name << "\"\n";
							*value = OperandValue::make(OperandV(dynamic_cast<LocalValue *>(value->get())->variable));
						}
			} else {

			}
		}
	}
}
