#pragma once

#include "compiler/Instruction.h"

namespace LL2X {
	/** Represents an instruction created during one compiler pass and replaced during a later compiler pass. */
	class IntermediateInstruction: public Instruction {
		protected:
			using Instruction::Instruction;

		public:
			std::unordered_set<int> precoloredRead;
			std::unordered_set<int> precoloredWritten;

			bool isTerminal() const override { return false; }
			std::pair<int, int> extract(bool) override { return {0, 0}; }
			virtual std::pair<int, int> extractPrecolored() { return {0, 0}; }
	};
}
