#pragma once

#include "instruction/TwoSources.h"
#include "instruction/TargetInstruction.h"

namespace LL2X {
	struct TwoSourcesOnly: TargetInstruction, TwoSources {
		TwoSourcesOnly(Operand first_source, Operand second_source):
			TwoSources(std::move(first_source), std::move(second_source)) {}

		ExtractionResult extract(bool force = false) override;
		bool replaceRead(const VariablePtr &, const VariablePtr &) override;
		bool canReplaceRead(const VariablePtr &) const override;
	};
}
