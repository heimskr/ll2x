#pragma once

namespace LL2X {
	class Function;
}

namespace LL2X::Passes {
	/** Fixes operand sizes based on the sizes of instructions. */
	void hackOperands(Function &);
}
