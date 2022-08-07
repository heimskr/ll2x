#include "instruction/SizedSourceToDest.h"

namespace LL2X {
	std::string SizedSourceToDest::makeDebug(const char *mnemonic) const {
		return "\e[1m" + std::string(mnemonic) + suffix() + "\e[22m " + std::string(source) + ", " + std::string(destination);
	}

	std::string SizedSourceToDest::makeString(const char *mnemonic) const {
		return "mov" + std::string(mnemonic) + suffix() + " " + source.toString() + ", " + destination.toString();
	}
}
