#pragma once

#include "compiler/x86_64.h"
#include "instruction/Intermediate.h"
#include "util/Makeable.h"

namespace LL2X {
	struct Unclobber;

	struct Clobber: IntermediateInstruction, Makeable<Clobber> {
		int reg;
		std::shared_ptr<Unclobber> unclobber;
		Clobber(int reg_, int index_ = -1):
			IntermediateInstruction(index_), reg(reg_) {}
		std::string debugExtra() override { return toString(); }
		std::string toString() const override { return "\e[33mclobber\e[32m " + x86_64::registerName(reg) + " \e[39m"; }
		bool maySpill() const override { return false; }
	};

	/** Ideally not to be instantiated directly—use Function::unclobber instead. */
	struct Unclobber: IntermediateInstruction, Makeable<Unclobber> {
		int reg;
		VariablePtr pvar;

		Unclobber(int reg_, VariablePtr pvar_, int index_ = -1):
			IntermediateInstruction(index_), reg(reg_), pvar(std::move(pvar_)) {}

		std::string debugExtra() override { return toString() + " / " + pvar->ansiString(); }

		std::string toString() const override {
			return "\e[33munclobber\e[32m " + x86_64::registerName(reg) + " \e[39m";
		}

		ExtractionResult extract(bool) override {
			read.clear();
			written.clear();
			written.insert(pvar);
			return {0, 1};
		}

		bool maySpill() const override { return false; }

		std::pair<int, int> extractPrecolored() override {
			precoloredWritten = {reg};
			return {0, 1};
		}
	};
}
