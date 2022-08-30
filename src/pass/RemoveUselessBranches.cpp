#include "compiler/Function.h"
#include "compiler/Instruction.h"
#include "compiler/LLVMInstruction.h"
#include "instruction/Jmp.h"
#include "pass/RemoveUselessBranches.h"
#include "util/Timer.h"

namespace LL2X::Passes {
	void removeUselessSourceBranches(Function &function) {
		Timer timer("RemoveUselessSourceBranches");
		std::list<InstructionPtr> to_remove;
		for (auto iter = function.blocks.begin(), end = function.blocks.end(); iter != end; ++iter) {
			BasicBlockPtr &block = *iter;
			if (block->instructions.empty())
				continue;
			const InstructionPtr &back = block->instructions.back();
			if (const auto *llback = dynamic_cast<LLVMInstruction *>(back.get())) {
				if (llback->node->nodeType() == NodeType::BrUncond) {
					if (const auto *branch = dynamic_cast<BrUncondNode *>(llback->node)) {
						auto next = iter;
						++next;
						if (next != end && *(*next)->label == std::string_view(*branch->destination).substr(1))
							to_remove.push_back(back);
					} else
						throw std::runtime_error("branch is null in Function::removeUselessBranches");
				}
			}
		}

		for (const InstructionPtr &ptr: to_remove)
			function.remove(ptr);
	}

	void removeUselessTargetBranches(Function &function) {
		Timer timer("RemoveUselessTargetBranches");
		std::list<InstructionPtr> to_remove;
		for (auto iter = function.blocks.begin(), end = function.blocks.end(); iter != end; ++iter) {
			BasicBlockPtr &block = *iter;
			if (block->instructions.empty())
				continue;
			if (auto jmp = std::dynamic_pointer_cast<Jmp>(block->instructions.back())) {
				if (jmp->condition != x86_64::Condition::Unconditional)
					continue;
				auto next = iter;
				if (++next != end && function.transformLabel(*(*next)->label) == jmp->source->label)
					to_remove.push_back(jmp);
			}
		}

		for (const InstructionPtr &ptr: to_remove)
			function.remove(ptr);
	}
}
