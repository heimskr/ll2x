#include "compiler/Function.h"
#include "compiler/Instruction.h"
#include "compiler/LLVMInstruction.h"
#include "instruction/Cmp.h"
#include "instruction/Jmp.h"
#include "pass/LowerBranches.h"
#include "util/Timer.h"

namespace LL2X::Passes {
	size_t lowerBranches(Function &function) {
		Timer timer("LowerBranches");
		std::list<InstructionPtr> to_remove;

		for (InstructionPtr &instruction: function.linearInstructions) {
			const auto *llvm = dynamic_cast<const LLVMInstruction *>(instruction.get());
			if (llvm == nullptr)
				continue;
			const NodeType node_type = llvm->node->nodeType();
			if (node_type == NodeType::BrCond)
				lowerBranch(function, instruction, dynamic_cast<BrCondNode *>(llvm->node));
			else if (node_type == NodeType::BrUncond)
				lowerBranch(function, instruction, dynamic_cast<BrUncondNode *>(llvm->node));
			else
				continue;

			to_remove.push_back(instruction);
		}

		for (InstructionPtr &instruction: to_remove)
			function.remove(instruction);

		return to_remove.size();
	}

	void lowerBranch(Function &function, InstructionPtr &instruction, BrCondNode *br) {
		const ValueType condition_type = br->condition->value->valueType();
		if (condition_type == ValueType::Bool) {
			const BoolValue *boolval = dynamic_cast<BoolValue *>(br->condition->value.get());
			const std::string transformed = function.transformLabel(boolval->value? *br->ifTrue : *br->ifFalse);
			function.insertBefore<Jmp>(instruction, Op8(transformed, false));
		} else if (condition_type == ValueType::Local || condition_type == ValueType::Operand) {
			TypePtr type = br->condition->type;
			OperandPtr condition;

			if (condition_type == ValueType::Local)
				condition = OpV(dynamic_cast<LocalValue *>(br->condition->value.get())->variable);
			else
				condition = dynamic_cast<OperandValue *>(br->condition->value.get())->operand;

			function.insertBefore<Cmp, false>(instruction, condition, Op4(0), type->width());
			function.insertBefore<Jmp, false>(instruction, Op8(function.transformLabel(*br->ifTrue), false),
				x86_64::Condition::IfNotEqual);
			function.insertBefore<Jmp, false>(instruction, Op8(function.transformLabel(*br->ifFalse), false));
		} else {
			br->debug();
			throw std::runtime_error("Expected a bool, pvar or operand for the condition of a conditional jump, got " +
				getName(condition_type));
		}
	}

	void lowerBranch(Function &function, InstructionPtr &instruction, BrUncondNode *br) {
		function.insertBefore<Jmp>(instruction, Op8(function.transformLabel(*br->destination), false));
	}
}
