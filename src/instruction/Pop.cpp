#include "instruction/Pop.h"

namespace LL2X {
	std::string PopInstruction::debugExtra() {
		return std::string("\e[1mpop") + suffix() + "\e[22m " + destination->ansiString();
	}

	std::string PopInstruction::toString() const {
		return std::string("pop") + suffix() + ' ' + destination->toString();

	}
}
