#pragma once

#include <cstddef>

namespace LL2X {
	class Function;
}

namespace LL2X::Passes {
	/** Replaces ret instructions with epilogues and corresponding x86_64 instructions. */
	size_t lowerRet(Function &);
}
