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
			Indirect,  // mov $0, (%rax)
			Displaced, // mov $0, 32(%rax)
			Scaled,    // mov $0, 32(%rax, %rbx, 8)
		};

		using Number = int64_t;

		Mode mode;

		Number displacement = 0;
		Number scale = 1;
		VariablePtr indirect;
		VariablePtr index;

		Operand(Number number, bool is_constant):
			mode(is_constant? Mode::Constant : Mode::Direct), displacement(number) {}

		Operand(VariablePtr indirect_):
			mode(Mode::Indirect), indirect(indirect_) {}

		Operand(Number displacement_, VariablePtr indirect_):
			mode(Mode::Displaced), displacement(displacement_), indirect(indirect_) {}

		Operand(Number displacement_, VariablePtr indirect_, VariablePtr index_, Number scale_):
			mode(Mode::Scaled), displacement(displacement_), scale(scale_), indirect(indirect_), index(index_) {}

		operator std::string() const;
		std::string toString() const;
	};
}
