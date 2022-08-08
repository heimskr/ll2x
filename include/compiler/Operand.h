#pragma once

#include <cstdint>
#include <memory>
#include <variant>

#include "compiler/x86_64.h"
#include "Declarations.h"

namespace LL2X {
	struct Operand {
		enum class Mode {
			Constant,  // mul $99
			Direct,    // mov $0, 0xfff0
			Register,  // mov $0, %rax
			Displaced, // mov $0, 32(%rax) or mov foo(%rip), %rax
			Scaled,    // mov $0, 32(%rax, %rbx, 8)
		};

		using Number = int64_t;
		using Variant = std::variant<Number, std::string>;

		Mode mode;
		x86_64::Width width;
		Variant displacement = 0;
		Number scale = 1;
		VariablePtr reg;
		VariablePtr index;

		Operand(x86_64::Width width_, Number number):
			mode(Mode::Constant), width(width_), displacement(number) {}

		Operand(x86_64::Width width_, Number number, bool):
			mode(Mode::Direct), width(width_), displacement(number) {}

		Operand(x86_64::Width width_, VariablePtr reg_):
			mode(Mode::Register), width(width_), reg(reg_) {}

		Operand(x86_64::Width width_, Number displacement_, VariablePtr reg_):
			mode(Mode::Displaced), width(width_), displacement(displacement_), reg(reg_) {}

		Operand(x86_64::Width width_, Number displacement_, VariablePtr reg_, VariablePtr index_, Number scale_):
			mode(Mode::Scaled), width(width_), displacement(displacement_), scale(scale_), reg(reg_), index(index_) {}

		Operand(x86_64::Width width_, std::string displacement_, VariablePtr reg_):
			mode(Mode::Displaced), width(width_), displacement(std::move(displacement_)), reg(reg_) {}

		Operand(x86_64::Width width_, std::string displacement_, VariablePtr reg_, VariablePtr index_, Number scale_):
			mode(Mode::Scaled),
			width(width_),
			displacement(std::move(displacement_)),
			scale(scale_),
			reg(reg_),
			index(index_) {}

		std::string ansiString(x86_64::Width) const;
		std::string toString(x86_64::Width) const;

		bool replace(const Variable &to_replace, const VariablePtr &replace_with);
	};
}
