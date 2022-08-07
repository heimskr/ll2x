#include "instruction/Push.h"

namespace LL2X {
	std::string PushInstruction::debugExtra() {
		return std::string("\e[1mpush") + suffix() + "\e[22m " + std::string(source);
	}

	std::string PushInstruction::toString() const {
		return std::string("push") + suffix() + ' ' + source.toString();
	}
}
