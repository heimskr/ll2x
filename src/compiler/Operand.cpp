#include "compiler/Operand.h"
#include "compiler/Variable.h"

namespace LL2X {
	Operand::operator std::string() const {
		switch (mode) {
			case Mode::Constant:
				return "\e[32m$" + std::to_string(displacement) + "\e[39m";
			case Mode::Direct:
				return std::to_string(displacement);
			case Mode::Indirect:
				return '(' + std::string(*indirect) + ')';
			case Mode::Displaced:
				return std::to_string(displacement) + '(' + std::string(*indirect) + ')';
			case Mode::Scaled:
				return std::to_string(displacement) + '(' + std::string(*indirect) + ", " + std::string(*index) + ", " +
				       std::to_string(scale) + ')';
			default:
				return "\e[31m???\e[39m";
		}
	}

	std::string Operand::toString() const {
		switch (mode) {
			case Mode::Constant:
				return '$' + std::to_string(displacement);
			case Mode::Direct:
				return std::to_string(displacement);
			case Mode::Indirect:
				return '(' + indirect->toString() + ')';
			case Mode::Displaced:
				return std::to_string(displacement) + '(' + indirect->toString() + ')';
			case Mode::Scaled:
				return std::to_string(displacement) + '(' + indirect->toString() + ", " + index->toString() + ", " +
				       std::to_string(scale) + ')';
			default:
				return "???";
		}
	}
}
