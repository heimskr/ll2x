#pragma once

#include "compiler/x86_64.h"
#include "instruction/SizedSourceOnly.h"

namespace LL2X {
	struct Div: SizedSourceOnly {
		Div(OperandPtr source_, x86_64::Width width_):
			SizedSourceOnly(std::move(source_), width_) {}

		std::string debugExtra() override     { return makeDebug("div");  }
		std::string toString() const override { return makeString("div"); }
	};
}
