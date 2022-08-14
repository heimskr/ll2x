#include "compiler/Variable.h"
#include "instruction/Ret.h"

namespace LL2X {
	std::string Ret::debugExtra() {
		return "\e[1mretq\e[22m";
	}

	std::string Ret::toString() const {
		return "retq";
	}
}
