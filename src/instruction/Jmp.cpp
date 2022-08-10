#include "compiler/Variable.h"
#include "instruction/Jmp.h"

namespace LL2X {
	std::string JmpInstruction::debugExtra() {
		return "\e[1m" + getMnemonic() + "\e[22m " + source->ansiString();
	}

	std::string JmpInstruction::toString() const {
		return getMnemonic() + ' ' + source->toString();
	}

	std::string JmpInstruction::getMnemonic() const {
		if (condition == x86_64::Condition::Unconditional)
			return "jmp";
		return "j" + x86_64::conditionSuffix(condition);
	}
}
