#include "instruction/SizedSourceOnly.h"

namespace LL2X {
	std::string SizedSourceOnly::makeDebug(const char *mnemonic) const {
		return "\e[1m" + std::string(mnemonic) + suffix() + "\e[22m " + source->ansiString();
	}

	std::string SizedSourceOnly::makeString(const char *mnemonic) const {
		return std::string(mnemonic) + suffix() + " " + source->toString();
	}
}
