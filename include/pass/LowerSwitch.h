#pragma once

namespace LL2X {
	class Function;
}

namespace LL2X::Passes {
	/** Lowers the switch instruction. */
	size_t lowerSwitch(Function &);
}
