#pragma once

#include "instruction/OneSource.h"
#include "instruction/TargetInstruction.h"

namespace LL2X {
	struct SourceOnly: TargetInstruction, OneSource {
		SourceOnly(OperandPtr source_):
			OneSource(std::move(source_)) {}

		ExtractionResult extract(bool force) override;
		bool replaceRead(const VariablePtr &, const VariablePtr &) override;
		bool canReplaceRead(const VariablePtr &) const override;
		bool replaceOperand(const OperandPtr &, const OperandPtr &) override;
		bool replaceSimilarOperand(const OperandPtr &, const OperandPtr &) override;

		std::vector<std::reference_wrapper<OperandPtr>> getOperands() override {
			return {std::ref(source)};
		}
	};
}
