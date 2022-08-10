#pragma once

#include "instruction/SizedTwoSourcesOnly.h"

namespace LL2X {
	struct Cmp: SizedTwoSourcesOnly  {
		using SizedTwoSourcesOnly::SizedTwoSourcesOnly;

		std::string debugExtra() override     { return makeDebug("cmp");  }
		std::string toString() const override { return makeString("cmp"); }

		bool altersFlags() const override { return true; }
	};
}
