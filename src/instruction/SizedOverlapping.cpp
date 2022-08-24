#include "instruction/SizedOverlapping.h"

namespace LL2X {
	std::string SizedOverlapping::makeDebug(const char *mnemonic) const {
		return lockPrefixAnsi + "\e[1m" + std::string(mnemonic) + suffix() + "\e[22m " + sourceOnly->ansiString() + ", "
			+ multi->ansiString();
	}

	std::string SizedOverlapping::makeString(const char *mnemonic) const {
		return lockPrefix + std::string(mnemonic) + suffix() + " " + sourceOnly->toString() + ", " + multi->toString();
	}
}
