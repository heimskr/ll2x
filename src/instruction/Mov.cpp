#include "instruction/Mov.h"

namespace LL2X {
	std::string Mov::getMnemonic() const {
		if (condition == x86_64::Condition::Unconditional)
			return "mov";
		return "cmov" + x86_64::conditionSuffix(condition);
	}

	bool Mov::operator==(const Mov &other) const {
		return this == &other || (size == other.size && condition == other.condition && source == other.source
			&& destination == other.destination);
	}
}
