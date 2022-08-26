#pragma once

#include "instruction/SizedTwoSourcesOnly.h"

namespace LL2X {
	struct Cmp: SizedTwoSourcesOnly  {
		using SizedTwoSourcesOnly::SizedTwoSourcesOnly;

		Cmp(OperandPtr first, OperandPtr second):
			SizedTwoSourcesOnly(first, std::move(second), first->bitWidth) {}

		std::string debugExtra() override     { return makeDebug("cmp", true);  }
		std::string toString() const override { return makeString("cmp", true); }

		bool altersFlags() const override { return true; }
	};
}
