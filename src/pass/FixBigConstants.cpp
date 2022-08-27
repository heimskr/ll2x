#include "compiler/Function.h"
#include "compiler/Instruction.h"
#include "instruction/Add.h"
#include "instruction/Movabs.h"
#include "instruction/SourceOnly.h"
#include "instruction/TwoSourcesOnly.h"
#include "pass/FixBigConstants.h"
#include "util/Timer.h"

namespace LL2X::Passes {
	size_t fixBigConstants(Function &function) {
		Timer timer("FixBigConstants");

		size_t changed = 0;

		for (const InstructionPtr &instruction: function.linearInstructions) {
			if (auto source_to_dest = std::dynamic_pointer_cast<SourceToDest>(instruction)) {

				OperandPtr &source = source_to_dest->source;
				if (!source->isConstant())
					continue;
				const auto constant = source->getConstant();
				if (!Util::outOfRange(constant))
					continue;
				
				VariablePtr temp = function.newVariable(IntType::make(64), instruction->parent.lock());
				function.insertBefore<Movabs, false>(instruction, Op8(constant), Op8(temp));
				source = Op8(temp);
				++changed;

			} else if (auto overlapping = std::dynamic_pointer_cast<Overlapping>(instruction)) {

				OperandPtr &source_only = overlapping->sourceOnly;
				if (!source_only->isConstant())
					continue;
				const auto constant = source_only->getConstant();
				if (!Util::outOfRange(constant))
					continue;
				
				VariablePtr temp = function.newVariable(IntType::make(64), instruction->parent.lock());
				function.insertBefore<Movabs, false>(instruction, Op8(constant), Op8(temp));
				source_only = Op8(temp);
				++changed;

			} else if (auto two_sources_only = std::dynamic_pointer_cast<TwoSourcesOnly>(instruction)) {

				OperandPtr &first = two_sources_only->firstSource;
				OperandPtr &second = two_sources_only->secondSource;

				if (first->isConstant()) {
					const auto constant = first->getConstant();
					if (Util::outOfRange(constant)) {
						VariablePtr temp = function.newVariable(IntType::make(64), instruction->parent.lock());
						function.insertBefore<Movabs, false>(instruction, Op8(constant), Op8(temp));
						first = Op8(temp);
						++changed;
					}
				}

				if (second->isConstant()) {
					const auto constant = second->getConstant();
					if (Util::outOfRange(constant)) {
						VariablePtr temp = function.newVariable(IntType::make(64), instruction->parent.lock());
						function.insertBefore<Movabs, false>(instruction, Op8(constant), Op8(temp));
						second = Op8(temp);
						++changed;
					}
				}
				
			} else if (auto source_only = std::dynamic_pointer_cast<SourceOnly>(instruction)) {

				OperandPtr &source = source_only->source;

				if (source->isConstant()) {
					const auto constant = source->getConstant();
					if (Util::outOfRange(constant)) {
						VariablePtr temp = function.newVariable(IntType::make(64), instruction->parent.lock());
						function.insertBefore<Movabs, false>(instruction, Op8(constant), Op8(temp));
						source = Op8(temp);
						++changed;
					}
				}

			}
		}

		if (0 < changed)
			function.reindexInstructions();

		return changed;
	}
}
