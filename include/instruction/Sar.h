#pragma once

#include "instruction/SizedOverlapping.h"

namespace LL2X {
	struct Sar: SizedOverlapping {
		using SizedOverlapping::SizedOverlapping;
		std::string debugExtra() override     { return makeDebug("sar");  }
		std::string toString() const override { return makeString("sar"); }
	};
}
