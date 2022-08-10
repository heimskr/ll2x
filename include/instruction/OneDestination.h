#pragma once

#include "compiler/Operand.h"

namespace LL2X {
	struct OneDestination {
		OperandPtr destination;
		OneDestination(OperandPtr destination_):
			destination(std::move(destination_)) {}
	};
}
