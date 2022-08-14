#pragma once

#include "instruction/TargetInstruction.h"

namespace LL2X {
	struct Ret: TargetInstruction {
		using TargetInstruction::TargetInstruction;

		std::string debugExtra() override;
		std::string toString() const override;
	};
}
