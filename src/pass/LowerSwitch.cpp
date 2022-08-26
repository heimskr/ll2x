#include "compiler/Function.h"
#include "compiler/Instruction.h"
#include "compiler/LLVMInstruction.h"
#include "exception/TypeError.h"
#include "instruction/Cmp.h"
#include "instruction/Jmp.h"
#include "pass/LowerSwitch.h"
#include "util/Timer.h"

namespace LL2X::Passes {
	size_t lowerSwitch(Function &function) {
		Timer timer("LowerSwitch");
		std::list<InstructionPtr> to_remove;

		for (const InstructionPtr &instruction: function.linearInstructions) {
			auto llvm = std::dynamic_pointer_cast<LLVMInstruction>(instruction);
			if (!llvm || llvm->node->nodeType() != NodeType::Switch)
				continue;
			auto *sw = dynamic_cast<SwitchNode *>(llvm->node);

			BasicBlockPtr block = instruction->parent.lock();
			InstructionPtr last_instruction = instruction;

			OperandPtr switch_operand;

			if (sw->value->isLocal())
				switch_operand = OpV(std::dynamic_pointer_cast<LocalValue>(sw->value)->variable);
			else if (sw->value->isOperand())
				switch_operand = std::dynamic_pointer_cast<OperandValue>(sw->value)->operand;
			else
				throw TypeError("Expected a pvar or operand in switch instruction", sw->type);

			function.comment(instruction, "LowerSwitch(" + std::string(sw->location) + "): begin conditions");

			for (const auto &[type, value, label]: sw->table) {
				if (!value->isIntLike()) {
					error() << instruction->debugExtra() << '\n';
					throw TypeError("Expected int constant in table of switch instruction", type);
				}

				function.insertBefore<Cmp, false>(instruction, switch_operand, Op4(value->longValue()));
				function.insertBefore<Jmp, false>(instruction, OpL(*label), x86_64::Condition::IfEqual);
			}

			function.comment(instruction, "LowerSwitch(" + std::string(sw->location) + "): default");
			function.insertBefore<Jmp, false>(instruction, OpL(*sw->label));
			to_remove.push_back(instruction);
		}

		if (!to_remove.empty())
			function.reindexInstructions();

		for (InstructionPtr &instruction: to_remove)
			function.remove(instruction);

		return to_remove.size();
	}
}
