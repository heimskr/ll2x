#include "compiler/Operand.h"
#include "compiler/Variable.h"

namespace LL2X {
	std::string Operand::ansiString(x86_64::Width width) const {
		switch (mode) {
			case Mode::Constant:
				return "\e[32m$" + std::to_string(displacement) + "\e[39m";
			case Mode::Direct:
				return std::to_string(displacement);
			case Mode::Register:
				return reg->ansiString(width);
			case Mode::Displaced:
				if (displacement == 0)
					return '(' + reg->ansiString(width) + ')';
				return std::to_string(displacement) + '(' + reg->ansiString(width) + ')';
			case Mode::Scaled:
				if (displacement == 0)
					return '(' + reg->ansiString(width) + ", " + index->ansiString(width) + ", " + std::to_string(scale)
						+ ')';
				return std::to_string(displacement) + '(' + reg->ansiString(width) + ", " + index->ansiString(width)
					+ ", " + std::to_string(scale) + ')';
			default:
				return "\e[31m???\e[39m";
		}
	}

	std::string Operand::toString(x86_64::Width width) const {
		switch (mode) {
			case Mode::Constant:
				return '$' + std::to_string(displacement);
			case Mode::Direct:
				return std::to_string(displacement);
			case Mode::Register:
				return reg->toString(width);
			case Mode::Displaced:
				if (displacement == 0)
					return '(' + reg->toString() + ')';
				return std::to_string(displacement) + '(' + reg->toString(width) + ')';
			case Mode::Scaled:
				if (displacement == 0)
					return '(' + reg->toString() + ", " + index->toString(width) + ", " + std::to_string(scale) + ')';
				return std::to_string(displacement) + '(' + reg->toString(width) + ", " + index->toString(width) + ", "
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
