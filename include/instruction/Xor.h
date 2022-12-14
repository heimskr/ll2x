#pragma once

#include "instruction/SizedOverlapping.h"

namespace LL2X {
	struct Xor: SizedOverlapping {
		using SizedOverlapping::SizedOverlapping;
		std::string debugExtra() override     { return makeDebug("xor");  }
		std::string toString() const override { return makeString("xor"); }
	};
}
