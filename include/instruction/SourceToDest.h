#pragma once

#include "instruction/OneSource.h"
#include "instruction/OneDestination.h"
#include "instruction/TargetInstruction.h"

namespace LL2X {
	struct SourceToDest: TargetInstruction, OneSource, OneDestination {
		SourceToDest(OperandPtr source_, OperandPtr destination_):
			OneSource(std::move(source_)), OneDestination(std::move(destination_)) {}

		ExtractionResult extract(bool force = false) override;
		bool replaceRead(const VariablePtr &, const VariablePtr &) override;
		bool canReplaceRead(const VariablePtr &) const override;
		bool replaceWritten(const VariablePtr &, const VariablePtr &) override;
		bool canReplaceWritten(const VariablePtr &) const override;
		bool replaceOperand(const OperandPtr &, const OperandPtr &) override;
		bool replaceSimilarOperand(const OperandPtr &, const OperandPtr &) override;

		std::vector<std::reference_wrapper<OperandPtr>> getOperands() override {
			return {std::ref(source), std::ref(destination)};
		}
	};
}
