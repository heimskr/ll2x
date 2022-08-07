#include "instruction/Cmp.h"

namespace LL2X {
	std::string CmpInstruction::debugExtra() {
		return std::string("\e[1mcmp") + suffix() + "\e[22m " + std::string(source);
	}

	std::string CmpInstruction::toString() const {
		return std::string("cmp") + suffix() + ' ' + source.toString();
	}
}
