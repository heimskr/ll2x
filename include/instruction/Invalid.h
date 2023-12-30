#pragma once

#include "instruction/HasPrecolored.h"
#include "util/Makeable.h"

namespace LL2X {
	struct InvalidInstruction: Instruction, Makeable<InvalidInstruction> {
		std::string message;
		InvalidInstruction(const std::string &message_ = "INVALID", int index_ = -1):
			Instruction(index_), message(message_) {}
		std::string debugExtra() override { return toString(); }
		std::string toString() const override { return "\e[41;97;1m " + message + " \e[39;49;22m"; }
		bool maySpill() const override { return false; }
		ExtractionResult extract(bool) override { return {0, 0}; }
		bool isTerminal() const override { return false; }
	};
}
