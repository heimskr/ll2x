#include "instruction/Mov.h"

namespace LL2X {
	Mov::Mov(OperandPtr source_, OperandPtr destination_, x86_64::Width size_, x86_64::Condition condition_):
		SizedSourceToDest(source_, destination_, size_), HasCondition(condition_) {}

	Mov::Mov(OperandPtr source_, OperandPtr destination_, x86_64::Condition condition_):
		SizedSourceToDest(source_, destination_, destination_->width), HasCondition(condition_) {}

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
