#pragma once

namespace LL2X {
	class Function;
}

namespace LL2X::Passes {
	/** Merges each terminal-free basic block with the basic block following it. */
	void mergeAllBlocks(Function &);
}
