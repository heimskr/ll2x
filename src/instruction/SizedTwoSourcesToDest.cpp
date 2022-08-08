#include "instruction/SizedTwoSourcesToDest.h"

namespace LL2X {
	std::string SizedTwoSourcesToDest::makeDebug(const char *mnemonic) const {
		return "\e[1m" + std::string(mnemonic) + suffix() + "\e[22m " + std::string(firstSource) + ", " +
			std::string(secondSource) + ", " + std::string(destination);
	}

	std::string SizedTwoSourcesToDest::makeString(const char *mnemonic) const {
		return std::string(mnemonic) + suffix() + " " + firstSource.toString() + ", " + secondSource.toString() + ", " +
			destination.toString();
	}
}
