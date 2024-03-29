#include "compiler/StackLocation.h"
#include "compiler/Variable.h"

namespace LL2X {
	StackLocation::StackLocation(Function *function_, std::shared_ptr<Variable> variable_, Purpose purpose_,
	int offset_, int width_, int align_):
		function(function_), purpose(purpose_), offset(offset_), width(width_), align(align_),
		variable(std::move(variable_)) {}

	StackLocation::StackLocation(Function *function_, LL2X::Type *type_, Purpose purpose_, int offset_, int width_,
	int align_):
		function(function_), purpose(purpose_), offset(offset_), width(width_), align(align_), type(type_->copy()) {}

	TypePtr StackLocation::getType() const {
		return type? type : variable->getType();
	}

	std::string StackLocation::getName() const {
		return variable->ansiString(x86_64::Width::Eight);
	}

	bool StackLocation::operator==(const StackLocation &other) const {
		return function == other.function && offset == other.offset && width == other.width && align == other.align && type == other.type &&
			variable == other.variable;
	}
}
