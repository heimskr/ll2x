#pragma once

#include <memory>
#include <unordered_map>

namespace LL2X {
	class Function;
	class Instruction;
	class Variable;
	struct Clobber;
	struct Constant;
	struct Operand;
}

namespace LL2X::Passes {
	using ClobberMap = std::unordered_map<int, std::shared_ptr<Clobber>>;

	/** Copies arguments into the argument registers or onto the stack as necessary before each call. */
	void setupCalls(Function &);

	/** Pushes a value to the stack before a call instruction. Returns how many bytes were pushed. */
	int pushCallValue(Function &, const std::shared_ptr<Instruction> &, const std::shared_ptr<Constant> &, int pushed,
		const ClobberMap &);

	/** Inserts a value into a precolored variable before a call instruction. */
	std::shared_ptr<Instruction> setupCallValue(Function &, const std::shared_ptr<Operand> &,
		const std::shared_ptr<Instruction> &, const std::shared_ptr<Constant> &, const ClobberMap &);
}
