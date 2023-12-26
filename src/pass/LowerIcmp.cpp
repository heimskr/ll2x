#include <cassert>
#include <iostream>

#include "compiler/Function.h"
#include "compiler/Instruction.h"
#include "compiler/LLVMInstruction.h"
#include "instruction/Cmp.h"
#include "instruction/Mov.h"
#include "instruction/Set.h"
#include "pass/LowerIcmp.h"
#include "util/Timer.h"

namespace LL2X::Passes {
	size_t lowerIcmp(Function &function) {
		Timer timer("LowerIcmp");
		std::list<InstructionPtr> to_remove;

		for (const InstructionPtr &instruction: function.linearInstructions) {
			auto *llvm = dynamic_cast<LLVMInstruction *>(instruction.get());
			if (llvm == nullptr || llvm->node->nodeType() != NodeType::Icmp)
				continue;
			lowerIcmp(function, instruction, dynamic_cast<IcmpNode *>(llvm->node));
			to_remove.push_back(instruction);
		}

		if (!to_remove.empty()) {
			function.reindexInstructions();
			for (const InstructionPtr &instruction: to_remove)
				function.remove(instruction);
		}

		return to_remove.size();
	}

	void lowerIcmp(Function &function, const InstructionPtr &instruction, IcmpNode *node) {
		if (node->getType()->typeType() == TypeType::Vector)
			throw std::runtime_error("Vectors are unsupported in icmp instructions");

		IcmpCond cond = node->cond;

		auto values = node->allValuePointers();
		ValuePtr &value1 = *values[0];
		ValuePtr &value2 = *values[1];

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
		if (!int_type) {
			if (TypeType tt = node->getType()->typeType(); tt != TypeType::Pointer && tt != TypeType::OpaquePointer) {
				node->debug();
				throw std::invalid_argument("icmp instructions must have an integer or pointer type");
			}
		}

		VariablePtr left = dynamic_cast<LocalValue *>(value1.get())->variable;
		OperandPtr destination = node->operand;
		destination->width = x86_64::Width::Low;

		const ValueType type2 = value2->valueType();

		const std::string prefix = "LowerIcmp(" + std::string(node->location) + "): ";

		if (type2 == ValueType::Local || type2 == ValueType::Global) {

			VariablePtr right;
			const auto width = node->getType()->width();

			if (type2 == ValueType::Local) {
				right = dynamic_cast<LocalValue *>(value2.get())->variable;
				function.comment(instruction, prefix + left->type->toString() + ' ' + left->toString() + " vs. local " + right->toString());
			} else {
				right = function.newVariable(node->getType(), instruction->parent.lock());
				const std::string &name = *dynamic_cast<GlobalValue *>(value2.get())->name;
				function.comment(instruction, prefix + left->type->toString() + ' ' + left->toString() + " vs. global " + name);
				function.insertBefore<Mov, false>(instruction, OpX(width, name, function.pcRip), Op8(right));
			}

			function.insertBefore<Cmp, false>(instruction, OpX(width, right), OpX(width, left), width);
			function.insertBefore<Set, false>(instruction, destination, x86_64::getCondition(cond));

		} else if (type2 == ValueType::Operand) {

			const auto width = node->getType()->width();
			const auto &operand = dynamic_cast<OperandValue *>(value2.get())->operand;
			// TODO: verify right operand width
			function.comment(instruction, prefix + left->type->toString() + ' ' + left->toString() + " vs. operand " + operand->type->toString() + ' ' + operand->toString());
			function.insertBefore<Cmp, false>(instruction, operand, OpX(width, left), width);
			function.insertBefore<Set, false>(instruction, destination, x86_64::getCondition(cond));

		} else {

			int64_t imm = 0;
			if (type2 == ValueType::Int)
				imm = dynamic_cast<IntValue *>(value2.get())->value;
			else if (type2 != ValueType::Null && type2 != ValueType::Zeroinitializer && type2 != ValueType::Undef)
				throw std::runtime_error("Unsupported value type in icmp instruction: " + value_map.at(type2));

			const int size = node->getType()->width();
			function.comment(instruction, prefix + left->type->toString() + ' ' + left->toString() + " vs. intlike " + std::to_string(imm));
			function.insertBefore<Cmp, false>(instruction, OpX(size, left), OpX(size, imm), size);
			function.insertBefore<Set, false>(instruction, destination, x86_64::getCondition(cond));

		}
	}
}
