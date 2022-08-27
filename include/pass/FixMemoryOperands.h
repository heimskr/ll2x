#pragma once

#include <cstddef>

namespace LL2X {
	class Function;
}

namespace LL2X::Passes {
	/** Sometimes, due to spilling, we can end up with an instruction like "movq (%rax), -40(%rbp)". In all the x86_64
	 *  instructions I've seen, there can be at most one memory operand. This pass finds certain instructions with
	 *  multiple memory operands and splits them up. */
	size_t fixMemoryOperands(Function &);
}
