#include <cassert>

#include "compiler/Function.h"
#include "compiler/Instruction.h"
#include "compiler/LLVMInstruction.h"
#include "instruction/Add.h"
#include "instruction/And.h"
#include "instruction/Mov.h"
#include "instruction/Neg.h"
#include "instruction/Or.h"
#include "instruction/Sub.h"
#include "instruction/Xadd.h"
#include "instruction/Xor.h"
#include "pass/LowerAtomicrmw.h"
#include "util/Timer.h"
#include "util/Util.h"

namespace LL2X::Passes {
	size_t lowerAtomicrmw(Function &function) {
		Timer timer("LowerAtomicrmw");
		std::list<InstructionPtr> to_remove;

		size_t replaced_count = 0;

		// Loop over all instructions, ignoring everything except atomicrmws.
		for (const InstructionPtr &instruction: function.linearInstructions) {
			auto *llvm = dynamic_cast<LLVMInstruction *>(instruction.get());

			if (llvm == nullptr || llvm->node->nodeType() != NodeType::Atomicrmw)
				continue;

			auto *atomicrmw = dynamic_cast<AtomicrmwNode *>(llvm->node);

			// First, mark the atomicrmw instruction for removal.
			to_remove.push_back(instruction);
			++replaced_count;

			BasicBlockPtr block = llvm->parent.lock();

			const auto op = atomicrmw->op;

			// TODO: instead of copying variables, reuse them if they're not live-out.

			// By now, the values should be OperandValues or intlikes.

			OperandPtr reg_mem;
			OperandPtr reg_only;

			if (atomicrmw->pointer->isOperand()) {
				reg_mem = std::dynamic_pointer_cast<OperandValue>(atomicrmw->pointer)->operand;
			} else if (atomicrmw->pointer->isIntLike()) {
				reg_mem = Op4(atomicrmw->pointer->longValue());
			} else {
				error() << *atomicrmw->pointer << '\n';
				throw std::runtime_error("atomicrmw pointer should be an operand or intlike");
			}

			if (atomicrmw->value->isOperand()) {
				reg_only = std::dynamic_pointer_cast<OperandValue>(atomicrmw->value)->operand;
			} else if (atomicrmw->value->isIntLike()) {
				reg_only = Op4(atomicrmw->value->longValue());
			} else {
				error() << *atomicrmw->value << '\n';
				throw std::runtime_error("atomicrmw value should be an operand or intlike");
			}

			OperandPtr result = atomicrmw->operand;
			assert(result->isRegister());

			const bool result_used = !result->reg->getUses().empty();

			if (op == AtomicrmwNode::Op::Add || op == AtomicrmwNode::Op::Sub) {
				function.insertBefore<Mov, false>(instruction, reg_only, result);

				if (op == AtomicrmwNode::Op::Sub)
					function.insertBefore<Neg, false>(instruction, result);

				if (result_used)
					function.insertBefore<Xadd>(instruction, result, reg_mem->toDisplaced(), result->bitWidth)
						->setLock();
				else
					function.insertBefore<Add>(instruction, result, reg_mem->toDisplaced(), result->bitWidth)
						->setLock();
			} else {
				error() << atomicrmw->debugExtra() << " @ " << atomicrmw->location << '\n';
				throw std::runtime_error("Unhandled atomicrmw instruction");
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
