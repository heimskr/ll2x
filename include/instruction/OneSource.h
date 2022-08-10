#pragma once

#include "compiler/Operand.h"

namespace LL2X {
	struct OneSource {
		OperandPtr source;
		OneSource(OperandPtr source_):
			source(std::move(source_)) {}
	};
}
