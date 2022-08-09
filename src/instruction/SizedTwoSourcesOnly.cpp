#include "instruction/SizedTwoSourcesOnly.h"

namespace LL2X {
	std::string SizedTwoSourcesOnly::makeDebug(const char *mnemonic) const {
		return "\e[1m" + std::string(mnemonic) + suffix() + "\e[22m " + firstSource.ansiString() + ", " +
			secondSource.ansiString();
	}

	std::string SizedTwoSourcesOnly::makeString(const char *mnemonic) const {
		return std::string(mnemonic) + suffix() + " " + firstSource.toString() + ", " + secondSource.toString();
	}
}
