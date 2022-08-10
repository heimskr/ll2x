#pragma once

#include "instruction/SizedOverlapping.h"

namespace LL2X {
	struct Add: SizedOverlapping {
		using SizedOverlapping::SizedOverlapping;
		std::string debugExtra() override     { return makeDebug("add");  }
		std::string toString() const override { return makeString("add"); }
	};
}
