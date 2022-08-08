#pragma once

#include "instruction/OneSource.h"
#include "instruction/TargetInstruction.h"

namespace LL2X {
	struct SourceOnly: TargetInstruction, OneSource {
		SourceOnly(Operand source_):
			OneSource(std::move(source_)) {}

		ExtractionResult extract(bool force = false) override;
		bool replaceRead(const VariablePtr &, const VariablePtr &) override;
		bool canReplaceRead(const VariablePtr &) const override;
	};
}
