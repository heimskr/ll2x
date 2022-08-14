#pragma once

#include "instruction/SizedSourceToDest.h"

namespace LL2X {
	struct Lea: SizedSourceToDest {
		Lea(OperandPtr source_, OperandPtr destination_, x86_64::Width size_);
		Lea(OperandPtr source_, OperandPtr destination_);

		std::string debugExtra() override     { return makeDebug("lea");  }
		std::string toString() const override { return makeString("lea"); }

		bool operator==(const Lea &) const;
	};
}
