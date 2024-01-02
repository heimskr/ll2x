#pragma once

namespace LL2X {
	class Function;
}

namespace LL2X::Passes {
	/** Fixes mov operands if the sizes don't match. TODO!(seminar): investigate correctness. */
	void resizeMovs(Function &);
}
