#include <iostream>

#include "compiler/Function.h"
#include "compiler/Instruction.h"
#include "compiler/LLVMInstruction.h"
#include "instruction/Mov.h"
#include "pass/LowerStacksave.h"
#include "util/Timer.h"

namespace LL2X::Passes {
	size_t lowerStacksave(Function &function) {
		Timer timer("LowerStacksave");
		std::list<InstructionPtr> to_remove;

		for (const InstructionPtr &instruction: function.linearInstructions) {
			auto *llvm = dynamic_cast<LLVMInstruction *>(instruction.get());
			if (llvm == nullptr || llvm->node->nodeType() != NodeType::Call)
				continue;
			auto *call = dynamic_cast<CallNode *>(llvm->node);
			if (!call->name->isGlobal())
				continue;
			if (*dynamic_cast<GlobalValue *>(call->name.get())->name == "llvm.stacksave") {
				function.insertBefore<Mov>(instruction, Op8(function.pcRsp), Op8(function.getVariable(*call->result)));
				to_remove.push_back(instruction);
			}
		}

		for (const InstructionPtr &instruction: to_remove)
			function.remove(instruction);

		return to_remove.size();
	}
}
