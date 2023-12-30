#pragma once

namespace LL2X {
	class Function;
}

namespace LL2X::Passes {
	/** Replaces getelementptr operands. */
	void lowerGetelementptrValues(Function &);
}
