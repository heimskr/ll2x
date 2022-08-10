#pragma once

#include "instruction/SizedOverlapping.h"

namespace LL2X {
	struct XorInstruction: SizedOverlapping {
		using SizedOverlapping::SizedOverlapping;
		std::string debugExtra() override     { return makeDebug("xor");  }
		std::string toString() const override { return makeString("xor"); }
	};
}
