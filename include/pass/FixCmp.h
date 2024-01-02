#pragma once

namespace LL2X {
	class Function;
}

namespace LL2X::Passes {
	/** Fixes cmp operands. */
	void fixCmp(Function &);
}
