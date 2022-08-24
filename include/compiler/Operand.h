#pragma once

#include <cstdint>
#include <memory>
#include <ostream>
#include <unordered_set>
#include <variant>

#include "compiler/x86_64.h"
#include "util/Makeable.h"
#include "Declarations.h"

namespace LL2X {
	class Type;

	struct Operand: Makeable<Operand>, std::enable_shared_from_this<Operand> {
		enum class Mode {
			Constant,  // mul $99
			Direct,    // mov $0, 0xfff0
			Label,     // jmp bb0
			Register,  // mov $0, %rax
			Displaced, // mov $0, 32(%rax) or mov foo@GOTPCREL(%rip), %rax
			Scaled,    // mov $0, 32(%rax, %rbx, 8)
		};

		using Number = int64_t;
		using Variant = std::variant<Number, std::string>;

		Mode mode;
		x86_64::Width width;
		int bitWidth = -1;
		Variant displacement = 0;
		Number scale = 1;
		VariablePtr reg;
		VariablePtr index;
		std::string label;
		std::shared_ptr<Type> type;

		Number originalConstant = 0;
		bool useRip = false;

		Operand() = delete;

		Operand(const Operand &) = default;
		Operand(Operand &&) = default;

		Operand(VariablePtr var);

		Operand(x86_64::Width width_, const Operand &other): Operand(other) {
			width = width_;
			bitWidth = x86_64::getWidth(width_);
		}

		Operand(int bit_width, const Operand &other): Operand(other) {
			width = x86_64::getWidth(bit_width);
			bitWidth = bit_width;
		}

		Operand(x86_64::Width width_, Number number):
			mode(Mode::Constant), width(width_), bitWidth(x86_64::getWidth(width_)), displacement(number) {}

		Operand(x86_64::Width width_, Number number, bool):
			mode(Mode::Direct), width(width_), bitWidth(x86_64::getWidth(width_)), displacement(number) {}

		Operand(x86_64::Width width_, std::string label_, bool use_rip = true):
			mode(Mode::Label), width(width_), bitWidth(x86_64::getWidth(width_)), label(std::move(label_)),
			useRip(use_rip) {}

		Operand(x86_64::Width width_, VariablePtr reg_):
			mode(Mode::Register), width(width_), bitWidth(x86_64::getWidth(width_)), reg(reg_) {}

		Operand(int bit_width, VariablePtr reg_):
			mode(Mode::Register), width(x86_64::getWidth(bit_width)), bitWidth(bit_width), reg(reg_) {}

		Operand(x86_64::Width width_, Number displacement_, VariablePtr reg_):
			mode(Mode::Displaced), width(width_), bitWidth(x86_64::getWidth(width_)), displacement(displacement_),
			reg(reg_) {}

		Operand(x86_64::Width width_, Number displacement_, VariablePtr reg_, VariablePtr index_, Number scale_):
			mode(Mode::Scaled), width(width_), bitWidth(x86_64::getWidth(width_)), displacement(displacement_),
			scale(scale_), reg(reg_), index(index_) {}

		Operand(x86_64::Width width_, std::string displacement_, VariablePtr reg_):
			mode(Mode::Displaced), width(width_), bitWidth(x86_64::getWidth(width_)),
			displacement(std::move(displacement_)), reg(reg_) {}

		Operand(x86_64::Width width_, std::string displacement_, VariablePtr reg_, VariablePtr index_, Number scale_):
			mode(Mode::Scaled),
			width(width_),
			bitWidth(x86_64::getWidth(width_)),
			displacement(std::move(displacement_)),
			scale(scale_),
			reg(reg_),
			index(index_) {}

		template <typename... Args>
		Operand(int bits, Args &&...args): Operand(x86_64::getWidth(bits), std::forward<Args>(args)...) {}

		std::string ansiString() const;
		std::string toString() const;

		bool replaceAlias(const Variable &to_replace, const VariablePtr &replace_with);
		bool replaceID(const Variable &to_replace, const VariablePtr &replace_with);
		bool replace(const Variable &to_replace, const VariablePtr &replace_with);

		bool isRegister() const { return mode == Mode::Register; }
		bool isRegister(int check_reg) const;
		bool isRegisters(const std::set<int> &check_regs) const;
		bool isAliasOf(const Variable &) const;
		bool isLabel() const;
		bool isNumeric() const;
		bool isConstant() const;
		bool isHackable() const;
		/** Returns true iff the mode is Displaced or Scaled. */
		bool isIndirect() const;
		bool isDisplaced(const VariablePtr &) const;

		void extract(bool is_write, std::unordered_set<VariablePtr> &read, std::unordered_set<VariablePtr> &written)
			const;

		Number getConstant() const;

		/** Returns a copy of a register operand (e.g. "%rax") that's displaced (e.g. "8(%rax)").
		 *  Throws an exception if this isn't a register operand. */
		std::shared_ptr<Operand> toDisplaced(int displacement = 0) const;

		VariablePtr getVariable() const;

		inline OperandPtr setType(const std::shared_ptr<Type> &new_type) {
			type = new_type;
			return shared_from_this();
		}

		OperandPtr copy() const {
			return std::make_shared<Operand>(*this);
		}

		bool operator==(const Operand &) const;
		/** If the operands have had registers assigned, this function is similar to operator== but requires register
		 *  assignments to be the same instead of using Variable equality. Otherwise, it functions like operator==.
		 *  In either case, width is not checked. */
		bool similarTo(const Operand &) const;

		OperandPtr setWidth(int);
	};

	using OperandPtr = std::shared_ptr<Operand>;

	template <typename... Args>
	inline OperandPtr Operand8(Args &&...args) {
		return Operand::make(x86_64::Width::Eight, std::forward<Args>(args)...);
	}

	template <typename... Args>
	inline OperandPtr Operand4(Args &&...args) {
		return Operand::make(x86_64::Width::Four, std::forward<Args>(args)...);
	}

	template <typename... Args>
	inline OperandPtr Operand2(Args &&...args) {
		return Operand::make(x86_64::Width::Two, std::forward<Args>(args)...);
	}

	template <typename... Args>
	inline OperandPtr Operand1(Args &&...args) {
		return Operand::make(x86_64::Width::Low, std::forward<Args>(args)...);
	}

	template <typename... Args>
	inline OperandPtr OperandX(x86_64::Width width, Args &&...args) {
		return Operand::make(width, std::forward<Args>(args)...);
	}

	template <typename... Args>
	inline OperandPtr OperandX(int bit_width, Args &&...args) {
		return Operand::make(bit_width, std::forward<Args>(args)...);
	}

	inline OperandPtr OperandV(const VariablePtr &var) {
		return Operand::make(var);
	}
}

std::ostream & operator<<(std::ostream &, const LL2X::Operand &);
