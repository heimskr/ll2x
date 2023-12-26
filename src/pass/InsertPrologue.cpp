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
		const VariablePtr &rbp = function.pcRbp;
		const VariablePtr &rsp = function.pcRsp;
		function.insertBefore<Push, false>(first, Op8(rbp));

		// Move %rsp into %rbp.
		function.insertBefore<Mov, false>(first, Op8(rsp), Op8(rbp));

		// Next, we need to save to the stack any registers that are written to. Start by finding the registers.
		std::set<int> written;
		for (const InstructionPtr &instruction: function.linearInstructions) {
			for (const VariablePtr &variable: instruction->written) {
				for (const int reg: variable->registers) {
					if (!x86_64::isSpecialPurpose(reg) && x86_64::calleeSaved.contains(reg)) {
						written.insert(reg);
						const auto &location = function.addToStack(variable, StackLocation::Purpose::CalleeSave, 8, 8);
						function.calleeSaved.emplace(reg, &location);
					}
				}
			}
		}

		// Move %rsp down to make room for stack allocations if necessary.
		if (0 < function.stackSize) {
			function.comment(first, "upalign(" + std::to_string(function.stackSize) + " + " +
				std::to_string(function.maxPushedForCalls) + ", 16)");
			function.insertBefore<Sub, false>(first, Op4(Util::upalign(function.stackSize + function.maxPushedForCalls,
				16)), Op8(rsp));
		}

		function.savedRegisters.clear();
		for (const int reg: written) {
			function.savedRegisters.push_back(reg);
			VariablePtr variable = function.makePrecoloredVariable(reg, front_block);
			const StackLocation &location = *function.calleeSaved.at(reg);
			function.insertBefore<Mov, false>(first, Op8(variable), Op8(-location.offset, rbp));
		}

		function.reindexInstructions();
	}
}
