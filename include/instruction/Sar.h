#pragma once

#include "instruction/SizedOverlapping.h"

namespace LL2X {
	struct SarInstruction: SizedOverlapping {
		using SizedOverlapping::SizedOverlapping;
		std::string debugExtra() override     { return makeDebug("sar");  }
		std::string toString() const override { return makeString("sar"); }
	};
}
