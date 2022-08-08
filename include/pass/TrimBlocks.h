#pragma once

namespace LL2X {
	class Function;
}

namespace LL2X::Passes {
	/** Removes basic blocks that have no predecessors. This shouldn't cause any problems. */
	void trimBlocks(Function &);
}
