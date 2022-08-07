#pragma once

#include <memory>

namespace LL2X {
	class Instruction;
	struct BrUncondNode;
	struct BrCondNode;
	struct RetNode;
	struct SwitchNode;
	struct UnreachableNode;

	namespace CompilerUtil {
		bool isTerminator(std::shared_ptr<Instruction>);

		   BrUncondNode *    brUncondCast(std::shared_ptr<Instruction>);
		     BrCondNode *      brCondCast(std::shared_ptr<Instruction>);
		        RetNode *         retCast(std::shared_ptr<Instruction>);
		     SwitchNode *      switchCast(std::shared_ptr<Instruction>);
		UnreachableNode * unreachableCast(std::shared_ptr<Instruction>);
	}
}
