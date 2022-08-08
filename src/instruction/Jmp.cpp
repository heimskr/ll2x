#include "compiler/Variable.h"
#include "instruction/Jmp.h"

namespace LL2X {
	std::string JmpInstruction::getMnemonic() const {
		if (condition == x86_64::Condition::Unconditional)
			return "jmp";
		return "j" + x86_64::conditionSuffix(condition);
	}
}
