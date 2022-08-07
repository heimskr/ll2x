#pragma once

#include "compiler/Operand.h"

namespace LL2X {
	struct OneSource {
		Operand source;
		OneSource(Operand source_):
			source(std::move(source_)) {}
	};
}
