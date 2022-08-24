#pragma once

#include "compiler/Instruction.h"

namespace LL2X {
	class TargetInstruction: public Instruction {
		protected:
			using Instruction::Instruction;

			std::string lockPrefix;
			std::string lockPrefixAnsi;

		public:
			bool isTerminal() const override { return false; }
			ExtractionResult extract(bool = false) override { return {0, 0}; }
			virtual bool alwaysTerminal() const { return false; }
			void setLock(bool lock = true) {
				lockPrefix     = lock? "lock "             : "";
				lockPrefixAnsi = lock? "\e[31mlock\e[39m " : "";
			}
	};
}
