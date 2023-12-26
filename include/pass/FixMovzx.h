#pragma once

#include <cstddef>

namespace LL2X {
	class Function;
}

namespace LL2X::Passes {
	/** Replaces movzx instructions with identical operand widths with equivalent mov instructions. */
	size_t fixMovzx(Function &);
}
