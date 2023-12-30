#pragma once

#include "compiler/x86_64.h"
#include "instruction/BaseMul.h"

namespace LL2X {
	struct Imul: BaseMul {
		using BaseMul::BaseMul;

		std::string debugExtra() override     { return makeDebug("imul");  }
		std::string toString() const override { return makeString("imul"); }
	};
}
