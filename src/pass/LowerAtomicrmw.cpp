#include "compiler/Function.h"
#include "compiler/Instruction.h"
#include "compiler/LLVMInstruction.h"
#include "instruction/Add.h"
#include "instruction/And.h"
#include "instruction/Mov.h"
#include "instruction/Neg.h"
#include "instruction/Or.h"
#include "instruction/Sub.h"
#include "instruction/Xor.h"
#include "pass/LowerAtomicrmw.h"
#include "util/Timer.h"
#include "util/Util.h"

namespace LL2X::Passes {
	size_t lowerAtomicrmw(Function &function) {
		Timer timer("LowerAlloca");
		std::list<InstructionPtr> to_remove;

		size_t replaced_count = 0;

		// Loop over all instructions, ignoring everything except allocas.
		for (InstructionPtr &instruction: function.linearInstructions) {
			LLVMInstruction *llvm = dynamic_cast<LLVMInstruction *>(instruction.get());

			if (!llvm || llvm->node->nodeType() != NodeType::Atomicrmw)
				continue;

			auto *atomicrmw = dynamic_cast<AtomicrmwNode *>(llvm->node);

			// First, mark the alloca instruction for removal.
			to_remove.push_back(instruction);
			++replaced_count;

			BasicBlockPtr block = llvm->parent.lock();

			const auto op = atomicrmw->op;

			// TODO: instead of copying variables, reuse them if they're not live-out.

			if (op == AtomicrmwNode::Op::Add || op == AtomicrmwNode::Op::Sub) {

			}
		}

		if (!to_remove.empty()) {
			for (InstructionPtr &instruction: to_remove)
				function.remove(instruction);
			function.reindexInstructions();
		}

		return replaced_count;
	}
}
