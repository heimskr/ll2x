#pragma once

#include "compiler/Operand.h"
#include "instruction/Multi.h"
#include "instruction/Sized.h"
#include "instruction/TargetInstruction.h"

namespace LL2X {
	struct Neg: Multi, Sized  {
		Neg(OperandPtr multi_, int size_):
			Multi(std::move(multi_)),
			Sized(size_) {}

		Neg(OperandPtr multi_):
			Multi(std::move(multi_)),
			Sized(multi->bitWidth) {}

		std::string debugExtra() override {
			return lockPrefixAnsi + std::string("\e[1mneg") + suffix() + "\e[22m " + multi->ansiString();
		}

		std::string toString() const override {
			return lockPrefix + std::string("neg") + suffix() + ' ' + multi->toString();
		}
	};
}
