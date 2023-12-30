#pragma once

#include <memory>

namespace LL2X {
	class Function;
	class Instruction;
	struct GetelementptrNode;
}

namespace LL2X::Passes {
	void lowerGetelementptr(Function &function, const InstructionPtr &anchor, const ASTLocation &, const ConstantPtr &,
	                        TypePtr &base_type, const std::vector<GetelementptrNode::Index> &, OperandPtr &,
	                        int debug_index = -1);

	/** Lowers getelementptr instructions. */
	size_t lowerGetelementptr(Function &);
}
