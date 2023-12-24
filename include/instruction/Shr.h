#pragma once

#include "instruction/Shift.h"

namespace LL2X {
	struct Shr: Shift {
		using Shift::Shift;
		std::string debugExtra() override     { return makeDebug("shr");  }
		std::string toString() const override { return makeString("shr"); }
	};
}
