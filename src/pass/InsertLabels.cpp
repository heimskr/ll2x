#include "compiler/Function.h"
#include "instruction/Label.h"
#include "pass/InsertLabels.h"
#include "util/Timer.h"

namespace LL2X::Passes {
	void insertLabels(Function &function) {
		Timer timer("InsertLabels");
		for (BasicBlockPtr &block: function.blocks) {
			auto label = std::make_shared<Label>(function.transformLabel(*block->label));
			block->instructions.push_front(label);
			label->parent = block;
		}

		function.relinearize();
	}
}
