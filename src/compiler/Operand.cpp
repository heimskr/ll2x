#include "compiler/Operand.h"
#include "compiler/Variable.h"

namespace LL2X {
	Operand::operator std::string() const {
		if (isVariable())
			return *getVariable();
		return "\e[32m$" + std::to_string(getNumber()) + "\e[39m";
	}

	std::string Operand::toString() const {
		if (isVariable())
			return getVariable()->toString();
		return "$" + std::to_string(getNumber());
	}
}
