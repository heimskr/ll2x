#include "compiler/Variable.h"
#include "instruction/DeferredSourceMove.h"

namespace LL2X {
	std::string DeferredSourceMove::debugExtra() {
		return lockPrefixAnsi + source->ansiString() + "\e[2m[\e[22m" + std::to_string(registerIndex) +
			"\e[2m] ->\e[22m " + destination->ansiString();
	}

	std::string DeferredSourceMove::toString() const {
		return lockPrefix + source->toString() + "[" + std::to_string(registerIndex) + "] -> " + destination->toString()
			+ " (deferred; invalid)";
	}
}
