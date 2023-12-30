#pragma once

#include "instruction/HasPrecolored.h"
#include "instruction/SourceToDest.h"

namespace LL2X {
	/** Copies one register into a subregister of a variable. Needs to be replaced with a move instruction after
	 *  register allocation has been done. */
	struct DeferredDestinationMove: SourceToDest {
		int registerIndex;

		DeferredDestinationMove(OperandPtr source_, OperandPtr destination_, int register_index):
			SourceToDest(std::move(source_), std::move(destination_)), registerIndex(register_index) {}

		std::string debugExtra() override;
		std::string toString() const override;
	};
}
