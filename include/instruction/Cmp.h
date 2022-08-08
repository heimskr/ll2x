#pragma once

#include "instruction/OneSource.h"
#include "instruction/Sized.h"
#include "instruction/TargetInstruction.h"

namespace LL2X {
	struct CmpInstruction: TargetInstruction, OneSource, Sized  {
		CmpInstruction(Operand source_, x86_64::Width size_):
			OneSource(std::move(source_)),
			Sized(size_) {}

		std::string debugExtra() override;
		std::string toString() const override;

		bool altersFlags() const override { return true; }
	};
}
