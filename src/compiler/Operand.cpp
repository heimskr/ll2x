#include "compiler/Operand.h"
#include "compiler/Variable.h"

namespace LL2X {
	Operand::operator std::string() const {
		switch (mode) {
			case Mode::Constant:
				return "\e[32m$" + std::to_string(displacement) + "\e[39m";
			case Mode::Direct:
				return std::to_string(displacement);
			case Mode::Register:
				return std::string(*reg);
			case Mode::Displaced:
				if (displacement == 0)
					return '(' + std::string(*reg) + ')';
				return std::to_string(displacement) + '(' + std::string(*reg) + ')';
			case Mode::Scaled:
				if (displacement == 0)
					return '(' + std::string(*reg) + ", " + std::string(*index) + ", " + std::to_string(scale) + ')';
				return std::to_string(displacement) + '(' + std::string(*reg) + ", " + std::string(*index) + ", " +
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
			case Mode::Register:
				return reg->toString();
			case Mode::Displaced:
				if (displacement == 0)
					return '(' + reg->toString() + ')';
				return std::to_string(displacement) + '(' + reg->toString() + ')';
			case Mode::Scaled:
				if (displacement == 0)
					return '(' + reg->toString() + ", " + index->toString() + ", " + std::to_string(scale) + ')';
				return std::to_string(displacement) + '(' + reg->toString() + ", " + index->toString() + ", " +
				       std::to_string(scale) + ')';
			default:
				return "???";
		}
	}
}
