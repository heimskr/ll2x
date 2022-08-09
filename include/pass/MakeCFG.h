#pragma once

#include <cstddef>

namespace LL2X {
	class Function;
}

namespace LL2X::Passes {
	/** Forms the function's control-flow graph from the basic blocks. */
	CFG & makeCFG(Function &);

	/** Randomly walks through the CFG and counts executions of each basic block. */
	void walkCFG(Function &, size_t walks = 1, unsigned int seed = 0, size_t inner_limit = 1000);
}
