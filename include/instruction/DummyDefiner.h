#pragma once

#include "instruction/DestinationOnly.h"

namespace LL2X {
	struct DummyDefiner: DestinationOnly {
		DummyDefiner(OperandPtr destination_);

		std::string debugExtra() override;
		std::string toString() const override;
		bool isDummy() const override { return true; }

		bool operator==(const DummyDefiner &) const;
	};
}
