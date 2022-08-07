#pragma once

#include "instruction/TargetInstruction.h"

namespace LL2X {
	struct Label: public TargetInstruction {
		std::string name;

		Label(const std::string &name_, int index_ = -1);

		std::string debugExtra() override;
		std::string toString() const override;
		bool showDebug() const override { return false; }
	};
}
