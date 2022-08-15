#pragma once

namespace LL2X {
	class Function;
}

// TODO: find allocas that are executed only once per function invocation and addToStack-ify them.

namespace LL2X::Passes {
	/** Replaces alloca instructions with instructions that set the result variables to the assigned addresses.
	 *  Returns the number of alloca instructions that were replaced. Must not be called before variable assignment. */
	int lowerAlloca(Function &);
}
