#pragma once

#include "instruction/SizedOverlapping.h"

namespace LL2X {
	struct ShlInstruction: SizedOverlapping {
		using SizedOverlapping::SizedOverlapping;
		std::string debugExtra() override     { return makeDebug("shl");  }
		std::string toString() const override { return makeString("shl"); }
	};
}
