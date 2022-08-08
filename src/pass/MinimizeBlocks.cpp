#include "compiler/Function.h"
#include "compiler/LLVMInstruction.h"
#include "pass/MinimizeBlocks.h"
#include "util/Timer.h"

namespace LL2X::Passes {
	void minimizeBlocks(Function &function) {
		Timer timer("MinimizeBlocks");

		std::unordered_map<int, BasicBlockPtr> added_blocks;

		std::unordered_map<int, std::vector<int>> predecessors;
		// std::map<int, std::vector<int>> successors;

		// std::unordered_map<InstructionPtr, BasicBlockPtr> new_parents;
		std::unordered_map<const std::string *, const std::string *> label_replacements;

		function.reindexInstructions();

		if (INT_MAX < function.linearInstructions.size())
			warn() << "Function \e[31m" << *function.name << "\e[39m's instruction count can't fit in an integer. "
			          "You're going to have a bad time.\n";
		
		const int instruction_count = static_cast<int>(function.linearInstructions.size());

		for (InstructionPtr &instruction: function.linearInstructions) {
			const int index = instruction->index;
			if (index < 0) {
				error() << instruction->debugExtra() << '\n';
				throw std::runtime_error("Instruction has an invalid index even after reindexing");
			}

			const std::string *new_label = StringSet::intern("mini" + std::to_string(index));

			auto new_block = std::make_shared<BasicBlock>(new_label);
			added_blocks.emplace(index, new_block);
			// new_parents.emplace(instruction, new_block);

			// Emplacing won't overwrite a preexisting key's value. This is important here.
			label_replacements.emplace(instruction->parent.lock()->label, new_label);

			instruction->parent = new_block;

			const auto labels = instruction->getLabels();

			if (labels.empty()) {
				if (index < instruction_count - 1)
					predecessors[index + 1].emplace_back(index);
			} else
				for (const std::string *label: labels)
					predecessors[function.getBlock(label)->instructions.front()->index].emplace_back(index);
		}

		for (const auto &[index, block]: added_blocks) {
			for (const auto &predecessor: predecessors[index]) {
				block->preds.emplace_back(added_blocks.at(predecessor)->label);
			}
		}

		function.relinearize();
	}
}
