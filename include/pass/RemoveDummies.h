#pragma once

namespace LL2X {
	class Function;
}

namespace LL2X::Passes {
	/** Removes instructions like DummyDefiner. */
	void removeDummies(Function &);
}
