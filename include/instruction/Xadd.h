#pragma once

#include "instruction/Sized.h"
#include "instruction/TargetInstruction.h"

namespace LL2X {
	/** xadd is a quirky instruction that reads from and writes to both of its two operands. */
	struct Xadd: TargetInstruction, Sized {
		OperandPtr regOnly;
		OperandPtr regMem;

		Xadd() = delete;
		Xadd(OperandPtr reg_only, OperandPtr reg_mem, int size_);
		Xadd(OperandPtr reg_only, OperandPtr reg_mem);

		ExtractionResult extract(bool force) override;
		bool replaceRead(const VariablePtr &, const VariablePtr &) override;
		bool canReplaceRead(const VariablePtr &) const override;
		bool replaceWritten(const VariablePtr &, const VariablePtr &) override;
		bool canReplaceWritten(const VariablePtr &) const override;
		bool replaceOperand(const OperandPtr &, const OperandPtr &) override;
		bool replaceSimilarOperand(const OperandPtr &, const OperandPtr &) override;

		std::string debugExtra() override;
		std::string toString() const override;
	};
}
