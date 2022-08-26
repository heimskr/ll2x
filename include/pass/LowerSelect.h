#pragma once

#include <cstddef>

namespace LL2X {
	class Function;
}

namespace LL2X::Passes {
	/** Lowers the select instruction. */
	size_t lowerSelect(Function &);
}
