#pragma once

#include "compiler/x86_64.h"
#include "instruction/BaseDiv.h"

namespace LL2X {
	struct Idiv: BaseDiv {
		using BaseDiv::BaseDiv;
		std::string debugExtra() override     { return makeDebug("idiv");  }
		std::string toString() const override { return makeString("idiv"); }
	};
}
