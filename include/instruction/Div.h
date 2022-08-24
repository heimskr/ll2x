#pragma once

#include "compiler/x86_64.h"
#include "instruction/SizedSourceOnly.h"

namespace LL2X {
	struct Div: SizedSourceOnly {
		Div(OperandPtr source_, int width_):
			SizedSourceOnly(std::move(source_), width_) {}

		Div(OperandPtr source_):
			SizedSourceOnly(source_, source_->bitWidth) {}

		std::string debugExtra() override     { return makeDebug("div");  }
		std::string toString() const override { return makeString("div"); }
	};
}
