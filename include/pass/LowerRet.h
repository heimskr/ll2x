#pragma once

namespace LL2X {
	class Function;
}

namespace LL2X::Passes {
	/** Replaces ret instructions with epilogues and corresponding Why instructions. */
	size_t lowerRet(Function &);
}
