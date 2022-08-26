#pragma once

#include <cstddef>

namespace LL2X {
	class Function;
}

namespace LL2X::Passes {
	/** cmov supposedly hasn't been optimal for a while because accurate branch prediction makes jmp+mov faster.
	 *  This also solves the issue of 8-bit operands not being supported in cmov. */
	size_t replaceCmov(Function &);
}
