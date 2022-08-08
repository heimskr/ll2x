#pragma once

namespace LL2X {
	class Function;
}

namespace LL2X::Passes {
	/** Sets the variable fields of all local values in all instructions. */
	void fillLocalValues(Function &);
}
