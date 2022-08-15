#pragma once

#include <memory>

#include "parser/ASTNode.h"

namespace LL2X {
	struct Constant;
	class Function;
	class Instruction;
	class LLVMInstruction;
}

namespace LL2X::Passes {
	/** Replaces loads and stores with Why instructions. */
	size_t lowerMemory(Function &);

	/** Replaces a load instruction with a Why instruction. */
	void lowerLoad(Function &, std::shared_ptr<Instruction> &, LLVMInstruction &);

	/** Replaces a store instruction with a Why instruction. */
	void lowerStore(Function &, std::shared_ptr<Instruction> &, LLVMInstruction &);

	/** Returns a load/store size in bytes. */
	int getLoadStoreSize(std::shared_ptr<Constant> &, const std::shared_ptr<Instruction> &);
}
