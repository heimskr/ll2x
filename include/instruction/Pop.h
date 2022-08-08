#pragma once

#include "instruction/OneDestination.h"
#include "instruction/Sized.h"
#include "instruction/TargetInstruction.h"

namespace LL2X {
	struct PopInstruction: TargetInstruction, OneDestination, Sized  {
		PopInstruction(Operand destination_, x86_64::Width size_):
			OneDestination(std::move(destination_)),
			Sized(size_) {}

		std::string debugExtra() override;
		std::string toString() const override;
	};
}
