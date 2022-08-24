#pragma once

namespace LL2X {
	class Function;
}

namespace LL2X::Passes {
	/** Turns deferred source/destination moves into regular moves after register allocation and splits large loads
	 *  to/stores from register packs into a sequence of smaller loads/stores. */
	void finishMultireg(Function &);
}
