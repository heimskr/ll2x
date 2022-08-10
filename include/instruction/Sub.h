#pragma once

#include "instruction/SizedOverlapping.h"

namespace LL2X {
	struct Sub: SizedOverlapping {
		using SizedOverlapping::SizedOverlapping;
		std::string debugExtra() override     { return makeDebug("sub");  }
		std::string toString() const override { return makeString("sub"); }
	};
}
