#include "compiler/Variable.h"
#include "instruction/Jmp.h"

namespace LL2X {
	std::string Jmp::debugExtra() {
		return lockPrefixAnsi + "\e[1m" + getMnemonic() + "\e[22m " + (source->isRegister()? "*" : "") +
			source->ansiString();
	}

	std::string Jmp::toString() const {
		return lockPrefix + getMnemonic() + ' ' + (source->isRegister()? "*" : "") + source->toString();
	}

	std::string Jmp::getMnemonic() const {
		if (condition == x86_64::Condition::Unconditional)
			return "jmp";
		return "j" + x86_64::conditionSuffix(condition);
	}
}
