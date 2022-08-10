#pragma once

#include "compiler/x86_64.h"
#include "instruction/SizedSourceOnly.h"

namespace LL2X {
	struct Imul: SizedSourceOnly {
		Imul(OperandPtr source_, x86_64::Width width_):
			SizedSourceOnly(std::move(source_), width_) {}

		std::string debugExtra() override     { return makeDebug("imul");  }
		std::string toString() const override { return makeString("imul"); }
	};
}
