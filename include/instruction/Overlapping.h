#pragma once

#include "instruction/OneDestination.h"
#include "instruction/OneSource.h"
#include "instruction/TargetInstruction.h"

namespace LL2X {
	struct Overlapping: TargetInstruction {
		OperandPtr multi;
		OperandPtr sourceOnly;

		Overlapping(OperandPtr source_only, OperandPtr multi_):
			multi(std::move(multi_)), sourceOnly(std::move(source_only)) {}

		ExtractionResult extract(bool force) override;
		bool replaceRead(const VariablePtr &, const VariablePtr &) override;
		bool canReplaceRead(const VariablePtr &) const override;
		bool replaceWritten(const VariablePtr &, const VariablePtr &) override;
		bool canReplaceWritten(const VariablePtr &) const override;
		bool replaceOperand(const OperandPtr &, const OperandPtr &) override;
		bool replaceSimilarOperand(const OperandPtr &, const OperandPtr &) override;

		std::vector<std::reference_wrapper<OperandPtr>> getOperands() override {
			return {std::ref(sourceOnly), std::ref(multi)};
		}
	};
}
