#include "compiler/Function.h"
#include "compiler/Instruction.h"
#include "compiler/LLVMInstruction.h"
#include "compiler/PaddedStructs.h"
#include "instruction/Mov.h"
#include "parser/StructNode.h"
#include "pass/LowerExtractvalue.h"
#include "util/Timer.h"
#include "util/Util.h"

namespace LL2X::Passes {
	size_t lowerExtractvalue(Function &function) {
		Timer timer("LowerExtractvalue");
		size_t changed = 0;
		std::list<InstructionPtr> to_remove;

		for (InstructionPtr &instruction: function.linearInstructions) {
			auto *llvm = dynamic_cast<LLVMInstruction *>(instruction.get());
			if (!llvm || llvm->node->nodeType() != NodeType::ExtractValue)
				continue;

			auto *ev = dynamic_cast<ExtractValueNode *>(llvm->node);

			ValueType aggregate_type = ev->aggregateValue->valueType();
			const std::string prefix = "LowerExtractvalue(" + std::string(ev->location) + ")";

			if (aggregate_type == ValueType::Undef) {
				function.comment(instruction, prefix + ": undef == 0");
				function.insertBefore<Mov>(instruction, Op4(0), ev->operand);
				to_remove.push_back(instruction);
				++changed;
				continue;
			}

			if (ev->decimals.size() != 1 || (aggregate_type != ValueType::Local && aggregate_type != ValueType::Operand)) {
				warn() << "Skipping unsupported extractvalue node: " << ev->debugExtra() << '\n';
				continue;
			}

			VariablePtr variable;

			if (auto operand_value = std::dynamic_pointer_cast<OperandValue>(ev->aggregateValue)) {
				if (!operand_value->operand->isRegister()) {
					error() << operand_value->operand->ansiString() << '\n';
					throw std::runtime_error("Expected extractvalue operand to be a register");
				}
				variable = operand_value->operand->reg;
			} else if (auto local = std::dynamic_pointer_cast<LocalValue>(ev->aggregateValue)) {
				variable = local->variable;
			}

			if (!variable->getType()) {
				warn() << "Variable " << variable->ansiString() << " has no type.\n";
				continue;
			}

			if (variable->getType()->typeType() != TypeType::Struct) {
				warn() << "Type of variable " << variable->ansiString() << " (" << *variable->getType() << ") isn't Struct.\n";
				continue;
			}

			function.comment(instruction, prefix);
			PaddedStructs::extract(variable, ev->decimals.front(), function, instruction);
			to_remove.push_back(instruction);
			++changed;
		}

		for (InstructionPtr &instruction: to_remove)
			function.remove(instruction);

		return changed;
	}
}
