#pragma once

namespace LL2X {
	class Function;
}

namespace LL2X::Passes {
	/** Removes certain intrinsics, including @llvm.lifetime.*. */
	int ignoreIntrinsics(Function &);
}
