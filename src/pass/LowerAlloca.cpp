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
		const VariablePtr &rbp = function.rbp;
		const VariablePtr &rsp = function.rsp;

		VariablePtr alloca_reg = rsp;

		// Loop over all instructions, ignoring everything except allocas.
		for (InstructionPtr &instruction: function.linearInstructions) {
			LLVMInstruction *llvm = dynamic_cast<LLVMInstruction *>(instruction.get());
			if (!llvm || llvm->node->nodeType() != NodeType::Alloca)
				continue;
			AllocaNode *alloca = dynamic_cast<AllocaNode *>(llvm->node);

			// First, mark the alloca instruction for removal.
			to_remove.push_back(instruction);
			++replaced_count;

			BasicBlockPtr block = llvm->parent.lock();

			if (block == entry && block->preds.empty()) {
				// If we know the alloca runs only once and has a fixed size, we can assign a static location on the
				// stack for it instead of doing runtime stack pointer math.

				if (!alloca->numelementsValue || alloca->numelementsValue->isIntLike()) {
					int size = Util::upalign(alloca->type->width(), 8 * (alloca->align < 1? 1 : alloca->align)) / 8;
					if (alloca->numelementsValue)
						size *= alloca->numelementsValue->intValue(true);

					VariablePtr destination = function.getVariable(*alloca->result);
					const auto &location = function.addToStack(destination, StackLocation::Purpose::Alloca, size);

					// function.replaceSimilarOperand(OperandV(destination), Operand8(-location.offset, rbp));

					auto lea = std::make_shared<Lea>(Operand8(-location.offset, rbp), Operand8(destination));
					function.insertBefore(instruction, lea, false)->setDebug(*instruction, true);
					continue;
				}
			}

			// Move the stack pointer down to get the alignment right.
			if (alloca->align == 16 || alloca->align == 8 || alloca->align == 4 || alloca->align == 2) {
				auto and_ = std::make_shared<And>(Operand4(-alloca->align), Operand8(rsp));
				function.insertBefore(instruction, and_, false)->setDebug(llvm, true);
			} else if (0 < alloca->align) {
				const int   align = Util::upalign(alloca->align, 8);
				VariablePtr temp  = function.newVariable(IntType::make(64), block);
				OperandPtr  rax   = Operand8(function.makePrecoloredVariable(x86_64::rax, block));
				OperandPtr  rdx   = Operand8(function.makePrecoloredVariable(x86_64::rdx, block));

				// I hope this part is never run.

				// clobber %rax
				auto rax_clobber = function.clobber(instruction, x86_64::rax);
				// clobber %rdx
				auto rdx_clobber = function.clobber(instruction, x86_64::rdx);
				// mov %rsp, %temp
				function.insertBefore(instruction, std::make_shared<Mov>(Operand8(rsp), Operand8(temp)), false)
					->setDebug(llvm, true);
				// mov $align, %rax
				function.insertBefore(instruction, std::make_shared<Mov>(Operand4(align), rax), false)
					->setDebug(llvm, true);
				// mov $0, %rdx
				function.insertBefore(instruction, std::make_shared<Mov>(Operand4(0), rdx), false)
					->setDebug(llvm, true);
				// div %temp
				function.insertBefore(instruction, std::make_shared<Div>(Operand8(rsp)), false)->setDebug(llvm, true);
				// mov %rdx, %temp
				function.insertBefore(instruction, std::make_shared<Mov>(rdx, Operand8(temp)), false)
					->setDebug(llvm, true);
				// sub %temp, %rsp
				function.insertBefore(instruction, std::make_shared<Sub>(Operand8(temp), Operand8(rsp)), false)
					->setDebug(llvm, true);
				// unclobber %rdx
				function.unclobber(instruction, rdx_clobber);
				// unclobber %rax
				function.unclobber(instruction, rax_clobber);
			}

			const int width = alloca->type->width() / 8;

			// The number of elements requested is usually an integer constant, but it can also be a local variable.
			// We need to copy the stack pointer to the result variable and then move the stack pointer down past
			// the allocated memory.
			int num_elements = -1;
			if (alloca->numelementsValue) {
				Value *value = alloca->numelementsValue.get();
				if (value->isInt()) {
					// If there's an integer constant, things are easy.
					num_elements = value->longValue();
				} else if (value->isLocal()) {
					// If it's a local variable instead, we can't do the multiplication at compile time.
					LocalValue *local = dynamic_cast<LocalValue *>(value);
					auto mov = std::make_shared<Mov>(OperandV(alloca_reg), alloca->operand);
					function.insertBefore(instruction, mov, "LowerAlloca: mov %rsp, %var", false)
						->setDebug(llvm, true);
					if (width != 0) {
						// TODO: use shifts for widths that are powers of two

						OperandPtr rax = Operand8(function.makePrecoloredVariable(x86_64::rax, block));
						OperandPtr rdx = Operand8(function.makePrecoloredVariable(x86_64::rdx, block));

						// clobber %rax
						auto rax_clobber = function.clobber(instruction, x86_64::rax);
						// clobber %rdx
						auto rdx_clobber = function.clobber(instruction, x86_64::rdx);
						// mov $width, %rax
						function.insertBefore(instruction, std::make_shared<Mov>(Operand4(width), rax), false)
							->setDebug(llvm, true);
						// mul %var
						function.insertBefore(instruction, std::make_shared<Mul>(Operand8(local->variable)), false)
							->setDebug(llvm, true);
						// sub %rax, %rsp
						function.insertBefore(instruction, std::make_shared<Sub>(rax, Operand8(rsp)), false)
							->setDebug(llvm, true);
						// unclobber %rdx
						function.unclobber(instruction, rdx_clobber);
						// unclobber %rax
						function.unclobber(instruction, rax_clobber);
					}
				} else
					throw std::runtime_error("Unsupported value for numelementsValue: " + std::string(*value));
			} else {
				// If no number of elements is specified, it's one by default.
				num_elements = 1;
			}

			if (num_elements != -1) {
				// %rsp -> %var
				auto mov = std::make_shared<Mov>(Operand8(alloca_reg), alloca->operand);
				function.insertBefore(instruction, mov)->setDebug(llvm, true);
				const int to_sub = Util::upalign(num_elements * width, 8);
				if (0 < to_sub) {
					auto sub = std::make_shared<Sub>(Operand4(to_sub), Operand8(alloca_reg));
					function.insertBefore(mov, sub, "LowerAlloca: %rsp -= to_sub")->setDebug(llvm, true);
				}
				function.comment(mov, "LowerAlloca: mov %rsp, " + alloca->operand->toString());
			}
		}

		// Remove the alloca instructions to complete their replacement.
		for (InstructionPtr &instruction: to_remove)
			function.remove(instruction);

		if (replaced_count == 0) {
			// If we never ended up finding and replacing any alloca instructions, erase the precolored base pointer and
			// stack pointer variables.
			function.variableStore.erase(rbp->id);
			function.variableStore.erase(rsp->id);
		} else {
			// If we replaced any alloca instructions, we added a bunch of instructions in its place. This makes it
			// necessary to reindex all instructions.
			function.reindexInstructions();
		}

		return replaced_count;
	}
}
