#pragma once

#include "instruction/SizedSourceToDest.h"

namespace LL2X {
	struct Movabs: SizedSourceToDest {
		Movabs(OperandPtr source_, OperandPtr destination_, x86_64::Width size_);
		Movabs(OperandPtr source_, OperandPtr destination_);

		std::string debugExtra() override     { return makeDebug("movabs");  }
		std::string toString() const override { return makeString("movabs"); }

		bool operator==(const Movabs &) const;
	};
}
