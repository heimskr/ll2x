#include "instruction/SizedSourceToDest.h"

namespace LL2X {
	std::string SizedSourceToDest::makeDebug(std::string_view mnemonic) const {
		return lockPrefixAnsi + "\e[1m" + std::string(mnemonic) + suffix() + "\e[22m " + source->ansiString() + ", " +
			destination->ansiString();
	}

	std::string SizedSourceToDest::makeString(std::string_view mnemonic) const {
		return lockPrefix + std::string(mnemonic) + suffix() + " " + source->toString() + ", " +
			destination->toString();
	}
}
