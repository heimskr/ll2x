#include "instruction/Set.h"

namespace LL2X {
	Set::Set(OperandPtr destination_, x86_64::Condition condition_):
		DestinationOnly(std::move(destination_)), HasCondition(condition_) {}

	std::string Set::debugExtra() {
		return lockPrefixAnsi + "\e[1m" + getMnemonic() + "\e[22m " + destination->ansiString();
	}

	std::string Set::toString() const {
		return lockPrefix + getMnemonic() + " " + destination->toString();
	}

	std::string Set::getMnemonic() const {
		return "set" + x86_64::conditionSuffix(condition);
	}
}
