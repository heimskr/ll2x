#pragma once

namespace LL2X {
	class Function;
}

namespace LL2X::Passes {
	/** Recomputes basic blocks such that each basic block contains exactly one instruction. Useful before liveness
	 *  analysis. */
	void minimizeBlocks(Function &);
}
