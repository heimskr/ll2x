#include "instruction/SizedDestinationOnly.h"

namespace LL2X {
	std::string SizedDestinationOnly::makeDebug(const char *mnemonic) const {
		return lockPrefixAnsi + "\e[1m" + std::string(mnemonic) + suffix() + "\e[22m " + destination->ansiString();
	}

	std::string SizedDestinationOnly::makeString(const char *mnemonic) const {
		return lockPrefix + std::string(mnemonic) + suffix() + " " + destination->toString();
	}
}
