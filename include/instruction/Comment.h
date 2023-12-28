#pragma once

#include "instruction/TargetInstruction.h"

namespace LL2X {
	struct Comment: public TargetInstruction {
		std::string text;

		Comment(const std::string &text_, int index_ = -1);

		bool showDebug() const override { return false; }

		bool isComment() const override { return true; }

		std::string debugExtra() override;
		std::string toString() const override;
	};
}
