#include "compiler/Function.h"
#include "compiler/Instruction.h"
#include "compiler/LLVMInstruction.h"
#include "instruction/Cmp.h"
#include "instruction/Jmp.h"
#include "pass/LowerBranches.h"
#include "util/Timer.h"

namespace LL2X::Passes {
	int lowerBranches(Function &function) {
		Timer timer("LowerBranches");
		std::list<InstructionPtr> to_remove;

		for (InstructionPtr &instruction: function.linearInstructions) {
			const LLVMInstruction *llvm = dynamic_cast<LLVMInstruction *>(instruction.get());
			if (!llvm)
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
			auto jmp = std::make_shared<Jmp>(Operand8(transformed, false));
			function.insertBefore(instruction, jmp)->setDebug(*br)->extract();
		} else if (condition_type == ValueType::Local || condition_type == ValueType::Operand) {
			TypePtr type = br->condition->type;
			OperandPtr condition;
			if (condition_type == ValueType::Local)
				condition = OperandV(dynamic_cast<LocalValue *>(br->condition->value.get())->variable);
			else
				condition = dynamic_cast<OperandValue *>(br->condition->value.get())->operand;
			auto cmp = std::make_shared<Cmp>(condition, Operand4(0), type->width());
			auto jmp_true = std::make_shared<Jmp>(Operand8(function.transformLabel(*br->ifTrue), false),
				x86_64::Condition::IfNotEqual);
			auto jmp_false = std::make_shared<Jmp>(Operand8(function.transformLabel(*br->ifFalse), false));
			function.insertBefore(instruction, cmp)->setDebug(*br)->extract();
			function.insertBefore(instruction, jmp_true)->setDebug(*br)->extract();
			function.insertBefore(instruction, jmp_false)->setDebug(*br)->extract();
		} else {
			br->debug();
			throw std::runtime_error("Expected a bool, pvar or operand for the condition of a conditional jump, got " +
				getName(condition_type));
		}
	}

	void lowerBranch(Function &function, InstructionPtr &instruction, BrUncondNode *br) {
		function.insertBefore(instruction,
			std::make_shared<Jmp>(Operand8(function.transformLabel(*br->destination), false)))
			->setDebug(*br)->extract();
	}
}
