#pragma once

namespace LL2X {
	class Function;
}

namespace LL2X::Passes {
	/** Splits basic blocks such that no basic block contains more definitions than the number of physical registers.
	 *  Returns the number of times a block was split. */
	int splitBlocks(Function &);
}
