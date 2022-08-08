#include "compiler/Function.h"
#include "pass/TrimBlocks.h"
#include "util/Timer.h"

namespace LL2X::Passes {
	void trimBlocks(Function &function) {
		Timer timer("TrimBlocks");
		std::list<BasicBlockPtr> to_remove;

		for (BasicBlockPtr &block: function.blocks) {
			if (block->preds.empty() && block != function.blocks.front()) {
				to_remove.push_back(block);
				for (BasicBlockPtr &other: function.blocks) {
					if (other != block) {
						auto found = std::find(other->preds.begin(), other->preds.end(), block->label);
						if (found != other->preds.end())
							other->preds.erase(found);
					}
				}
			}
		}

		for (BasicBlockPtr &block: to_remove)
			function.remove(block);

		function.relinearize();
	}
}
