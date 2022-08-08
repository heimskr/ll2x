#pragma once

#include "instruction/SizedTwoSourcesToDest.h"

namespace LL2X {
	struct AddInstruction: SizedTwoSourcesToDest {
		using SizedTwoSourcesToDest::SizedTwoSourcesToDest;
		std::string debugExtra() override     { return makeDebug("add");  }
		std::string toString() const override { return makeString("add"); }
	};
}
