#pragma once

namespace LL2X {
	class Function;
}

namespace LL2X::Passes {
	/** Replaces global temporary types with the proper types in all variables. */
	void replaceGlobalTemporaries(Function &);
}
