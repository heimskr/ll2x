#include <iostream>

#include "compiler/Function.h"
#include "compiler/Instruction.h"
#include "compiler/LLVMInstruction.h"
#include "instruction/Cmp.h"
#include "instruction/Mov.h"
#include "pass/LowerIcmp.h"
#include "util/Timer.h"

namespace LL2X::Passes {
	int lowerIcmp(Function &function) {
		Timer timer("LowerIcmp");
		std::list<InstructionPtr> to_remove;

		for (InstructionPtr &instruction: function.linearInstructions) {
			LLVMInstruction *llvm = dynamic_cast<LLVMInstruction *>(instruction.get());
			if (!llvm || llvm->node->nodeType() != NodeType::Icmp)
				continue;
			lowerIcmp(function, instruction, dynamic_cast<IcmpNode *>(llvm->node));
			to_remove.push_back(instruction);
		}

		for (InstructionPtr &instruction: to_remove)
			function.remove(instruction);

		return to_remove.size();
	}

	void lowerIcmp(Function &function, const InstructionPtr &instruction, IcmpNode *node) {
		if (node->getType()->typeType() == TypeType::Vector)
			throw std::runtime_error("Vectors are unsupported in icmp instructions");

		IcmpCond cond = node->cond;

		auto values = node->allValuePointers();
		ValuePtr &value1 = *values[0], &value2 = *values[1];

		if (value1->valueType() != ValueType::Local) {
			if (value2->valueType() == ValueType::Local) {
				// Sometimes there's a non-pvar on the left and a pvar on the right. When this occurs, we can make
				// things simple by just swapping the two values and flipping the comparison operator.
				std::swap(value1, value2);
				cond = cond_rev_map.at(cond);
			} else {
				ValuePtr local = LocalValue::make(function.makeVariable(value1, instruction));
				std::swap(value1, local);
				// node->debug();
				// throw std::runtime_error("First value of icmp instruction expected to be a pvar");
			}
		}

		auto int_type = std::dynamic_pointer_cast<IntType>(node->getType());
		if (!int_type && node->getType()->typeType() != TypeType::Pointer) {
			node->debug();
			throw std::invalid_argument("icmp instructions must have an integer or pointer type");
		}

		VariablePtr rs = dynamic_cast<LocalValue *>(value1.get())->variable;
		OperandPtr rd = node->operand;
		
		const ValueType type2 = value2->valueType();
		if (type2 == ValueType::Local || type2 == ValueType::Global) {
			VariablePtr rt;
			const int size = node->getType()->width();
			const auto width = x86_64::getWidth(size);

			if (type2 == ValueType::Local) {
				rt = dynamic_cast<LocalValue *>(value2.get())->variable;
			} else {
				rt = function.newVariable(node->getType(), instruction->parent.lock());
				VariablePtr rip = function.instructionPointer(instruction);
				function.insertBefore(instruction, std::make_shared<Mov>(Operand8(rt),
					OperandX(width, *dynamic_cast<GlobalValue *>(value2.get())->name, rip), x86_64::Width::Eight))
					->setDebug(node)->extract();
				function.insertBefore(instruction, std::make_shared<Mov>(Operand8(rt),
					OperandX(width, 0, rt), width))->setDebug(node)->extract();
			}

			function.insertBefore(instruction, std::make_shared<Cmp>(OperandX(width, rs), OperandX(width, rt),
				width))->setDebug(node)->extract();
			OperandPtr temp = OperandV(function.newVariable(IntType::make(32), instruction->parent.lock()));
			function.insertBefore(instruction, std::make_shared<Mov>(Operand4(1), temp))->setDebug(node)->extract();
			function.insertBefore(instruction, std::make_shared<Mov>(temp, rd, width, x86_64::getCondition(cond)))
				->setDebug(node)->extract();
		} else {
			int64_t imm;
			if (type2 == ValueType::Int)
				imm = dynamic_cast<IntValue *>(value2.get())->value;
			else if (type2 == ValueType::Null)
				imm = 0;
			else
				throw std::runtime_error("Unsupported value type in icmp instruction: " + value_map.at(type2));

			const int size = node->getType()->width();
			const auto width = x86_64::getWidth(size);

			function.insertBefore(instruction, std::make_shared<Cmp>(OperandX(width, rs), OperandX(width, imm), width))
				->setDebug(node)->extract();
			OperandPtr temp = OperandV(function.newVariable(IntType::make(32), instruction->parent.lock()));
			function.insertBefore(instruction, std::make_shared<Mov>(Operand4(1), temp))->setDebug(node)->extract();
			function.insertBefore(instruction, std::make_shared<Mov>(temp, rd, width, x86_64::getCondition(cond)))
				->setDebug(node)->extract();
		}
	}
}
