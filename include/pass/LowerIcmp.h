#pragma once

#include <memory>

namespace LL2X {
	class Function;
	struct IcmpNode;
	class Instruction;
}

namespace LL2X::Passes {
	/** Lowers icmp instructions to x86_64 instructions. */
	size_t lowerIcmp(Function &);

	void lowerIcmp(Function &, const std::shared_ptr<Instruction> &, IcmpNode *node);
}
