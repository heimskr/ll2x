#include "compiler/Function.h"
#include "compiler/LLVMInstruction.h"
#include "pass/MakeCFG.h"
#include "pass/MinimizeBlocks.h"
#include "util/Timer.h"

namespace LL2X::Passes {
	void minimizeBlocks(Function &function, bool remake_cfg) {
		Timer timer("MinimizeBlocks");

		std::map<int64_t, BasicBlockPtr> added_blocks;
		std::unordered_map<int64_t, std::vector<int64_t>> predecessors;
		std::unordered_map<const std::string *, const std::string *> label_replacements;

		function.reindexInstructions();

		if (INT64_MAX < function.linearInstructions.size())
			warn() << "Function \e[31m" << *function.name << "\e[39m's instruction count can't fit in an int64_t. "
			          "You'll get bad code in a few billion years, most likely.\n";
		
		const int64_t instruction_count = static_cast<int64_t>(function.linearInstructions.size());

		for (const InstructionPtr &instruction: function.linearInstructions) {
			const int64_t index = instruction->index;
			if (index < 0) {
				error() << instruction->debugExtra() << '\n';
				throw std::runtime_error("Instruction has an invalid index even after reindexing");
			}

			const std::string *new_label = StringSet::intern("M" + std::to_string(index));

			auto new_block = std::make_shared<BasicBlock>(new_label);
			new_block->parent = &function;
			added_blocks.emplace(index, new_block);

			// Emplacing won't overwrite a preexisting key's value. This is important here.
			label_replacements.emplace(instruction->parent.lock()->label, new_label);

			new_block->instructions.emplace_back(instruction);
			instruction->parent = new_block;

			const auto labels = instruction->getLabels();

			if (labels.empty()) {
				if (index < instruction_count - 1)
					predecessors[index + 1].emplace_back(index);
			} else {
				if (instruction->canFallThrough())
					predecessors[index + 1].emplace_back(index);
				for (const std::string *label: labels)
					predecessors[function.getBlock(label)->instructions.front()->index].emplace_back(index);
			}
		}

		function.bbLabels.clear();
		function.bbMap.clear();
		function.blocks.clear();
		function.blocksAreMinimized = true;

		for (const auto &[index, block]: added_blocks) {
			function.bbLabels.insert(block->label);
			function.bbMap.emplace(block->label, block);
			for (const auto &predecessor: predecessors[index])
				block->preds.emplace_back(added_blocks.at(predecessor)->label);
			function.blocks.emplace_back(block);
		}

		Timer replacement_timer("ReplaceLabels");
		for (const InstructionPtr &instruction: function.linearInstructions)
			if (instruction->holdsLabels())
				// There's definitely a faster way to do this.
				// The use of syntactically invalid block names earlier prevents the sort of weirdness that occurs in,
				// say, "abc".replace(a => b).replace(b => c) being different from "abc".replace(b => c / a => b).
				// Except we're not doing that anymore, so we just have to hope the aforementioned weirdness doesn't
				// ever happen.
				for (const auto &[old_label, new_label]: label_replacements) {
					instruction->replaceLabel(old_label, new_label);
					instruction->replaceLabel(StringSet::intern("%" + *old_label), StringSet::intern("%" + *new_label));
				}
		replacement_timer.stop();

		if (remake_cfg)
			try {
				Passes::makeCFG(function);
			} catch (const std::runtime_error &) {
				function.debug();
				throw;
			}
	}
}
