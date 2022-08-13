#pragma once

#include "compiler/x86_64.h"
#include "instruction/SourceOnly.h"

namespace LL2X {
	struct Call: SourceOnly {
		Call(OperandPtr source_):
			SourceOnly(std::move(source_)) {}

		std::string debugExtra() override;
		std::string toString() const override;
	};
}
