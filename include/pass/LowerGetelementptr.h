#pragma once

#include <memory>

#include "parser/Nodes.h"
#include "parser/Values.h"

namespace LL2X {
	class Function;
	class Instruction;
}

namespace LL2X::Passes {
	std::vector<GetelementptrNode::Index> convertDecimals(const decltype(GetelementptrValue::decimals) &);

	void lowerGetelementptr(Function &function, const InstructionPtr &anchor, const ASTLocation &, const ConstantPtr &,
	                        TypePtr &base_type, const std::vector<GetelementptrNode::Index> &, OperandPtr &,
	                        int debug_index = -1);

	/** Lowers getelementptr instructions. */
	size_t lowerGetelementptr(Function &);
}
