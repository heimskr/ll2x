#include "compiler/Operand.h"
#include "compiler/Variable.h"

namespace LL2X {
	static std::string stringify(const Operand::Variant &variant) {
		if (std::holds_alternative<Operand::Number>(variant))
			return std::to_string(std::get<Operand::Number>(variant));
		return std::get<std::string>(variant);
	}

	static bool isZero(const Operand::Variant &variant) {
		return std::holds_alternative<Operand::Number>(variant) && std::get<Operand::Number>(variant) == 0;
	}

	static std::string regAnsiString(decltype(Operand::reg) reg) {
		return "\e[32m%" + x86_64::registerName(reg) + "\e[39m";
	}

	static std::string regString(decltype(Operand::reg) reg) {
		return '%' + x86_64::registerName(reg);
	}

	std::string Operand::ansiString() const {
		switch (mode) {
			case Mode::Constant:
				return "\e[32m$" + stringify(displacement) + "\e[39m";
			case Mode::Direct:
				return stringify(displacement);
			case Mode::Label:
				return label;
			case Mode::Register:
				return regAnsiString(reg);
			case Mode::Displaced:
				if (isZero(displacement))
					return '(' + regAnsiString(reg) + ')';
				return stringify(displacement) + '(' + regAnsiString(reg) + ')';
			case Mode::Scaled:
				if (isZero(displacement))
					return '(' + regAnsiString(reg) + ", " + regAnsiString(index) + ", " + std::to_string(scale) + ')';
				return stringify(displacement) + '(' + regAnsiString(reg) + ", " + regAnsiString(index) + ", "
					+ std::to_string(scale) + ')';
			default:
				return "\e[31m???\e[39m";
		}
	}

	std::string Operand::toString() const {
		switch (mode) {
			case Mode::Constant:
				return '$' + stringify(displacement);
			case Mode::Direct:
				return stringify(displacement);
			case Mode::Label:
				return label;
			case Mode::Register:
				return regString(reg);
			case Mode::Displaced:
				if (isZero(displacement))
					return '(' + regString(reg) + ')';
				return stringify(displacement) + '(' + regString(reg) + ')';
			case Mode::Scaled:
				if (isZero(displacement))
					return '(' + regString(reg) + ", " + regString(index) + ", " + std::to_string(scale) + ')';
				return stringify(displacement) + '(' + regString(reg) + ", " + regString(index) + ", "
					+ std::to_string(scale) + ')';
			default:
				return "???";
		}
	}

	// bool Operand::replace(const Variable &to_replace, const VariablePtr &replace_with) {
	// 	bool changed = false;

	// 	if (reg && reg->isAliasOf(to_replace)) {
	// 		reg = replace_with;
	// 		changed = true;
	// 	}

	// 	if (index && index->isAliasOf(to_replace)) {
	// 		index = replace_with;
	// 		return true;
	// 	}

	// 	return changed;
	// }

	bool Operand::isSpecialPurpose() const {
		return mode == Mode::Register && x86_64::isSpecialPurpose(reg);
	}

	bool Operand::isRegister() const {
		return mode == Mode::Register;
	}

	bool Operand::isRegister(int other) const {
		return mode == Mode::Register && reg == other;
	}

	bool Operand::operator==(const Operand &other) const {
		return this == &other || (mode == other.mode && width == other.width && displacement == other.displacement
			&& scale == other.scale && reg == other.reg && index == other.index && label == other.label);
	}
}

std::ostream & operator<<(std::ostream &stream, const LL2X::Operand &operand) {
	return stream << operand.ansiString();
}
