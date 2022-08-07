#pragma once

#include "compiler/Operand.h"

namespace LL2X {
	struct OneDestination {
		Operand destination;
		OneDestination(Operand destination_):
			destination(std::move(destination_)) {}
	};
}
