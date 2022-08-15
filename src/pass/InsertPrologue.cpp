#include "compiler/Function.h"
#include "compiler/Program.h"
#include "instruction/Comment.h"
#include "instruction/Label.h"
#include "instruction/Mov.h"
#include "instruction/Push.h"
#include "instruction/Sub.h"
#include "pass/InsertPrologue.h"
#include "util/Timer.h"

// #define MOVE_STACK_POINTER

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

		// Move %rsp down to make room for stack allocations.
		function.insertBefore(first, std::make_shared<Sub>(Operand4(function.stackSize), Operand8(rsp)), false)
			->setDebug(*first, true);

		// Next, we need to push any variables that are written to.
		std::set<int> written;
		for (InstructionPtr &instruction: function.linearInstructions)
			for (const VariablePtr &variable: instruction->written)
				for (const int reg: variable->registers)
					if (!x86_64::isSpecialPurpose(reg))
						written.insert(reg);

		function.savedRegisters.clear();
		for (int reg: written) {
			function.savedRegisters.push_back(reg);
			VariablePtr variable = function.makePrecoloredVariable(reg, front_block);
			function.insertBefore(first, std::make_shared<Push>(Operand8(variable)), false)->setDebug(*first, true);
			function.initialPushedBytes += 8;
		}

#ifdef MOVE_STACK_POINTER
		int to_skip = 0;
		for (const std::pair<int, StackLocation> &pair: function.stack)
			to_skip += pair.second.width;

		if (to_skip != 0)
			function.insertBefore(first, std::make_shared<SubIInstruction>(sp, to_skip, sp), false)
				->setDebug(*first, true);
#endif

		function.reindexInstructions();
	}
}
