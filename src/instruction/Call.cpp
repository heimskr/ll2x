#include "compiler/Variable.h"
#include "instruction/Call.h"

namespace LL2X {
	std::string Call::debugExtra() {
		return "\e[1mcallq\e[22m " + std::string(source->isLabel()? "_" : "*") + source->ansiString();
	}

	std::string Call::toString() const {
		return "callq " + std::string(source->isLabel()? "_" : "*") + source->toString();
	}
}
