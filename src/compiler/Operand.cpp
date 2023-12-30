#include "compiler/Operand.h"
#include "compiler/Variable.h"
#include "util/Util.h"

namespace LL2X {
	static std::string stringify(const Operand::Variant &variant) {
		if (std::holds_alternative<Operand::Number>(variant))
			return std::to_string(std::get<Operand::Number>(variant));
		return std::get<std::string>(variant);
	}

	static bool isZero(const Operand::Variant &variant) {
		return std::holds_alternative<Operand::Number>(variant) && std::get<Operand::Number>(variant) == 0;
	}

	static std::string pcrel(const VariablePtr &) {
		// return (var && var->registers.size() == 1 && *var->registers.begin() == x86_64::rip)? "@GOTPCREL" : "";
		return "";
	}

	Operand::Operand(const VariablePtr &var):
	mode(Mode::Register), width(x86_64::getWidth(var->type? var->type->trueWidth() : 64)),
	bitWidth(var->type? var->type->width() : 64), reg(var) {
		if (!var->type)
			throw std::runtime_error("Variable provided to Operand() has no type");
		type = var->type;
	}

	std::string Operand::ansiString() const {
		switch (mode) {
			case Mode::Constant:
				return "\e[32m$" + Util::unquote(stringify(displacement)) + "\e[39m";
			case Mode::Direct:
				return Util::unquote(stringify(displacement));
			case Mode::Label:
				return useRip? Util::unquote(label) + (useGotpcrel? "@GOTPCREL" : "") + "(%rip)" :
					"\e[36m" + Util::unquote(label) + "\e[39m";
			case Mode::Register:
				return reg->ansiString(width);
			case Mode::Displaced:
				if (isZero(displacement))
					return '(' + reg->ansiString(width) + ')';
				return Util::unquote(stringify(displacement)) + pcrel(reg) + '(' + reg->ansiString(width) + ')';
			case Mode::Scaled:
				if (isZero(displacement))
					return '(' + reg->ansiString(width) + ", " + index->ansiString(width) + ", " + std::to_string(scale)
						+ ')';
				return Util::unquote(stringify(displacement)) + pcrel(reg) + '(' + reg->ansiString(width) + ", " +
					index->ansiString(width) + ", " + std::to_string(scale) + ')';
			default:
				return "\e[31m???\e[39m";
		}
	}

	std::string Operand::toString() const {
		switch (mode) {
			case Mode::Constant:
				return '$' + Util::unquote(stringify(displacement));
			case Mode::Direct:
				return Util::unquote(stringify(displacement));
			case Mode::Label:
				return useRip? Util::unquote(label) + (useGotpcrel? "@GOTPCREL" : "") + "(%rip)" : Util::unquote(label);
			case Mode::Register:
				return reg->toString(width);
			case Mode::Displaced:
				if (isZero(displacement))
					return '(' + reg->toString(width) + ')';
				return Util::unquote(stringify(displacement)) + pcrel(reg) + '(' + reg->toString(width) + ')';
			case Mode::Scaled:
				if (isZero(displacement))
					return '(' + reg->toString(width) + ", " + index->toString(width) + ", " + std::to_string(scale)
						+ ')';
				return Util::unquote(stringify(displacement)) + pcrel(reg) + '(' + reg->toString(width) + ", " +
					index->toString(width) + ", " + std::to_string(scale) + ')';
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
		return isRegister() && reg && reg->registers.size() == 1 && *reg->registers.begin() == check_reg;
	}

	bool Operand::isRegisters(const std::set<int> &check_regs) const {
		return isRegister() && reg && Util::equal(reg->registers, check_regs);
	}

	bool Operand::isAliasOf(const Variable &var) const {
		return isRegister() && reg && reg->isAliasOf(var);
	}

	bool Operand::isLabel() const {
		return mode == Mode::Label;
	}

	bool Operand::isLabel(const std::string &check) const {
		return mode == Mode::Label && label == check;
	}

	bool Operand::isNumeric() const {
		return mode == Mode::Constant || mode == Mode::Direct;
	}

	bool Operand::isConstant() const {
		return mode == Mode::Constant;
	}

	bool Operand::isHackable() const {
		return !isNumeric() && !isIndirect() && !sizeForced;
	}

	bool Operand::isIndirect() const {
		return mode == Mode::Displaced || mode == Mode::Scaled || (mode == Mode::Label && useRip);
	}

	bool Operand::isDisplaced(const VariablePtr &variable) const {
		return mode == Mode::Displaced && reg == variable;
	}

	std::optional<std::string> Operand::getGlobal() const {
		if (mode == Mode::Displaced && std::holds_alternative<std::string>(displacement))
			return std::get<std::string>(displacement);

		if (mode == Mode::Label)
			return label;

		return std::nullopt;
	}

	bool Operand::isGlobal() const {
		return mode == Mode::Label || (mode == Mode::Displaced && std::holds_alternative<std::string>(displacement));
	}

	void Operand::extract(bool is_write, std::unordered_set<VariablePtr> &read,
	                      std::unordered_set<VariablePtr> &written) const {
		if (is_write && (mode == Mode::Displaced || mode == Mode::Scaled))
			is_write = false;

		auto &set = is_write? written : read;

		if (reg)
			set.insert(reg);
		if (index)
			set.insert(index);
	}

	Operand::Number & Operand::getConstant() {
		if (!isConstant())
			throw std::runtime_error("Can't get operand constant: not a constant operand");
		return std::get<Number>(displacement);
	}

	const Operand::Number & Operand::getConstant() const {
		if (!isConstant())
			throw std::runtime_error("Can't get operand constant: not a constant operand");
		return std::get<Number>(displacement);
	}

	std::shared_ptr<Operand> Operand::toDisplaced(int displacement) const {
		if (mode != Mode::Register)
			throw std::runtime_error("Can't displace non-register operand " + toString());
		return OpX(width, displacement, reg);
	}

	bool Operand::hasDisplacement(Number check) const {
		return std::holds_alternative<Number>(displacement) && std::get<Number>(displacement) == check;
	}

	VariablePtr Operand::getVariable() const {
		if (mode != Mode::Register)
			throw std::runtime_error("Can't get variable from operand: not in register mode");
		return reg;
	}

	bool Operand::operator==(const Operand &other) const {
		if (this == &other)
			return true;

		if (mode != other.mode || width != other.width || displacement != other.displacement || scale != other.scale)
			return false;

		if (label != other.label)
			return false;

		if (reg) {
			if (!other.reg || *reg != *other.reg)
				return false;
		} else if (reg != other.reg)
			return false;

		if (index) {
			if (!other.index || *index != *other.index)
				return false;
		} else if (index != other.index)
			return false;

		return true;
	}

	bool Operand::similarTo(const Operand &other) const {
		if (this == &other)
			return true;

		if (mode != other.mode || displacement != other.displacement || scale != other.scale)
			return false;

		if (label != other.label)
			return false;

		if (reg && !reg->registers.empty()) {
			if (!other.reg || !Util::equal(reg->registers, other.reg->registers))
				return false;

			if (index) {
				if (!other.index || !Util::equal(index->registers, other.index->registers))
					return false;
			} else if (index != other.index)
				return false;
		} else {
			if (reg) {
				if (!other.reg || *reg != *other.reg)
					return false;
			} else if (reg != other.reg)
				return false;

			if (index) {
				if (!other.index || *index != *other.index)
					return false;
			} else if (index != other.index)
				return false;
		}

		return true;
	}

	OperandPtr Operand::setWidth(int new_width) {
		width = x86_64::getWidth(new_width);
		bitWidth = new_width;
		return shared_from_this();
	}
}

std::ostream & operator<<(std::ostream &stream, const LL2X::Operand &operand) {
	return stream << operand.ansiString();
}
