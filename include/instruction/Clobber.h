#pragma once

#include "compiler/x86_64.h"
#include "instruction/DestinationOnly.h"
#include "instruction/HasPrecolored.h"
#include "instruction/OneDestination.h"
#include "instruction/OneSource.h"
#include "util/Makeable.h"

namespace LL2X {
	struct SemiUnclobber;
	struct Unclobber;

	struct Clobber: Instruction, HasPrecolored, Makeable<Clobber> {
		int reg;
		std::shared_ptr<Unclobber> unclobber;
		std::vector<std::shared_ptr<SemiUnclobber>> semis;

		Clobber(int reg_, int index_ = -1):
			Instruction(index_), reg(reg_) {}

		std::string debugExtra() override { return toString(); }

		std::string toString() const override {
			return "\e[33mclobber\e[32m %" + x86_64::registerName(reg) + " \e[39m";
		}

		bool maySpill() const override { return false; }
		bool isTerminal() const override { return false; }
		ExtractionResult extract(bool) override { return {0, 0}; }

		std::shared_ptr<SemiUnclobber> makeSemi(const OperandPtr &destination);
	};

	/** Ideally not to be instantiated directly—use Function::unclobber instead. */
	struct Unclobber: Instruction, HasPrecolored, Makeable<Unclobber> {
		int reg;

		Unclobber(int reg_, int index_ = -1):
			Instruction(index_), reg(reg_) {}

		std::string debugExtra() override { return toString(); }

		std::string toString() const override {
			return "\e[33munclobber\e[32m %" + x86_64::registerName(reg) + "\e[39m";
		}

		bool maySpill() const override { return false; }
		bool isTerminal() const override { return false; }
		ExtractionResult extract(bool) override { return {0, 0}; }

		std::pair<int, int> extractPrecolored() override {
			precoloredWritten = {reg};
			return {0, 1};
		}
	};

	struct SemiUnclobber: Instruction, HasPrecolored, OneDestination, OneSource, Makeable<SemiUnclobber> {
		int reg;

		SemiUnclobber(int reg_, OperandPtr destination_, int index_ = -1):
			Instruction(index_), OneDestination(std::move(destination_)), OneSource(nullptr), reg(reg_) {}

		std::string debugExtra() override { return toString(); }
		std::string toString() const override;

		ExtractionResult extract(bool force) override;

		bool isTerminal() const override { return false; }
		std::pair<int, int> extractPrecolored() override;
	};
}
