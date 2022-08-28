#pragma once

#include "instruction/TwoSources.h"
#include "instruction/TargetInstruction.h"

namespace LL2X {
	struct TwoSourcesOnly: TargetInstruction, TwoSources {
		TwoSourcesOnly(OperandPtr first_source, OperandPtr second_source):
			TwoSources(std::move(first_source), std::move(second_source)) {}

		ExtractionResult extract(bool force) override;
		bool replaceRead(const VariablePtr &, const VariablePtr &) override;
		bool canReplaceRead(const VariablePtr &) const override;
		bool replaceOperand(const OperandPtr &, const OperandPtr &) override;
		bool replaceSimilarOperand(const OperandPtr &, const OperandPtr &) override;

		std::vector<std::reference_wrapper<OperandPtr>> getOperands() override {
			return {std::ref(firstSource), std::ref(secondSource)};
		}
	};
}
