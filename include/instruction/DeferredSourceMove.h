#pragma once

#include "instruction/Intermediate.h"
#include "instruction/SourceToDest.h"

namespace LL2X {
	/** Copies one subregister of a variable into a register. Needs to be replaced with a move instruction after
	 *  register allocation has been done. */
	struct DeferredSourceMove: SourceToDest {
		int registerIndex;

		DeferredSourceMove(OperandPtr source_, OperandPtr destination_, int register_index):
			SourceToDest(std::move(source_), std::move(destination_)), registerIndex(register_index) {}

		std::string debugExtra() override;
		std::string toString() const override;
	};
}
