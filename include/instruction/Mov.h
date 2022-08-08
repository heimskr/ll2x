#pragma once

#include "instruction/HasCondition.h"
#include "instruction/SizedSourceToDest.h"

namespace LL2X {
	struct MovInstruction: SizedSourceToDest, HasCondition {
		MovInstruction(Operand source_, Operand destination_, x86_64::Width size_,
		               x86_64::Condition condition = x86_64::Condition::Unconditional):
			SizedSourceToDest(source_, destination_, size_), HasCondition(condition) {}

		std::string debugExtra() override     { return makeDebug(getMnemonic());  }
		std::string toString() const override { return makeString(getMnemonic()); }

		std::string getMnemonic() const;
	};
}
