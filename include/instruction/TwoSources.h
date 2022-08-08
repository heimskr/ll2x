#pragma once

#include "compiler/Operand.h"

namespace LL2X {
	struct TwoSources {
		Operand firstSource;
		Operand secondSource;
		TwoSources(Operand first, Operand second):
			firstSource(std::move(first)), secondSource(std::move(second)) {}
	};
}
