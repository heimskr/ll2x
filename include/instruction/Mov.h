#pragma once

#include "instruction/SizedSourceToDest.h"

namespace LL2X {
	struct MovInstruction: SizedSourceToDest {
		using SizedSourceToDest::SizedSourceToDest;
		std::string debugExtra() override     { return makeDebug("mov");  }
		std::string toString() const override { return makeString("mov"); }
	};
}
