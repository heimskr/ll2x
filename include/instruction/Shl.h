#pragma once

#include "instruction/SizedOverlapping.h"

namespace LL2X {
	struct Shl: SizedOverlapping {
		using SizedOverlapping::SizedOverlapping;
		std::string debugExtra() override     { return makeDebug("shl");  }
		std::string toString() const override { return makeString("shl"); }
	};
}
