#pragma once

#include "instruction/SizedOverlapping.h"

namespace LL2X {
	struct Shr: SizedOverlapping {
		using SizedOverlapping::SizedOverlapping;
		std::string debugExtra() override     { return makeDebug("shr");  }
		std::string toString() const override { return makeString("shr"); }
	};
}
