#pragma once

#include <cstddef>

namespace LL2X {
	class Function;
}

namespace LL2X::Passes {
	/** Lowers llvm.memcpy.*, llvm.memmove.*, llvm.memset.* and llvm.ctlz.i64 intrinsics. */
	size_t lowerIntrinsics(Function &);
}
