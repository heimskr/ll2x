#pragma once

#include "compiler/Operand.h"

namespace LL2X {
	struct TwoSources {
		Operand firstSource;
		Operand secondSource;
		TwoSources(Operand first_source, Operand second_source):
			firstSource(std::move(first_source)), secondSource(std::move(second_source)) {}
	};
}
