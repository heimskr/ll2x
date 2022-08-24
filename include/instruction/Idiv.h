#pragma once

#include "compiler/x86_64.h"
#include "instruction/SizedSourceOnly.h"

namespace LL2X {
	struct Idiv: SizedSourceOnly {
		Idiv(OperandPtr source_, int width_):
			SizedSourceOnly(std::move(source_), width_) {}

		Idiv(OperandPtr source_):
			SizedSourceOnly(source_, source_->bitWidth) {}

		std::string debugExtra() override     { return makeDebug("idiv");  }
		std::string toString() const override { return makeString("idiv"); }
	};
}
