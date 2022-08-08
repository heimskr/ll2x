#pragma once

namespace LL2X {
	class Function;
}

namespace LL2X::Passes {
	/** Inserts label "instructions" at the beginning of every block in the function. */
	void insertLabels(Function &);
}
