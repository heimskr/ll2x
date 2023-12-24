#include "compiler/Function.h"
#include "compiler/Instruction.h"
#include "compiler/LLVMInstruction.h"
#include "pass/IgnoreIntrinsics.h"
#include "util/Timer.h"

namespace LL2X::Passes {
	size_t ignoreIntrinsics(Function &function) {
		Timer timer("IgnoreIntrinsics");
		std::list<InstructionPtr> to_remove;

		for (InstructionPtr &instruction: function.linearInstructions) {
			auto *llvm = dynamic_cast<LLVMInstruction *>(instruction.get());
			if (llvm == nullptr || llvm->node->nodeType() != NodeType::Call)
				continue;

			auto *call = dynamic_cast<CallNode *>(llvm->node);
			if (!call->name->isGlobal())
				continue;

			auto *global_name = dynamic_cast<GlobalValue *>(call->name.get());
			if (std::string_view(*global_name->name).substr(0, 14) == "llvm.lifetime." ||
				*global_name->name == "llvm.experimental.noalias.scope.decl")
				to_remove.push_back(instruction);
		}

		for (InstructionPtr &instruction: to_remove)
			function.remove(instruction);

		return to_remove.size();
	}
}
