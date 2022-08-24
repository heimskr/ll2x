#include "instruction/Pop.h"

namespace LL2X {
	std::string Pop::debugExtra() {
		return lockPrefixAnsi + "\e[1mpop" + suffix() + "\e[22m " + destination->ansiString();
	}

	std::string Pop::toString() const {
		return lockPrefix + "pop" + suffix() + ' ' + destination->toString();
	}
}
