#pragma once

#include "instruction/SizedOverlapping.h"

namespace LL2X {
	struct Or: SizedOverlapping {
		using SizedOverlapping::SizedOverlapping;
		std::string debugExtra() override     { return makeDebug("or");  }
		std::string toString() const override { return makeString("or"); }
	};
}
