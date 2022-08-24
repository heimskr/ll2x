#pragma once

#include "instruction/Intermediate.h"
#include "instruction/OneDestination.h"
#include "instruction/OneSource.h"

namespace LL2X {
	/** Copies one register into a subregister of a variable. Needs to be replaced with a move instruction after
	 *  register allocation has been done. */
	struct DeferredDestinationMove: IntermediateInstruction, OneSource, OneDestination {
		int registerIndex;

		DeferredDestinationMove(OperandPtr source_, OperandPtr destination_, int register_index):
			OneSource(std::move(source_)), OneDestination(std::move(destination_)), registerIndex(register_index) {}

		std::string debugExtra() override;
		std::string toString() const override;

		std::vector<std::reference_wrapper<OperandPtr>> getOperands() override {
			return {std::ref(source), std::ref(destination)};
		}
	};
}
