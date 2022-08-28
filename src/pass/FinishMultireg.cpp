#include "compiler/Function.h"
#include "instruction/Add.h"
#include "instruction/DeferredDestinationMove.h"
#include "instruction/DeferredSourceMove.h"
#include "instruction/Mov.h"
#include "pass/FinishMultireg.h"
#include "util/Timer.h"

// #define DEBUG_MULTIREG_MOV

namespace LL2X::Passes {
	void finishMultireg(Function &function) {
		Timer timer("FinishMultireg");
		std::list<InstructionPtr> to_remove;

		for (const InstructionPtr &instruction: function.linearInstructions) {
			if (auto defsource = std::dynamic_pointer_cast<DeferredSourceMove>(instruction)) {
				if (!defsource->source->isRegister()) {
					error() << defsource->debugExtra() << '\n';
					throw std::runtime_error("Deferred-source move has non-register source operand");
				}
				if (defsource->source->reg->registers.empty())
					throw std::runtime_error("Deferred-source move has no registers allocated to its source");
				const int reg = *std::next(defsource->source->reg->registers.begin(), defsource->registerIndex);
				auto var = function.makePrecoloredVariable(reg, defsource->parent.lock());
				function.insertBefore<Mov>(instruction, OpV(var), defsource->destination);
				to_remove.push_back(instruction);
			} else if (auto defdest = std::dynamic_pointer_cast<DeferredDestinationMove>(instruction)) {
				if (!defdest->source->isRegister()) {
					error() << defdest->debugExtra() << '\n';
					throw std::runtime_error("Deferred-destination move has non-register destination operand");
				}
				if (defdest->destination->reg->registers.empty())
					throw std::runtime_error("Deferred-destination move has no registers allocated to its destination");
				const int reg = *std::next(defdest->destination->reg->registers.begin(), defdest->registerIndex);
				VariablePtr var = function.makePrecoloredVariable(reg, defdest->parent.lock());
				function.insertBefore<Mov>(instruction, defdest->source, OpV(var));
				to_remove.push_back(instruction);
			} else if (auto mov = std::dynamic_pointer_cast<Mov>(instruction)) {
				auto source = mov->source;
				auto dest   = mov->destination;
				const bool multi_source = source->isRegister() && 1 < source->reg->registers.size();
				const bool multi_dest   = dest->isRegister()   && 1 < dest->reg->registers.size();

				if (!multi_source && !multi_dest)
					continue;

#ifdef DEBUG_MULTIREG_MOV
				info() << function.before(mov)->debugExtra() << '\n'
				       << "    Size of " << mov->debugExtra() << ": " << mov->size << " bits\n"
				       << "      Destination size: " << dest->bitWidth << '\n'
				       << "      Source size:      " << source->bitWidth << '\n';
#endif

				if (multi_source && multi_dest) {
					if (source->bitWidth != dest->bitWidth) {
						error() << source->ansiString() << ", " << dest->ansiString() << '\n';
						throw std::runtime_error("Register packs have different bit widths");
					}

					to_remove.push_back(instruction);
					auto source_iter = source->reg->registers.begin();
					auto dest_iter   = dest->reg->registers.begin();
					BasicBlockPtr block = instruction->parent.lock();
					function.comment(instruction, "Multireg move: " + source->toString() + " -> " + dest->toString());
					while (source_iter != source->reg->registers.end()) {
						VariablePtr source_var = function.makePrecoloredVariable(*source_iter++, block);
						VariablePtr dest_var   = function.makePrecoloredVariable(*dest_iter++,   block);
						function.insertBefore<Mov>(instruction, Op8(source_var), Op8(dest_var));
					}
				} else if (multi_source) { // mov <%pack...>, (%reg)
					if (!dest->isIndirect()) {
						error() << mov->debugExtra() << '\n';
						throw std::runtime_error("Can't fix multireg-source mov with non-indirect destination");
					}

					int displacement = 0;
					to_remove.push_back(mov);
					BasicBlockPtr block = mov->parent.lock();
					function.comment(mov, "FinishMultireg: mov <%pack...>, (%reg)");

					for (const int reg: source->reg->registers) {
						OperandPtr copy = dest->copy();
						copy->displacement = displacement;
						displacement += 8;
						VariablePtr precolored = function.makePrecoloredVariable(reg, block);
						function.insertBefore<Mov, false>(mov, Op8(precolored), copy);
					}
				} else if (multi_dest) { // mov (%reg), <%pack...>
					if (!source->isIndirect()) {
						error() << mov->debugExtra() << '\n';
						throw std::runtime_error("Can't fix multireg-destination mov with non-indirect source");
					}

					int displacement = 0;
					to_remove.push_back(mov);
					BasicBlockPtr block = mov->parent.lock();
					function.comment(mov, "FinishMultireg: mov (%reg), <%pack...>");

					for (const int reg: dest->reg->registers) {
						OperandPtr copy = source->copy();
						copy->displacement = displacement;
						displacement += 8;
						VariablePtr precolored = function.makePrecoloredVariable(reg, block);
						function.insertBefore<Mov, false>(mov, copy, Op8(precolored));
					}
				} else {
					error() << mov->debugExtra() << '\n';
					throw std::runtime_error("Can't currently finish multireg move");
				}
			}
		}

		if (!to_remove.empty()) {
			for (InstructionPtr &instruction: to_remove)
				function.remove(instruction);
			function.reindexInstructions();
		}
	}
}
