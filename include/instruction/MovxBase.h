#pragma once

#include "instruction/SourceToDest.h"

namespace LL2X {
	/** Base class for Movsx and Movzx. */
	struct MovxBase: SourceToDest {
		MovxBase(OperandPtr source_, OperandPtr destination_):
			SourceToDest(std::move(source_), std::move(destination_)) {}

		std::string debugExtra() override;
		std::string toString() const override;
		bool replaceSimilarOperand(const OperandPtr &, const OperandPtr &) override;

		std::string getMnemonic() const;

		virtual char getMovType() const = 0;
	};
}
