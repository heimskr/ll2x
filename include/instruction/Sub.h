#pragma once

#include "instruction/SizedTwoSourcesToDest.h"

namespace LL2X {
	struct SubInstruction: SizedTwoSourcesToDest {
		using SizedTwoSourcesToDest::SizedTwoSourcesToDest;
		std::string debugExtra() override     { return makeDebug("sub");  }
		std::string toString() const override { return makeString("sub"); }
	};
}
