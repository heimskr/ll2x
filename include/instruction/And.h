#pragma once

#include "instruction/SizedOverlapping.h"

namespace LL2X {
	struct AndInstruction: SizedOverlapping {
		using SizedOverlapping::SizedOverlapping;
		std::string debugExtra() override     { return makeDebug("and");  }
		std::string toString() const override { return makeString("and"); }
	};
}
