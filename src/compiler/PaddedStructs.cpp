#include "compiler/Function.h"
#include "compiler/Instruction.h"
#include "compiler/LLVMInstruction.h"
#include "compiler/PaddedStructs.h"
#include "compiler/Variable.h"
#include "instruction/DeferredDestinationMove.h"
#include "instruction/DeferredSourceMove.h"
#include "instruction/Mov.h"
#include "instruction/Shl.h"
#include "instruction/Shr.h"
#include "parser/Nodes.h"
#include "parser/StructNode.h"

#include <cassert>

namespace LL2X::PaddedStructs {
	int64_t getOffset(const StructType &type, int64_t index) {
		assert(0 <= index);

		if (index == 0)
			return 0;

		int64_t offset = 0;
		std::shared_ptr<StructNode> node = type.node;

		if (!node)
			return getOffset(*StructType::knownStructs.at(type.barename()), index);

		if (type.shape == StructShape::Packed) {
			for (int64_t i = 0; i < index; ++i)
				offset += node->types.at(i)->width();
		} else {
			for (int64_t i = 1; i <= index; ++i) {
				const int prev_width = node->types.at(i - 1)->width();
				const int align = 8 * node->types.at(i)->alignment();
				offset = Util::upalign(offset + prev_width, align);
			}
		}
		return offset;
	}

	VariablePtr extract(const VariablePtr &source, int64_t index, Function &function,
	                    const InstructionPtr &instruction) {
		std::list<int64_t> source_regs(source->getRegisters().begin(), source->getRegisters().end());

		TypePtr type = source->getType();
		if (!type)
			throw std::runtime_error("PaddedStructs::extract: source variable has dno type");

		auto *initial_struct_type = dynamic_cast<StructType *>(type.get());
		if (initial_struct_type == nullptr)
			throw std::runtime_error("PaddedStructs::extract: source variable type isn't StructType");

		auto *llvm = dynamic_cast<LLVMInstruction *>(instruction.get());
		if (llvm == nullptr)
			throw std::runtime_error("PaddedStructs::extract not called on an LLVM instruction");

		auto *evnode = dynamic_cast<ExtractValueNode *>(llvm->node);
		if (evnode == nullptr)
			throw std::runtime_error("PaddedStructs::extract not called on an extractvalue node");

		const OperandPtr &out_operand = evnode->operand;
		if (!out_operand->isRegister() || !out_operand->reg)
			throw std::runtime_error("out_operand isn't a valid register operand in PaddedStructs::extract");
		const VariablePtr &out_var = out_operand->reg;

		if (!out_var->getType())
			throw std::runtime_error("ExtractValueNode output variable has no type");

		auto struct_type = initial_struct_type->pad();

		// TODO: support ArrayType

		// int64_t width_sum = 0;
		// for (int64_t i = 0; i < index; ++i)
		// 	width_sum += struct_type->node->types.at(i)->width();

		const int64_t offset = struct_type->paddingMap.at(index);

		// While 64 <= width sum, subtract 64 and skip a source register.
		// The result will be the number of bits to skip in the first used source register.
		int64_t source_reg_index = offset / 8;
		int64_t skip = offset * 8 % 64;

		auto extracted_type = struct_type->node->types.at(index);
		int64_t width_remaining = extracted_type->width();
		int64_t target_remaining = 64;
		int64_t target_reg_index = 0;

		while (0 < width_remaining) {
			const int64_t to_take = std::min({64 - skip, target_remaining, width_remaining});
			VariablePtr from_pack = function.newVariable(OpaqueType::make(), instruction->parent.lock());

			function.comment(instruction, "PaddedStructs(" + source->getType()->toString() + " -> " +
				out_var->getType()->toString() + "): move from pack " + source->toString() + " (" + source->getType()->toString()
				+ ") to " + from_pack->toString() + " (" + from_pack->getType()->toString() + "), index = " + std::to_string(source_reg_index));

			function.insertBefore<DeferredSourceMove, false>(instruction, OpV(source), OpV(from_pack), source_reg_index);

			if (skip != 0) {
				// Normally I'd use a mask and an `and` instruction, but our mask would often be larger than the 32 bits
				// allowed in an instruction's immediate value. What we're doing here is removing the bits we skipped in
				// the source register.
				function.insertShiftBefore<Shl, false>(instruction, Op4(skip), OpV(from_pack), 32);
				function.insertShiftBefore<Shr, false>(instruction, Op4(skip), OpV(from_pack), 32);
			}

			if (skip + to_take < 64) {
				// Same applies here; instead of masking, we have to use two shifts. This time, we're removing the extra
				// bits to the right of the data we want.
				function.insertShiftBefore<Shr, false>(instruction, Op4(64 - skip - to_take), OpV(from_pack), 32);

				// If the output is, say, an i16 type, then we want the data to be right-aligned without the left
				// alignment we use for structs. We can accomplish that by simply not shifting it back to the left here.
				if (out_var->getType()->typeType() == TypeType::Struct)
					function.insertShiftBefore<Shl, false>(instruction, Op4(64 - skip - to_take), OpV(from_pack), 32);
			}

			if (skip != 0)
				function.insertShiftBefore<Shl, false>(instruction, Op4(skip), OpV(from_pack), 32);

			function.insertBefore<DeferredDestinationMove, false>(instruction, OpV(from_pack), OpV(out_var),
				target_reg_index);

			target_remaining -= to_take;
			width_remaining  -= to_take;
			if (target_remaining < 0)
				warn() << "target_remaining (" << target_remaining << ") is less than zero!\n";

			if (target_remaining <= 0) {
				target_remaining = 64;
				++target_reg_index;
			}

			skip = 0;

			// I think this is valid. If the size of the extracted element is less than 64, then all the width is taken
			// care of in one iteration of this loop and this increment doesn't matter. Otherwise, the struct element
			// will be 64-bit aligned and we'll be taking 64 bits at a time (at least until the last iteration,
			// possibly).
			++source_reg_index;
		}

		function.reindexInstructions();

		return out_var;
	}
}
