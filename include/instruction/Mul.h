#pragma once

#include "compiler/x86_64.h"
#include "instruction/SizedSourceOnly.h"

namespace LL2X {
	struct Mul: SizedSourceOnly {
		Mul(OperandPtr source_, int width_):
			SizedSourceOnly(std::move(source_), width_) {}

		explicit Mul(const OperandPtr &source_):
			SizedSourceOnly(source_, source_->bitWidth) {}

		std::string debugExtra() override     { return makeDebug("mul");  }
		std::string toString() const override { return makeString("mul"); }
	};
}
