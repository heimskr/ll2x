#pragma once

#include "instruction/DestinationOnly.h"
#include "instruction/HasCondition.h"

namespace LL2X {
	struct Set: DestinationOnly, HasCondition {
		Set(OperandPtr destination_, x86_64::Condition condition = x86_64::Condition::Unconditional);

		std::string debugExtra() override;
		std::string toString() const override;

		std::string getMnemonic() const;
	};
}
