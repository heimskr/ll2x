#pragma once

#include <cstddef>

namespace LL2X {
	class Function;
}

namespace LL2X::Passes {
	/** Lowers atomicrmw instructions. */
	size_t lowerAtomicrmw(Function &);
}
