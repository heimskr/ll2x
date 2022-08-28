#include "util/CompilerUtil.h"
#include "compiler/LLVMInstruction.h"
#include "instruction/TargetInstruction.h"
#include "parser/Nodes.h"

namespace LL2X::CompilerUtil {
	bool isTerminator(const InstructionPtr &instruction) {
		if (auto llvm = std::dynamic_pointer_cast<LLVMInstruction>(instruction))
			switch (llvm->node->nodeType()) {
				case NodeType::BrUncond:
				case NodeType::BrCond:
				case NodeType::Ret:
				case NodeType::Switch:
				case NodeType::Unreachable:
					return true;
				default:
					return false;
			}

		if (auto target = std::dynamic_pointer_cast<TargetInstruction>(instruction))
			return target->alwaysTerminal();

		return false;
	}

#define CAST_METHOD(type, fn_name) \
	type##Node * fn_name##Cast(const InstructionPtr &instruction) { \
		if (auto llvm = std::dynamic_pointer_cast<LLVMInstruction>(instruction)) \
			if (llvm->node->nodeType() == NodeType::type) \
				return dynamic_cast<type##Node *>(llvm->node); \
		return nullptr; \
	}

	CAST_METHOD(BrUncond, brUncond)
	CAST_METHOD(BrCond, brCond)
	CAST_METHOD(Ret, ret)
	CAST_METHOD(Switch, switch)
	CAST_METHOD(Unreachable, unreachable)
}
