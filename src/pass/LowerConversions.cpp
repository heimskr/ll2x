#include <cassert>

#include "compiler/Function.h"
#include "compiler/Instruction.h"
#include "compiler/LLVMInstruction.h"
#include "instruction/And.h"
#include "instruction/Mov.h"
#include "instruction/Movsx.h"
#include "instruction/Shl.h"
#include "instruction/Shr.h"
#include "instruction/Sub.h"
#include "instruction/Xor.h"
#include "pass/LowerConversions.h"
#include "util/Timer.h"
#include "util/Util.h"

namespace LL2X::Passes {
	size_t lowerConversions(Function &function) {
		Timer timer("LowerConversions");
		std::list<InstructionPtr> to_remove;

		for (InstructionPtr &instruction: function.linearInstructions) {
			auto *llvm = dynamic_cast<LLVMInstruction *>(instruction.get());
			if (llvm == nullptr || llvm->node->nodeType() != NodeType::Conversion)
				continue;

			auto *conversion = dynamic_cast<ConversionNode *>(llvm->node);
			const Conversion type = conversion->conversionType;

			switch (type) {
				case Conversion::Bitcast:
				case Conversion::Zext:
				case Conversion::Ptrtoint:
				case Conversion::Inttoptr:
					lowerBasicConversion(function, instruction, conversion);
					break;
				case Conversion::Trunc:
					lowerTrunc(function, instruction, conversion);
					break;
				case Conversion::Sext:
					lowerSext(function, instruction, conversion);
					break;
				default:
					conversion->debug();
					throw std::runtime_error("Unsupported conversion: " + conversion_map.at(type));
			}

			to_remove.push_back(instruction);
		}

		for (InstructionPtr &instruction: to_remove)
			function.remove(instruction);

		return to_remove.size();
	}

	void lowerBasicConversion(Function &function, InstructionPtr &instruction, ConversionNode *node) {
		if (!node->value->isOperand())
			throw std::runtime_error("Expected an operand in " + conversion_map.at(node->conversionType) +
				" conversion");
		OperandPtr source = std::dynamic_pointer_cast<OperandValue>(node->value)->operand;
		if (node->operand->isRegister())
			node->operand->reg->setType(node->to);
		function.comment(instruction, "LowerBasicConversion(" + std::string(node->location) + "): " +
			source->type->toString() + ' ' + source->toString() + " -> " + node->operand->type->toString() + ' ' +
			node->operand->toString());
		function.insertBefore<Mov>(instruction, source, node->operand);
		if (source->bitWidth < 32 && source->bitWidth < node->operand->bitWidth) {
			function.comment(instruction, "Truncate value to " + std::to_string(source->bitWidth) + " bits");
			function.insertBefore<And>(instruction, Op4((1 << source->bitWidth) - 1),
				node->operand->copy()->setWidth(32));
		}
	}

	void lowerTrunc(Function &function, InstructionPtr &instruction, ConversionNode *conversion) {
		if (!conversion->to->isInt())
			throw std::runtime_error("Trunc conversion expected to convert to an integer type");

		if (!conversion->value->isOperand())
			throw std::runtime_error("Expected an operand in zext conversion");
		OperandPtr source = std::dynamic_pointer_cast<OperandValue>(conversion->value)->operand;
		OperandPtr destination = conversion->operand;
		assert(source != nullptr);
		assert(destination != nullptr);

		const int from = conversion->from->width();
		const int to = conversion->to->width();
		const std::string prefix = "LowerTrunc(" + std::string(conversion->location) + "): " + std::to_string(from) +
			" to " + std::to_string(to) + ", ";

		if (32 < to) {
			// If the number of bits to truncate to is greater than 32, we can't fit a mask in an immediate value.
			// Instead, we can shift left and then right by the same number of bits to clear the higher bits.
			function.comment(instruction, prefix + "move");
			function.insertBefore<Mov, false>(instruction, source, destination);
			function.comment(instruction, prefix + "left shift");
			function.insertShiftBefore<Shl, false>(instruction, Op4(64 - to), destination);
			function.comment(instruction, prefix + "right shift");
			function.insertShiftBefore<Shr>(instruction, Op4(64 - to), destination);
		} else {
			const int64_t mask = (1l << conversion->to->width()) - 1;
			function.comment(instruction, prefix + "move");
			function.insertBefore<Mov, false>(instruction, source, destination);
			function.comment(instruction, prefix + "apply mask");
			function.insertBefore<And>(instruction, Op4(mask), destination->copy()->setWidth(64));
		}
	}

	void lowerSext(Function &function, InstructionPtr &instruction, ConversionNode *conversion) {
		if (!conversion->from->isInt() || !conversion->to->isInt())
			throw std::runtime_error("Expected from and to types to be integer types in sext conversion");

		if (!conversion->value->isOperand())
			throw std::runtime_error("Expected an operand in zext conversion");

		OperandPtr source = std::dynamic_pointer_cast<OperandValue>(conversion->value)->operand;
		OperandPtr destination = conversion->operand;
		const int from = conversion->from->width();
		const int to   = conversion->to->width();

		if (from != 8 && from != 16 && from != 32 && from != 64) {
			if (to == 64 || to == 32 || to == 16) {
				// Credit for formula: Sean Eron Anderson <seander@cs.stanford.edu>
				// http://graphics.stanford.edu/~seander/bithacks.html
				VariablePtr temp_var = function.newVariable(IntType::make(x86_64::getWidth(destination->width)),
					instruction->parent.lock());
				// mov $1, %temp
				function.insertBefore<Mov, false>(instruction, Op4(1), OpV(temp_var));
				// shl $(from - 1), %temp
				function.insertShiftBefore<Shl, false>(instruction, Op4(from - 1), OpV(temp_var));
				// Now %temp contains "m".
				// mov %src, %dest
				function.insertBefore<Mov, false>(instruction, source, destination);
				// xor %temp, %dest
				function.insertBefore<Xor, false>(instruction, OpV(temp_var), destination);
				// sub %temp, %dest
				function.insertBefore<Sub>(instruction, OpV(temp_var), destination);

				if (to == 32) {
					// We can take advantage of the fact that doing an operation on a 32-bit register clears the upper
					// 32 bits.
					OperandPtr chopped = OpX(32, *destination);
					function.comment(instruction, "LowerSext(" + std::string(conversion->location) + "): to == 32");
					function.insertBefore<Mov>(instruction, chopped, chopped);
				}
			} else
				throw std::runtime_error("Sign extensions to widths other than 64 and 32 are currently unsupported (" +
					std::string(conversion->location) + ")");
		} else {
			assert(source->width      == x86_64::getWidth(from));
			assert(destination->width == x86_64::getWidth(to));
			function.insertBefore<Movsx>(instruction, source, destination);
		}

		// TODO: support other destination widths
	}
}
