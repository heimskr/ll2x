#pragma once

#include <cstddef>

namespace LL2X {
	class Function;
}

namespace LL2X::Passes {
	/** Fixes large (> 32 bits) constants in various instruction types. Must be done before register allocation. */
	size_t fixBigConstants(Function &);
}
