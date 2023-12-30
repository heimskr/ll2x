#pragma once

#include "compiler/x86_64.h"
#include "instruction/BaseDiv.h"

namespace LL2X {
	struct Div: BaseDiv {
		using BaseDiv::BaseDiv;
		std::string debugExtra() override     { return makeDebug("div");  }
		std::string toString() const override { return makeString("div"); }
	};
}
