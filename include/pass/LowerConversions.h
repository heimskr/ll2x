#pragma once

#include <memory>

namespace LL2X {
	class Function;
	class Instruction;
	struct ConversionNode;
}

namespace LL2X::Passes {
	/** Lowers conversion instructions. */
	size_t lowerConversions(Function &);

	void lowerBasicConversion(Function &, std::shared_ptr<Instruction> &, ConversionNode *);
	void lowerTrunc(Function &, std::shared_ptr<Instruction> &, ConversionNode *);
	void lowerSext(Function &, std::shared_ptr<Instruction> &, ConversionNode *);
}
