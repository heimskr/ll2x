#pragma once

#include "instruction/TargetInstruction.h"

namespace LL2X {
	/** For instructions like neg that read from and write to a single multipurpose operand. */
	struct Multi: TargetInstruction {
		OperandPtr multi;

		Multi(OperandPtr multi_):
			multi(std::move(multi_)) {}

		ExtractionResult extract(bool force) override;
		bool replaceRead(const VariablePtr &, const VariablePtr &) override;
		bool canReplaceRead(const VariablePtr &) const override;
		bool replaceWritten(const VariablePtr &, const VariablePtr &) override;
		bool canReplaceWritten(const VariablePtr &) const override;
		bool replaceOperand(const OperandPtr &, const OperandPtr &) override;
		bool replaceSimilarOperand(const OperandPtr &, const OperandPtr &) override;

		std::vector<std::reference_wrapper<OperandPtr>> getOperands() override {
			return {std::ref(multi)};
		}
	};
}
