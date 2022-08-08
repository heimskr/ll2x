#pragma once

#include "instruction/TwoSources.h"
#include "instruction/OneDestination.h"
#include "instruction/TargetInstruction.h"

namespace LL2X {
	struct TwoSourcesToDest: TargetInstruction, TwoSources, OneDestination {
		TwoSourcesToDest(Operand first_source, Operand second_source, Operand destination_):
			TwoSources(std::move(first_source), std::move(second_source)), OneDestination(std::move(destination_)) {}

		ExtractionResult extract(bool force = false) override;
		bool replaceRead(const VariablePtr &, const VariablePtr &) override;
		bool canReplaceRead(const VariablePtr &) const override;
		bool replaceWritten(const VariablePtr &, const VariablePtr &) override;
		bool canReplaceWritten(const VariablePtr &) const override;
	};
}
