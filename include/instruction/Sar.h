#pragma once

#include "instruction/Shift.h"

namespace LL2X {
	struct Sar: Shift {
		using Shift::Shift;
		std::string debugExtra() override     { return makeDebug("sar");  }
		std::string toString() const override { return makeString("sar"); }
	};
}
