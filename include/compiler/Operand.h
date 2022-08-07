#pragma once

#include <memory>
#include <variant>

#include "Declarations.h"

namespace LL2X {
	struct Operand {
		using Number = int64_t;

		std::variant<VariablePtr, Number> variant;

		Operand & operator=(const VariablePtr &variable) {
			variant = variable;
			return *this;
		}

		Operand & operator=(Number number) {
			variant = number;
			return *this;
		}

		VariablePtr copyVariable() const {
			return isVariable()? getVariable() : nullptr;
		}

		VariablePtr & getVariable() {
			return std::get<VariablePtr>(variant);
		}

		Number & getNumber() {
			return std::get<Number>(variant);
		}

		const VariablePtr & getVariable() const {
			return std::get<VariablePtr>(variant);
		}

		const Number & getNumber() const {
			return std::get<Number>(variant);
		}

		bool isVariable() const {
			return std::holds_alternative<VariablePtr>(variant);
		}

		bool isNumber() const {
			return std::holds_alternative<Number>(variant);
		}

		operator VariablePtr &() {
			return std::get<VariablePtr>(variant);
		}

		operator const VariablePtr &() const {
			return std::get<VariablePtr>(variant);
		}

		operator VariablePtr() const {
			return copyVariable();
		}

		operator Number &() {
			return std::get<Number>(variant);
		}

		operator const Number &() const {
			return std::get<Number>(variant);
		}

		operator Number() const {
			return std::get<Number>(variant);
		}
	};
}
