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

	std::string Operand::ansiString(x86_64::Width width) const {
		switch (mode) {
			case Mode::Constant:
				return "\e[32m$" + stringify(displacement) + "\e[39m";
			case Mode::Direct:
				return stringify(displacement);
			case Mode::Register:
				return reg->ansiString(width);
			case Mode::Displaced:
				if (isZero(displacement))
					return '(' + reg->ansiString(width) + ')';
				return stringify(displacement) + '(' + reg->ansiString(width) + ')';
			case Mode::Scaled:
				if (isZero(displacement))
					return '(' + reg->ansiString(width) + ", " + index->ansiString(width) + ", " + std::to_string(scale)
						+ ')';
				return stringify(displacement) + '(' + reg->ansiString(width) + ", " + index->ansiString(width)
					+ ", " + std::to_string(scale) + ')';
			default:
				return "\e[31m???\e[39m";
		}
	}

	std::string Operand::toString(x86_64::Width width) const {
		switch (mode) {
			case Mode::Constant:
				return '$' + stringify(displacement);
			case Mode::Direct:
				return stringify(displacement);
			case Mode::Register:
				return reg->toString(width);
			case Mode::Displaced:
				if (isZero(displacement))
					return '(' + reg->toString() + ')';
				return stringify(displacement) + '(' + reg->toString(width) + ')';
			case Mode::Scaled:
				if (isZero(displacement))
					return '(' + reg->toString() + ", " + index->toString(width) + ", " + std::to_string(scale) + ')';
				return stringify(displacement) + '(' + reg->toString(width) + ", " + index->toString(width) + ", "
					+ std::to_string(scale) + ')';
			default:
				return "???";
		}
	}

	bool Operand::replace(const Variable &to_replace, const VariablePtr &replace_with) {
		bool changed = false;

		if (reg && reg->isAliasOf(to_replace)) {
			reg = replace_with;
			changed = true;
		}

		if (index && index->isAliasOf(to_replace)) {
			index = replace_with;
			return true;
		}

		return changed;
	}
}
