#include "compiler/Function.h"
#include "compiler/Instruction.h"
#include "compiler/LLVMInstruction.h"
#include "instruction/Add.h"
#include "instruction/And.h"
#include "instruction/Clobber.h"
#include "instruction/Div.h"
#include "instruction/Lea.h"
#include "instruction/Mov.h"
#include "instruction/Mul.h"
#include "instruction/Pop.h"
#include "instruction/Push.h"
#include "instruction/Sub.h"
#include "pass/LowerAlloca.h"
#include "util/Timer.h"
#include "util/Util.h"

namespace LL2X::Passes {
	int lowerAlloca(Function &function) {
		Timer timer("LowerAlloca");
		std::list<InstructionPtr> to_remove;

		int  replaced_count = 0;
		BasicBlockPtr entry = function.getEntry();
		const VariablePtr &rbp = function.pcRbp;
		const VariablePtr &rsp = function.pcRsp;

		VariablePtr alloca_reg = rsp;

		InstructionPtr previous_aligner;
		BasicBlockPtr previous_block;

		// Loop over all instructions, ignoring everything except allocas.
		for (InstructionPtr &instruction: function.linearInstructions) {
			auto llvm = std::dynamic_pointer_cast<LLVMInstruction>(instruction);

			if (!llvm || llvm->node->nodeType() != NodeType::Alloca) {
				if (!instruction->isComment()) {
					previous_aligner.reset();
					previous_block.reset();
				}
				continue;
			}

			auto *alloca = dynamic_cast<AllocaNode *>(llvm->node);

			const std::string prefix = "LowerAlloca(" + std::string(alloca->location) + "): ";

			// First, mark the alloca instruction for removal.
			to_remove.push_back(instruction);
			++replaced_count;

			BasicBlockPtr block = llvm->parent.lock();

			auto placed = [&](InstructionPtr aligner) {
				previous_aligner = aligner;
				previous_block = block;
			};

			// If the previous instruction processed was an alloca, we can remove its aligner and replace it.
			if (block == previous_block && previous_aligner) {
				to_remove.push_back(previous_aligner);
			}

			if (block->isPrimordial()) {
				// If we know the alloca runs only once and has a fixed size, we can assign a static location on the
				// stack for it instead of doing runtime stack pointer math.

				if (!alloca->numelementsValue || alloca->numelementsValue->isIntLike()) {
					int64_t size = Util::upalign(alloca->type->width(), 8) / 8;
					if (alloca->numelementsValue)
						size *= alloca->numelementsValue->longValue();

					if (Util::outOfRange(size))
						warn() << "Alloca size at " << alloca->location << " is too large: " << size << '\n';

					VariablePtr destination = function.getVariable(*alloca->result);
					const auto &location = function.addToStack(destination, StackLocation::Purpose::Alloca, size, alloca->align);

					// function.replaceSimilarOperand(OpV(destination), Op8(-location.offset, rbp));

					function.comment(instruction, prefix + "size = " + std::to_string(size) + ", type = " +
						(destination->getType()? destination->getType()->toString() : "?") + ", var = " + destination->toString());
					function.insertBefore<Lea, false>(instruction, Op8(-location.offset, rbp), Op8(destination));
					continue;
				}
			}

			// Move the stack pointer down to get the alignment right.
			if (alloca->align == 16 || alloca->align == 8 || alloca->align == 4 || alloca->align == 2) {
				function.insertBefore<And, false>(instruction, Op4(-alloca->align), Op8(rsp));
			} else if (0 < alloca->align) {
				const int64_t align = Util::upalign(alloca->align, 16);
				VariablePtr   temp  = function.newVariable(IntType::make(64), block);
				OperandPtr    rax   = Op8(function.makePrecoloredVariable(x86_64::rax, block));
				OperandPtr    rdx   = Op8(function.makePrecoloredVariable(x86_64::rdx, block));

				// I hope this part is never run.

				// clobber %rax
				auto rax_clobber = function.clobber(instruction, x86_64::rax);
				// clobber %rdx
				auto rdx_clobber = function.clobber(instruction, x86_64::rdx);
				// mov %rsp, %temp
				function.insertBefore<Mov, false>(instruction, Op8(rsp), Op8(temp));
				// mov $align, %rax
				function.insertBefore<Mov, false>(instruction, Op4(align), rax);
				// mov $0, %rdx
				function.insertBefore<Mov, false>(instruction, Op4(0), rdx);
				// div %temp
				function.insertBefore<Div, false>(instruction, Op8(rsp));
				// mov %rdx, %temp
				function.insertBefore<Mov, false>(instruction, rdx, Op8(temp));
				// sub %temp, %rsp
				function.insertBefore<Sub, false>(instruction, Op8(temp), Op8(rsp));
				// unclobber %rdx
				function.unclobber(instruction, rdx_clobber);
				// unclobber %rax
				function.unclobber(instruction, rax_clobber);
			}

			const int width = alloca->type->width() / 8;

			// The number of elements requested is usually an integer constant, but it can also be a local variable.
			// We need to copy the stack pointer to the result variable and then move the stack pointer down past
			// the allocated memory.
			int64_t num_elements = -1;
			if (alloca->numelementsValue) {
				Value *value = alloca->numelementsValue.get();
				if (value->isInt()) {
					// If there's an integer constant, things are easy.
					num_elements = value->longValue();
				} else if (value->isLocal()) {
					// If it's a local variable instead, we can't do the multiplication at compile time.
					auto *local = dynamic_cast<LocalValue *>(value);
					function.comment(instruction, prefix + "mov %rsp, %var");
					function.insertBefore<Mov, false>(instruction, OpV(alloca_reg), alloca->operand);
					if (width != 0) {
						function.multiply(instruction, OpV(local->variable), int64_t(width));
					}
				} else
					throw std::runtime_error("Unsupported value for numelementsValue: " + std::string(*value));
			} else {
				// If no number of elements is specified, it's one by default.
				num_elements = 1;
			}

			if (num_elements != -1) {
				// mov %rsp, %var
				auto mov = function.insertBefore<Mov>(instruction, Op8(alloca_reg), alloca->operand);
				const int64_t to_sub = Util::upalign(num_elements * width, 8);

				if (0 < to_sub) {
					function.comment(mov, prefix + "%rsp -= to_sub");
					function.insertBefore<Sub>(mov, Op4(to_sub), Op8(alloca_reg));
				}

				function.comment(mov, prefix + "mov %rsp, " + alloca->operand->toString());
			}

			placed(function.insertBefore<And>(instruction, Op4(-16), Op8(rsp)));
		}

		// Remove the alloca instructions to complete their replacement.
		for (const InstructionPtr &instruction: to_remove)
			function.remove(instruction);

		if (replaced_count == 0) {
			// If we never ended up finding and replacing any alloca instructions, erase the precolored base pointer and
			// stack pointer variables.
			function.variableStore.erase(rbp->getID());
			function.variableStore.erase(rsp->getID());
		} else {
			// If we replaced any alloca instructions, we added a bunch of instructions in its place. This makes it
			// necessary to reindex all instructions.
			function.reindexInstructions();
		}

		return replaced_count;
	}
}
