#pragma once

namespace LL2X {
	class Function;
}

namespace LL2X::Passes {
	/** Inserts a prologue at the beginning of the function. */
	void insertPrologue(Function &);
}
