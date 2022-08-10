#include "instruction/Pop.h"

namespace LL2X {
	std::string Pop::debugExtra() {
		return std::string("\e[1mpop") + suffix() + "\e[22m " + destination->ansiString();
	}

	std::string Pop::toString() const {
		return std::string("pop") + suffix() + ' ' + destination->toString();

	}
}
