#pragma once

namespace LL2X {
	class Function;
}

namespace LL2X::Passes {
	/** Removes all LLVM unconditional branch instructions that redundantly jump to the immediately following blocks. */
	void removeUselessSourceBranches(Function &);

	/** Removes all x86_64 unconditional branch instructions that redundantly jump to the immediately following
	 *  blocks. */
	void removeUselessTargetBranches(Function &);
}
