#pragma once

#include <cstddef>

namespace LL2X {
	class Function;
}

namespace LL2X::Passes {
	/** Lowers llvm.memcpy.* intrinsics. */
	size_t lowerMemcpy(Function &);
}
