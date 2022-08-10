#pragma once

#include "compiler/Operand.h"

namespace LL2X {
	struct TwoSources {
		OperandPtr firstSource;
		OperandPtr secondSource;
		TwoSources(OperandPtr first_source, OperandPtr second_source):
			firstSource(std::move(first_source)), secondSource(std::move(second_source)) {}
	};
}
