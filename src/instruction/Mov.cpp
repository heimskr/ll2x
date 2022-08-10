#include "instruction/Mov.h"

namespace LL2X {
	std::string MovInstruction::getMnemonic() const {
		if (condition == x86_64::Condition::Unconditional)
			return "mov";
		return "cmov" + x86_64::conditionSuffix(condition);
	}

	bool MovInstruction::operator==(const MovInstruction &other) const {
		return this == &other || (size == other.size && condition == other.condition && source == other.source
			&& destination == other.destination);
	}
}
