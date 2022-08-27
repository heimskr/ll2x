#pragma once

#include <cstddef>

namespace LL2X {
	class Function;
}

namespace LL2X::Passes {
	/** Replaces movs of large constants with movabs. Can be done after register allocation. */
	size_t replaceBigMov(Function &);
}
