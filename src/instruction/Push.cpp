#include "instruction/Push.h"

namespace LL2X {
	std::string Push::debugExtra() {
		return lockPrefixAnsi + "\e[1mpush" + suffix() + "\e[22m " + source->ansiString();
	}

	std::string Push::toString() const {
		return lockPrefix + "push" + suffix() + ' ' + source->toString();
	}
}
