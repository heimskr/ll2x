#pragma once

#include "instruction/Shift.h"

namespace LL2X {
	struct Shl: Shift {
		using Shift::Shift;
		std::string debugExtra() override     { return makeDebug("shl");  }
		std::string toString() const override { return makeString("shl"); }
	};
}
