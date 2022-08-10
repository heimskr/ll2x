#pragma once

#include "compiler/x86_64.h"
#include "instruction/SizedSourceOnly.h"

namespace LL2X {
	struct Idiv: SizedSourceOnly {
		Idiv(OperandPtr source_, x86_64::Width width_):
			SizedSourceOnly(std::move(source_), width_) {}

		std::string debugExtra() override     { return makeDebug("idiv");  }
		std::string toString() const override { return makeString("idiv"); }
	};
}
