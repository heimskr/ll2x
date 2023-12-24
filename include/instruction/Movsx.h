#pragma once

#include "instruction/SourceToDest.h"

namespace LL2X {
	struct Movsx: SourceToDest {
		Movsx(OperandPtr source_, OperandPtr destination_):
			SourceToDest(std::move(source_), std::move(destination_)) {}

		std::string debugExtra() override;
		std::string toString() const override;
		bool replaceSimilarOperand(const OperandPtr &, const OperandPtr &) override;

		std::string getMnemonic() const;
	};
}
