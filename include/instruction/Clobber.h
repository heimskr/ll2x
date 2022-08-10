#pragma once

#include "compiler/x86_64.h"
#include "instruction/Intermediate.h"

namespace LL2X {
	struct Clobber: IntermediateInstruction {
		int reg;
		Clobber(int reg_, int index_ = -1):
			IntermediateInstruction(index_), reg(reg_) {}
		std::string debugExtra() override { return toString(); }
		std::string toString() const override { return "\e[33mclobber\e[32m " + x86_64::registerName(reg) + " \e[39m"; }
		bool maySpill() const override { return false; }
	};
}
