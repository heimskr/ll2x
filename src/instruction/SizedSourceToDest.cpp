#include "instruction/SizedSourceToDest.h"

namespace LL2X {
	std::string SizedSourceToDest::makeDebug(const char *mnemonic) const {
		return "\e[1m" + std::string(mnemonic) + suffix() + "\e[22m " + source.ansiString(size) + ", " +
			destination.ansiString(size);
	}

	std::string SizedSourceToDest::makeString(const char *mnemonic) const {
		return std::string(mnemonic) + suffix() + " " + source.toString(size) + ", " + destination.toString(size);
	}
}
