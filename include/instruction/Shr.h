#pragma once

#include "instruction/SizedOverlapping.h"

namespace LL2X {
	struct ShrInstruction: SizedOverlapping {
		using SizedOverlapping::SizedOverlapping;
		std::string debugExtra() override     { return makeDebug("shr");  }
		std::string toString() const override { return makeString("shr"); }
	};
}
