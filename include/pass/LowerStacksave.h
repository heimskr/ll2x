#pragma once

namespace LL2X {
	class Function;
}

namespace LL2X::Passes {
	/** Lowers calls to the llvm intrinsic llvm.stacksave to instructions that save the stack pointer to a variable. */
	size_t lowerStacksave(Function &);
}
