#pragma once

#include <cstddef>

namespace LL2X {
	class Function;
}

namespace LL2X::Passes {
	/** Lowers llvm.memmove.* intrinsics. */
	size_t lowerMemmove(Function &);
}
