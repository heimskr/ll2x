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
			auto jmp = std::make_shared<JmpInstruction>(Operand8(transformed));
			function.insertBefore(instruction, jmp)->setDebug(*br)->extract();
		} else if (condition_type != ValueType::Local) {
			br->debug();
			throw std::runtime_error("Expected a pvar for the condition of a conditional jump, got " +
				getName(condition_type));
		} else {
			TypePtr type = br->condition->type;
			auto *local = dynamic_cast<LocalValue *>(br->condition->value.get());
			VariablePtr condition = local->variable;
			auto width = x86_64::getWidth(type->width());
			auto cmp = std::make_shared<CmpInstruction>(Operand(width, condition), Operand4(0), width);
			auto jmp_true = std::make_shared<JmpInstruction>(Operand8(function.transformLabel(*br->ifTrue)),
				x86_64::Condition::IfNotEqual);
			auto jmp_false = std::make_shared<JmpInstruction>(Operand8(function.transformLabel(*br->ifFalse)));
			function.insertBefore(instruction, cmp)->setDebug(*br)->extract();
			function.insertBefore(instruction, jmp_true)->setDebug(*br)->extract();
			function.insertBefore(instruction, jmp_false)->setDebug(*br)->extract();
		}
	}

	void lowerBranch(Function &function, InstructionPtr &instruction, BrUncondNode *br) {
		function.insertBefore(instruction,
			std::make_shared<JmpInstruction>(Operand8(function.transformLabel(*br->destination))))
			->setDebug(*br)->extract();
	}
}
