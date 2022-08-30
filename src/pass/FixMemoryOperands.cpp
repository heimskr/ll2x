#include <algorithm>

#include "compiler/Function.h"
#include "instruction/Pop.h"
#include "instruction/Push.h"
#include "instruction/SourceToDest.h"
#include "pass/FixMemoryOperands.h"
#include "util/Timer.h"

namespace LL2X::Passes {
	static std::unordered_set<int> pool_start {
		x86_64::r8,
		x86_64::r9,
		x86_64::r10,
		x86_64::r11,
		x86_64::r12,
		x86_64::r13,
		x86_64::r14,
		x86_64::r15
	};

	template <typename... Args>
	static int chooseRegister(Args &&...args) {
		// We need to choose a temporary register, but we must make sure it's not being used in any operand.

		std::unordered_set<VariablePtr> read_vars;
		std::unordered_set<VariablePtr> written_vars;

		for (const OperandPtr &operand: std::initializer_list<OperandPtr> {args...})
			operand->extract(false, read_vars, written_vars);

		auto pool = pool_start;

		for (const VariablePtr &variable: read_vars)
			for (const int reg: variable->registers)
				pool.erase(reg);

		if (pool.empty()) // Unlikely.
			throw std::runtime_error("Can't fix memory operands: register pool is depleted");

		return *pool.begin();
	}

	static bool isLive(int reg, const InstructionPtr &instruction) {
		return std::ranges::any_of(instruction->parent.lock()->allLive, [reg](const VariablePtr &variable) {
			return variable->registers.contains(reg);
		});
	}

	size_t fixMemoryOperands(Function &function) {
		Timer timer("FixMemoryOperands");

		size_t num_changed = 0;

		for (const InstructionPtr &instruction: function.linearInstructions) {
			if (auto source_to_dest = std::dynamic_pointer_cast<SourceToDest>(instruction)) {
				if (source_to_dest->source->isIndirect() && source_to_dest->destination->isIndirect()) {
					function.comment(instruction, "Fixing " + instruction->toString());
					const int reg = chooseRegister(source_to_dest->source, source_to_dest->destination);
					const bool live = isLive(reg, instruction);
					VariablePtr temp = function.makePrecoloredVariable(reg, instruction->parent.lock());
					if (live)
						function.insertBefore<Push, false>(instruction, Op8(temp));
					int size = source_to_dest->destination->bitWidth;
					if (auto sized = std::dynamic_pointer_cast<Sized>(source_to_dest))
						size = sized->size;
					temp->setType(IntType::make(size));
					auto mov = function.insertAfter<Mov, false>(instruction, OpV(temp), source_to_dest->destination,
						size);
					if (live)
						function.insertAfter<Pop, false>(mov, Op8(temp));
					source_to_dest->destination = OpV(temp);
					++num_changed;
				}
			} else if (auto overlapping = std::dynamic_pointer_cast<Overlapping>(instruction)) {
				if (overlapping->sourceOnly->isIndirect() && overlapping->multi->isIndirect()) {
					function.comment(instruction, "Fixing " + instruction->toString());
					const int reg = chooseRegister(overlapping->sourceOnly, overlapping->multi);
					const bool live = isLive(reg, instruction);
					VariablePtr temp = function.makePrecoloredVariable(reg, instruction->parent.lock());
					if (live)
						function.insertBefore<Push, false>(instruction, Op8(temp));
					int size = overlapping->sourceOnly->bitWidth;
					if (auto sized = std::dynamic_pointer_cast<Sized>(overlapping))
						size = sized->size;
					temp->setType(IntType::make(size));
					auto mov = function.insertBefore<Mov, false>(instruction, overlapping->sourceOnly, OpV(temp), size);
					if (live)
						function.insertAfter<Pop, false>(instruction, Op8(temp));
					overlapping->sourceOnly = OpV(temp);
					++num_changed;
				}
			}
		}

		if (0 < num_changed)
			function.reindexInstructions();

		return num_changed;
	}
}
