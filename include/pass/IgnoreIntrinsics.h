#pragma once

namespace LL2X {
	class Function;
}

namespace LL2X::Passes {
	/** Removes certain intrinsics, including @llvm.lifetime.*. */
	size_t ignoreIntrinsics(Function &);
}
