#include "instruction/SizedTwoSourcesOnly.h"

namespace LL2X {
	std::string SizedTwoSourcesOnly::makeDebug(const char *mnemonic, bool reverse) const {
		if (reverse)
			return "\e[1m" + std::string(mnemonic) + suffix() + "\e[22m " + secondSource->ansiString() + ", " +
				firstSource->ansiString();
		return "\e[1m" + std::string(mnemonic) + suffix() + "\e[22m " + firstSource->ansiString() + ", " +
			secondSource->ansiString();
	}

	std::string SizedTwoSourcesOnly::makeString(const char *mnemonic, bool reverse) const {
		if (reverse)
			return std::string(mnemonic) + suffix() + " " + secondSource->toString() + ", " + firstSource->toString();
		return std::string(mnemonic) + suffix() + " " + firstSource->toString() + ", " + secondSource->toString();
	}
}
