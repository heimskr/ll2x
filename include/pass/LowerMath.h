#pragma once

#include <memory>

namespace LL2X {
	struct BasicMathNode;
	class Function;
	class Instruction;
	struct LogicNode;
}

namespace LL2X::Passes {
	/** Lowers mathematical and logic instructions. */
	size_t lowerMath(Function &);

	void lowerMath(Function &, const std::shared_ptr<Instruction> &, BasicMathNode *);
	void lowerMult(Function &, const std::shared_ptr<Instruction> &, BasicMathNode *);
	void lowerLogic(Function &, const std::shared_ptr<Instruction> &, LogicNode *);
}
