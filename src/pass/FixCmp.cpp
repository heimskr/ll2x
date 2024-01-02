#include "compiler/Function.h"
#include "compiler/Instruction.h"
#include "instruction/Cmp.h"
#include "instruction/Mov.h"
#include "instruction/Set.h"
#include "pass/FixCmp.h"
#include "util/Timer.h"

namespace LL2X::Passes {
	namespace {
		bool isSimple(const OperandPtr &operand) {
			return operand->isRegister() || operand->isConstant();
		}

		const std::unordered_set<x86_64::Condition> equalLike{
			x86_64::Condition::IfEqual,
			x86_64::Condition::IfGreaterOrEqualSigned, x86_64::Condition::IfGreaterOrEqualUnsigned,
			x86_64::Condition::IfLessOrEqualSigned,    x86_64::Condition::IfLessOrEqualUnsigned,
		};

		const std::unordered_set<x86_64::Condition> unequalLike{
			x86_64::Condition::IfNotEqual,      x86_64::Condition::IfNegative,
			x86_64::Condition::IfGreaterSigned, x86_64::Condition::IfGreaterUnsigned,
			x86_64::Condition::IfLessSigned,    x86_64::Condition::IfLessUnsigned,
		};
	}

	void fixCmp(Function &function) {
		Timer timer("FixCmp");

		std::vector<InstructionPtr> to_remove;
		bool any_inserted = false;

		for (const InstructionPtr &instruction: function.linearInstructions) {
			auto cmp = std::dynamic_pointer_cast<Cmp>(instruction);
			if (!cmp)
				continue;

			OperandPtr &first  = cmp->firstSource;
			OperandPtr &second = cmp->secondSource;

			if (*first == *second) {
				// If you're comparing an operand to itself, the result will always be the same, depending on the condition of the following set
				// instruction. This is making the crucial assumption that the flag register isn't used except by the very next instruction after the
				// cmp.
				if (auto set = std::dynamic_pointer_cast<Set>(function.after(instruction))) {
					if (equalLike.contains(set->condition)) {
						function.insertBefore<Mov, false>(set, Op4(1), set->destination);
						to_remove.push_back(cmp);
						to_remove.push_back(set);
					} else if (unequalLike.contains(set->condition)) {
						function.insertBefore<Mov, false>(set, Op4(0), set->destination);
						to_remove.push_back(cmp);
						to_remove.push_back(set);
					}
				}
			}

			if (!first->isRegister() && !second->isRegister()) {
				VariablePtr temp_var = function.newVariable(second->type, cmp->parent.lock());
				OperandPtr temp_operand = OpV(temp_var);
				function.insertBefore<Mov, false>(cmp, second, temp_operand)->extract(false);
				second = temp_operand;
				any_inserted = true;
			}
		}

		if (any_inserted || !to_remove.empty()) {
			for (const InstructionPtr &instruction: to_remove)
				function.remove(instruction);
			function.reindexInstructions();
		}
	}
}
