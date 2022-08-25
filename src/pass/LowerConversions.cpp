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
	int lowerConversions(Function &function) {
		Timer timer("LowerConversions");
		std::list<InstructionPtr> to_remove;

		for (InstructionPtr &instruction: function.linearInstructions) {
			LLVMInstruction *llvm = dynamic_cast<LLVMInstruction *>(instruction.get());
			if (!llvm || llvm->node->nodeType() != NodeType::Conversion)
				continue;
			
			ConversionNode *conversion = dynamic_cast<ConversionNode *>(llvm->node);
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
		auto move = std::make_shared<Mov>(source, node->operand);
		function.insertBefore(instruction, move);
		move->setDebug(node)->extract();
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

		const int from = conversion->from->width(), to = conversion->to->width();
		const std::string tag = std::to_string(from) + " to " + std::to_string(to);

		if (32 < to) {
			// If the number of bits to truncate to is greater than 32, we can't fit a mask in an immediate value.
			// Instead, we can shift left and then right by the same number of bits to clear the higher bits.
			auto mov   = std::make_shared<Mov>(source, destination);
			auto left  = std::make_shared<Shl>(Op4(64 - to), destination);
			auto right = std::make_shared<Shr>(Op4(64 - to), destination);
			function.insertBefore(instruction, mov,   "LowerTrunc: " + tag + ", move");
			function.insertBefore(instruction, left,  "LowerTrunc: " + tag + ", left shift");
			function.insertBefore(instruction, right, "LowerTrunc: " + tag + ", right shift");
			mov->setDebug(conversion)->extract();
			left->setDebug(conversion)->extract();
			right->setDebug(conversion)->extract();
		} else {
			const int mask = static_cast<int>((1l << conversion->to->width()) - 1);
			auto mov = std::make_shared<Mov>(source, destination);
			auto and_ = std::make_shared<And>(Op4(mask), destination);
			function.insertBefore(instruction, mov, "LowerTrunc: " + tag + ", move");
			function.insertBefore(instruction, and_, "LowerTrunc: " + tag + ", apply mask");
			and_->setDebug(conversion)->extract();
		}
	}

	void lowerSext(Function &function, InstructionPtr &instruction, ConversionNode *conversion) {
		if (!conversion->from->isInt() || !conversion->to->isInt())
			throw std::runtime_error("Expected from and to types to be integer types in sext conversion");

		if (!conversion->value->isOperand())
			throw std::runtime_error("Expected an operand in zext conversion");
		OperandPtr source = std::dynamic_pointer_cast<OperandValue>(conversion->value)->operand;
		OperandPtr destination = conversion->operand;

		const int from = conversion->from->width(), to = conversion->to->width();

		if (from != 8 && from != 16 && from != 32 && from != 64) {
			if (to == 64 || to == 32 || to == 16) {
				// Credit for formula: Sean Eron Anderson <seander@cs.stanford.edu>
				// http://graphics.stanford.edu/~seander/bithacks.html
				VariablePtr temp_var = function.newVariable(IntType::make(x86_64::getWidth(destination->width)),
					instruction->parent.lock());
				// mov $1, %temp
				auto mov1 = std::make_shared<Mov>(Op4(1), OpV(temp_var));
				// shl $(from - 1), %temp
				auto shift = std::make_shared<Shl>(Op4(from - 1), OpV(temp_var));
				// Now %temp contains "m".
				// mov %src, %dest
				auto mov = std::make_shared<Mov>(source, destination);
				// xor %temp, %dest
				auto xor_ = std::make_shared<Xor>(OpV(temp_var), destination);
				// sub %temp, %dest
				auto sub = std::make_shared<Sub>(OpV(temp_var), destination);
				for (const InstructionPtr &inst: std::initializer_list<InstructionPtr> {mov1, shift, mov, xor_, sub})
					function.insertBefore(instruction, inst)->setDebug(conversion)->extract();

				if (to == 32) {
					// We can take advantage of the fact that doing an operation on a 32-bit register clears the upper
					// 32 bits.
					OperandPtr chopped = OpX(x86_64::Width::Four, *destination);
					function.insertBefore(instruction, std::make_shared<Mov>(chopped, chopped), "LowerSext: to == 32")
						->setDebug(conversion)->extract();
				}
			} else
				throw std::runtime_error("Sign extensions to widths other than 64 and 32 are currently unsupported (" +
					std::string(conversion->location) + ")");
		} else {
			assert(source->width == x86_64::getWidth(from));
			assert(destination->width == x86_64::getWidth(to));

			function.insertBefore(instruction, std::make_shared<Movsx>(source, destination))
				->setDebug(conversion)->extract();
		}

		// TODO: support other destination widths
	}
}
