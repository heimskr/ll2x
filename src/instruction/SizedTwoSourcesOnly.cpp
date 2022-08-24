#include "instruction/SizedTwoSourcesOnly.h"

namespace LL2X {
	std::string SizedTwoSourcesOnly::makeDebug(const char *mnemonic, bool reverse) const {
		if (reverse)
			return lockPrefixAnsi + "\e[1m" + mnemonic + suffix() + "\e[22m " + secondSource->ansiString() + ", " +
				firstSource->ansiString();
		return lockPrefixAnsi + "\e[1m" + mnemonic + suffix() + "\e[22m " + firstSource->ansiString() + ", " +
			secondSource->ansiString();
	}

	std::string SizedTwoSourcesOnly::makeString(const char *mnemonic, bool reverse) const {
		if (reverse)
			return lockPrefix + mnemonic + suffix() + " " + secondSource->toString() + ", " + firstSource->toString();
		return lockPrefix + mnemonic + suffix() + " " + firstSource->toString() + ", " + secondSource->toString();
	}
}
