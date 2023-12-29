#pragma once

#include "instruction/SizedSourceToDest.h"

namespace LL2X {
	struct Lzcnt: SizedSourceToDest {
		Lzcnt(OperandPtr source_, OperandPtr destination_, int size_);
		Lzcnt(OperandPtr source_, const OperandPtr &destination_);

		std::string debugExtra() override     { return makeDebug("lzcnt");  }
		std::string toString() const override { return makeString("lzcnt"); }

		bool operator==(const Lzcnt &) const;
	};
}
