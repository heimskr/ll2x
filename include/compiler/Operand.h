#pragma once

#include <cstdint>
#include <memory>
#include <variant>

#include "Declarations.h"

namespace LL2X {
	struct Operand {
		enum class Mode {
			Constant,  // mul $99
			Direct,    // mov $0, 0xfff0
			Register,  // mov $0, %rax
			Displaced, // mov $0, 32(%rax)
			Scaled,    // mov $0, 32(%rax, %rbx, 8)
		};

		using Number = int64_t;

		Mode mode;

		Number displacement = 0;
		Number scale = 1;
		VariablePtr reg;
		VariablePtr index;

		Operand(Number number):
			mode(Mode::Constant), displacement(number) {}

		Operand(Number number, bool):
			mode(Mode::Direct), displacement(number) {}

		Operand(VariablePtr reg_):
			mode(Mode::Register), reg(reg_) {}

		Operand(Number displacement_, VariablePtr reg_):
			mode(Mode::Displaced), displacement(displacement_), reg(reg_) {}

		Operand(Number displacement_, VariablePtr reg_, VariablePtr index_, Number scale_):
			mode(Mode::Scaled), displacement(displacement_), scale(scale_), reg(reg_), index(index_) {}

		operator std::string() const;
		std::string toString() const;
	};
}
