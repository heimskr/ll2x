#include "compiler/Function.h"
#include "compiler/Program.h"
#include "instruction/Comment.h"
#include "instruction/Label.h"
#include "instruction/Mov.h"
#include "instruction/Push.h"
#include "instruction/Sub.h"
#include "pass/InsertPrologue.h"
#include "util/Timer.h"

namespace LL2X::Passes {
	void insertPrologue(Function &function) {
		Timer timer("InsertPrologue");
		BasicBlockPtr front_block = function.blocks.front();
		InstructionPtr first = function.firstInstruction(true);

		if (!first)
			throw std::runtime_error("Couldn't find a non-label instruction in the initial block of " + *function.name);

		if (first->debugIndex == -1)
			first->debugIndex = function.initialDebugIndex;

		// Start by pushing %rbp to the stack.
		VariablePtr rbp = function.basePointer(front_block);
		VariablePtr rsp = function.stackPointer(front_block);
		function.insertBefore(first, std::make_shared<Push>(Operand8(rbp)), false)->setDebug(*first, true);
		function.initialPushedBytes = 8;

		// Move %rsp into %rbp.
		function.insertBefore(first, std::make_shared<Mov>(Operand8(rsp), Operand8(rbp)), false)->setDebug(*first,
			true);

		// Next, we need to save to the stack any registers that are written to. Start by finding the registers.
		std::set<int> written;
		for (InstructionPtr &instruction: function.linearInstructions)
			for (const VariablePtr &variable: instruction->written)
				for (const int reg: variable->registers)
					if (!x86_64::isSpecialPurpose(reg) && x86_64::calleeSaved.contains(reg)) {
						written.insert(reg);
						const auto &location = function.addToStack(variable, StackLocation::Purpose::CalleeSave);
						function.calleeSaved.emplace(reg, &location);
					}

		function.initialPushedBytes += 8 * written.size();

		// Move %rsp down to make room for stack allocations if necessary.
		if (0 < function.stackSize) {
			auto sub = std::make_shared<Sub>(Operand4(Util::upalign(function.stackSize, 16) + 8), Operand8(rsp));
			function.insertBefore(first, sub, false)->setDebug(*first, true);
			function.categories["StackSkip"].insert(sub);
		}

		function.savedRegisters.clear();
		for (const int reg: written) {
			function.savedRegisters.push_back(reg);
			VariablePtr variable = function.makePrecoloredVariable(reg, front_block);
			const auto &location = *function.calleeSaved.at(reg);
			auto save = std::make_shared<Mov>(Operand8(variable), Operand8(-location.offset, rbp));
			function.insertBefore(first, save, false)->setDebug(*first, true);
			function.categories["PrologueSave"].insert(save);
		}

		function.reindexInstructions();
	}
}
