#pragma once

namespace LL2X {
	class Function;
}

namespace LL2X::Passes {
	/** Removes all branch instructions that redundantly jump to the immediately following blocks. */
	void removeUselessBranches(Function &);
}
