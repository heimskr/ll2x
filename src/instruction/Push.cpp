#include "instruction/Push.h"

namespace LL2X {
	std::string Push::debugExtra() {
		return std::string("\e[1mpush") + suffix() + "\e[22m " + source->ansiString();
	}

	std::string Push::toString() const {
		return std::string("push") + suffix() + ' ' + source->toString();
	}
}
