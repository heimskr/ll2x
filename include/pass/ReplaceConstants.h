#pragma once

namespace LL2X {
	class Function;
}

namespace LL2X::Passes {
	/** Goes over all instructions and computes constant expressions and places the results in a variable. */
	void replaceConstants(Function &);
}
