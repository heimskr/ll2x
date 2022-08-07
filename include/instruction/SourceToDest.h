#pragma once

#include "instruction/OneSource.h"
#include "instruction/OneDestination.h"
#include "instruction/TargetInstruction.h"

namespace LL2X {
	struct SourceToDest: TargetInstruction, OneSource, OneDestination {
		SourceToDest(Operand source_, Operand destination_):
			OneSource(std::move(source_)), OneDestination(std::move(destination_)) {}

		ExtractionResult extract(bool force = false) override;
		bool replaceRead(const std::shared_ptr<Variable> &, const std::shared_ptr<Variable> &) override;
		bool canReplaceRead(const std::shared_ptr<Variable> &) const override;
		bool replaceWritten(const std::shared_ptr<Variable> &, const std::shared_ptr<Variable> &) override;
		bool canReplaceWritten(const std::shared_ptr<Variable> &) const override;
	};
}
