#pragma once

#include <memory>

namespace LL2X {
	class Variable;
	struct Operand;

	using VariablePtr = std::shared_ptr<Variable>;
	using OperandPtr = std::shared_ptr<Operand>;
}
