#include "compiler/Variable.h"
#include "instruction/DeferredDestinationMove.h"

namespace LL2X {
	std::string DeferredDestinationMove::debugExtra() {
		return source->ansiString() + " \e[2m->\e[22m " + destination->ansiString() + "\e[2m[\e[22m" +
			std::to_string(registerIndex) + "\e[2m]\e[22m";
	}

	std::string DeferredDestinationMove::toString() const {
		return source->toString() + " -> " + destination->toString() + "[" + std::to_string(registerIndex) +
			"] (deferred; invalid)";
	}
}
