#pragma once

#include "instruction/HasCondition.h"
#include "instruction/SizedSourceToDest.h"

namespace LL2X {
	struct Mov: SizedSourceToDest, HasCondition {
		Mov(OperandPtr source_, OperandPtr destination_, int size_,
			x86_64::Condition condition = x86_64::Condition::Unconditional);

		Mov(OperandPtr source_, OperandPtr destination_,
			x86_64::Condition condition = x86_64::Condition::Unconditional);

		std::string debugExtra() override     { return makeDebug(getMnemonic());  }
		std::string toString() const override { return makeString(getMnemonic()); }

		std::string getMnemonic() const;

		bool operator==(const Mov &) const;
	};
}
