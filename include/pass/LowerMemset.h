#pragma once

#include <cstddef>

namespace LL2X {
	class Function;
}

namespace LL2X::Passes {
	/** Lowers llvm.memset.* intrinsics. */
	size_t lowerMemset(Function &);
}
