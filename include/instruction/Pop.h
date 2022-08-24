#pragma once

#include "instruction/OneDestination.h"
#include "instruction/Sized.h"
#include "instruction/TargetInstruction.h"

namespace LL2X {
	struct Pop: TargetInstruction, OneDestination, Sized  {
		Pop(OperandPtr destination_, int size_):
			OneDestination(std::move(destination_)),
			Sized(size_) {}

		Pop(OperandPtr destination_):
			OneDestination(std::move(destination_)),
			Sized(destination->bitWidth) {}

		std::string debugExtra() override;
		std::string toString() const override;

		std::vector<std::reference_wrapper<OperandPtr>> getOperands() override {
			return {std::ref(destination)};
		}
	};
}
