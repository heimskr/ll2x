#pragma once

#include "compiler/x86_64.h"
#include "instruction/HasCondition.h"
#include "instruction/SourceOnly.h"

namespace LL2X {
	struct JmpInstruction: SourceOnly, HasCondition {
		JmpInstruction(Operand source_, x86_64::Condition condition_):
			SourceOnly(std::move(source_)), HasCondition(condition_) {}

		std::string debugExtra() override;
		std::string toString() const override;

		std::string getMnemonic() const;
	};
}
