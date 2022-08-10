#pragma once

#include <cstdint>
#include <memory>
#include <ostream>
#include <variant>

#include "compiler/x86_64.h"
#include "Declarations.h"

namespace LL2X {
	struct Operand {
		enum class Mode {
			Constant,  // mul $99
			Direct,    // mov $0, 0xfff0
			Label,     // jmp bb0
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
		int reg = -1;
		int index = -1;
		std::string label;

		Operand(Mode mode_, x86_64::Width width_, Number number):
			mode(mode_), width(width_), displacement(mode == Mode::Constant || mode == Mode::Direct? number : 0),
			reg(mode == Mode::Register? static_cast<int>(number) : -1) {}

		Operand(x86_64::Width width_, std::string label_):
			mode(Mode::Label), width(width_), label(std::move(label_)) {}

		Operand(x86_64::Width width_, Number displacement_, Number reg_):
			mode(Mode::Displaced), width(width_), displacement(displacement_), reg(reg_) {}

		Operand(x86_64::Width width_, Number displacement_, Number reg_, Number index_, Number scale_):
			mode(Mode::Scaled), width(width_), displacement(displacement_), scale(scale_), reg(reg_), index(index_) {}

		Operand(x86_64::Width width_, std::string displacement_, Number reg_):
			mode(Mode::Displaced), width(width_), displacement(std::move(displacement_)), reg(reg_) {}

		Operand(x86_64::Width width_, std::string displacement_, Number reg_, Number index_, Number scale_):
			mode(Mode::Scaled),
			width(width_),
			displacement(std::move(displacement_)),
			scale(scale_),
			reg(reg_),
			index(index_) {}

		std::string ansiString() const;
		std::string toString() const;

		// bool replace(const Variable &to_replace, const VariablePtr &replace_with);

		bool isSpecialPurpose() const;
		bool isRegister() const;
		bool isRegister(int reg) const;

		bool operator==(const Operand &) const;
	};

	template <typename... Args>
	Operand Operand8(Args &&...args) {
		return Operand(x86_64::Width::Eight, std::forward<Args>(args)...);
	}

	template <typename... Args>
	Operand Operand4(Args &&...args) {
		return Operand(x86_64::Width::Four, std::forward<Args>(args)...);
	}

	template <typename... Args>
	Operand Operand2(Args &&...args) {
		return Operand(x86_64::Width::Two, std::forward<Args>(args)...);
	}

	template <typename... Args>
	Operand Operand1(Args &&...args) {
		return Operand(x86_64::Width::Low, std::forward<Args>(args)...);
	}
}

std::ostream & operator<<(std::ostream &, const LL2X::Operand &);
