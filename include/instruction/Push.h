#pragma once

#include "instruction/OneSource.h"
#include "instruction/Sized.h"
#include "instruction/TargetInstruction.h"

namespace LL2X {
	struct Push: TargetInstruction, OneSource, Sized {
		Push(OperandPtr source_, x86_64::Width size_):
			OneSource(std::move(source_)),
			Sized(size_) {}

		Push(OperandPtr source_):
			OneSource(std::move(source_)),
			Sized(source->width) {}

		std::string debugExtra() override;
		std::string toString() const override;

		std::vector<std::reference_wrapper<OperandPtr>> getOperands() override {
			return {std::ref(source)};
		}
	};
}
