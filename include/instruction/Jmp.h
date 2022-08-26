#pragma once

#include "compiler/x86_64.h"
#include "instruction/HasCondition.h"
#include "instruction/SourceOnly.h"

namespace LL2X {
	struct Jmp: SourceOnly, HasCondition {
		Jmp(OperandPtr source_, x86_64::Condition condition_ = x86_64::Condition::Unconditional):
			SourceOnly(std::move(source_)), HasCondition(condition_) {}

		std::string debugExtra() override;
		std::string toString() const override;

		std::string getMnemonic() const;

		bool holdsLabels() const override { return true; }
		bool replaceLabel(const std::string *, const std::string *) override;
		std::vector<const std::string *> getLabels() const override;
		bool canFallThrough() const override;
	};
}
