#pragma once

#include "compiler/Instruction.h"

namespace LL2X {
	/** Represents an instruction created during one compiler pass and replaced during a later compiler pass. */
	class IntermediateInstruction: public Instruction {
		protected:
			using Instruction::Instruction;

		public:
			bool isTerminal() const override { return false; }
			std::pair<int, int> extract(bool) override { return {0, 0}; }
	};
}
