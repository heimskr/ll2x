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
	int lowerMath(Function &);

	void lowerMath(Function &, std::shared_ptr<Instruction> &, BasicMathNode *);
	void lowerMult(Function &, std::shared_ptr<Instruction> &, BasicMathNode *);
	void lowerLogic(Function &, std::shared_ptr<Instruction> &, LogicNode *);
}
