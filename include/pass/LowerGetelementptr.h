#pragma once

namespace LL2X {
	class Function;
}

namespace LL2X::Passes {
	/** Lowers getelementptr instructions. */
	int lowerGetelementptr(Function &);
}
