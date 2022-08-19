#pragma once

namespace LL2X {
	class Function;
}

namespace LL2X::Passes {
	/** Replaces LocalValues with OperandValues. */
	void fillOperands(Function &);
}
