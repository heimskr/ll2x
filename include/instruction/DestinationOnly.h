#pragma once

#include "instruction/OneDestination.h"
#include "instruction/TargetInstruction.h"

namespace LL2X {
	struct DestinationOnly: TargetInstruction, OneDestination {
		DestinationOnly(OperandPtr destination_):
			OneDestination(std::move(destination_)) {}

		ExtractionResult extract(bool force = false) override;
		bool replaceRead(const VariablePtr &, const VariablePtr &) override;
		bool canReplaceRead(const VariablePtr &) const override;
		bool replaceWritten(const VariablePtr &, const VariablePtr &) override;
		bool canReplaceWritten(const VariablePtr &) const override;
		bool replaceOperand(const OperandPtr &, const OperandPtr &) override;
		bool replaceSimilarOperand(const OperandPtr &, const OperandPtr &) override;
	};
}
