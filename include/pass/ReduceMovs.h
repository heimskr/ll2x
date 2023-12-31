#pragma once

namespace LL2X {
	class Function;
}

namespace LL2X::Passes {
	/** Attempts to reduce mov instructions and variable counts. */
	void reduceMovs(Function &);
}
