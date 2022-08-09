#pragma once

#include <memory>

namespace LL2X {
	class Function;
	class Instruction;
	struct BrCondNode;
	struct BrUncondNode;
}

namespace LL2X::Passes {
	/** Replaces LLVM branches with x86_64 instructions. Returns the number of instructions replaced. */
	int lowerBranches(Function &);

	void lowerBranch(Function &, std::shared_ptr<Instruction> &, BrCondNode *);
	void lowerBranch(Function &, std::shared_ptr<Instruction> &, BrUncondNode *);
}
