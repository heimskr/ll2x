#pragma once

#include <cstddef>

namespace LL2X {
	class Function;
	class Program;
}

namespace LL2X::Passes {
	/** Adds @PLT to calls to functions outside the program. */
	size_t usePLT(Function &);

	/** Runs UsePLT on all functions in the program. */
	size_t usePLT(Program &);
}
