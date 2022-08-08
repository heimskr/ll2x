#include "instruction/Mov.h"

namespace LL2X {
	std::string MovInstruction::getMnemonic() const {
		if (condition == x86_64::Condition::Unconditional)
			return "mov";
		return "cmov" + x86_64::conditionSuffix(condition);
	}
}
