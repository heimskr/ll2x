#include "instruction/SizedOverlapping.h"

namespace LL2X {
	std::string SizedOverlapping::makeDebug(const char *mnemonic) const {
		return "\e[1m" + std::string(mnemonic) + suffix() + "\e[22m " + multi.ansiString(size) + ", " +
			sourceOnly.ansiString(size);
	}

	std::string SizedOverlapping::makeString(const char *mnemonic) const {
		return std::string(mnemonic) + suffix() + " " + multi.toString(size) + ", " + sourceOnly.toString(size);
	}
}
