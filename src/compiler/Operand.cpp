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

	static std::string pcrel(const VariablePtr &var) {
		return var && var->reg == x86_64::rip? "@GOTPCREL" : "";
	}

	Operand::Operand(VariablePtr var):
	mode(Mode::Register), width(x86_64::getWidth(var->type? var->type->width() : 64)), reg(var) {
		if (!var->type)
			throw std::runtime_error("Variable provided to Operand() has no type");
	}

	std::string Operand::ansiString() const {
		switch (mode) {
			case Mode::Constant:
				return "\e[32m$" + stringify(displacement) + "\e[39m";
			case Mode::Direct:
				return stringify(displacement);
			case Mode::Label:
				return label + "@GOTPCREL(%rip)";
			case Mode::Register:
				return reg->ansiString(width);
			case Mode::Displaced:
				if (isZero(displacement))
					return '(' + reg->ansiString(width) + ')';
				return stringify(displacement) + pcrel(reg) + '(' + reg->ansiString(width) + ')';
			case Mode::Scaled:
				if (isZero(displacement))
					return '(' + reg->ansiString(width) + ", " + index->ansiString(width) + ", " + std::to_string(scale)
						+ ')';
				return stringify(displacement) + pcrel(reg) + '(' + reg->ansiString(width) + ", " +
					index->ansiString(width) + ", " + std::to_string(scale) + ')';
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
				return label + "@GOTPCREL(%rip)";
			case Mode::Register:
				return reg->toString(width);
			case Mode::Displaced:
				if (isZero(displacement))
					return '(' + reg->toString(width) + ')';
				return stringify(displacement) + pcrel(reg) + '(' + reg->toString(width) + ')';
			case Mode::Scaled:
				if (isZero(displacement))
					return '(' + reg->toString(width) + ", " + index->toString(width) + ", " + std::to_string(scale)
						+ ')';
				return stringify(displacement) + pcrel(reg) + '(' + reg->toString(width) + ", " + index->toString(width)
					+ ", " + std::to_string(scale) + ')';
			default:
				return "???";
		}
	}

	bool Operand::replaceAlias(const Variable &to_replace, const VariablePtr &replace_with) {
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

	bool Operand::replaceID(const Variable &to_replace, const VariablePtr &replace_with) {
		bool changed = false;

		if (reg && reg->id == to_replace.id) {
			reg = replace_with;
			changed = true;
		}

		if (index && index->id == to_replace.id) {
			index = replace_with;
			return true;
		}

		return changed;
	}

	bool Operand::replace(const Variable &to_replace, const VariablePtr &replace_with) {
		bool changed = false;

		if (reg && (reg->id == to_replace.id || reg->isAliasOf(to_replace))) {
			reg = replace_with;
			changed = true;
		}

		if (index && (index->id == to_replace.id || index->isAliasOf(to_replace))) {
			index = replace_with;
			return true;
		}

		return changed;
	}

	bool Operand::isRegister(int check_reg) const {
		return isRegister() && reg && reg->reg == check_reg;
	}

	bool Operand::isAliasOf(const Variable &var) const {
		return isRegister() && reg && reg->isAliasOf(var);
	}

	bool Operand::operator==(const Operand &other) const {
		return this == &other || (mode == other.mode && width == other.width && displacement == other.displacement
			&& scale == other.scale && reg == other.reg && index == other.index && label == other.label);
	}
}

std::ostream & operator<<(std::ostream &stream, const LL2X::Operand &operand) {
	return stream << operand.ansiString();
}
