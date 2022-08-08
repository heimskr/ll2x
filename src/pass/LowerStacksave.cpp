#include <iostream>

#include "compiler/Function.h"
#include "compiler/Instruction.h"
#include "compiler/LLVMInstruction.h"
#include "instruction/Mov.h"
#include "pass/LowerStacksave.h"
#include "util/Timer.h"

namespace LL2X::Passes {
	void lowerStacksave(Function &function) {
		Timer timer("LowerStacksave");
		std::list<InstructionPtr> to_remove;

		for (InstructionPtr &instruction: function.linearInstructions) {
			LLVMInstruction *llvm = dynamic_cast<LLVMInstruction *>(instruction.get());
			if (!llvm || llvm->node->nodeType() != NodeType::Call)
				continue;
			CallNode *call = dynamic_cast<CallNode *>(llvm->node);
			if (!call->name->isGlobal())
				continue;
			if (*dynamic_cast<GlobalValue *>(call->name.get())->name == "llvm.stacksave") {
				auto mov = std::make_shared<MovInstruction>(function.stackPointer(instruction),
					function.getVariable(*call->result), x86_64::Width::Eight);
				function.insertBefore(instruction, mov)->setDebug(llvm)->extract();
				to_remove.push_back(instruction);
			}
		}

		for (InstructionPtr &instruction: to_remove)
			function.remove(instruction);
	}
}
