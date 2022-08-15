#include "compiler/Function.h"
#include "instruction/OneDestination.h"
#include "instruction/OneSource.h"
#include "instruction/Overlapping.h"
#include "instruction/Sized.h"
#include "instruction/TargetInstruction.h"
#include "instruction/TwoSources.h"
#include "pass/HackOperands.h"
#include "util/Timer.h"

namespace LL2X::Passes {
	void hackOperands(Function &function) {
		Timer timer("HackOperands");

		for (InstructionPtr &instruction: function.linearInstructions) {
			// info() << instruction->debugExtra() << '\n';

			auto target = std::dynamic_pointer_cast<TargetInstruction>(instruction);
			if (!target) {
				// error() << '\n';
				continue;
			}

			auto sized = std::dynamic_pointer_cast<Sized>(target);
			if (!sized) {
				// error() << '\n';
				continue;
			}

			// success() << '\n';

			const x86_64::Width width = sized->size;

			if (auto one_source = std::dynamic_pointer_cast<OneSource>(target))
				if (!one_source->source->isNumeric()) {
					// info() << instruction->debugExtra() << "  ->\n";
					one_source->source->width = width;
					// std::cerr << "    " << instruction->debugExtra() << "\n\n";
				}

			if (auto one_destination = std::dynamic_pointer_cast<OneDestination>(target))
				if (!one_destination->destination->isNumeric())
					one_destination->destination->width = width;

			if (auto two_sources = std::dynamic_pointer_cast<TwoSources>(target)) {
				// info() << instruction->debugExtra() << "  ->\n";
				if (!two_sources->firstSource->isNumeric())
					two_sources->firstSource->width = width;
				if (!two_sources->secondSource->isNumeric())
					two_sources->secondSource->width = width;
				// std::cerr << "    " << instruction->debugExtra() << "\n\n";
			}

			if (auto overlapping = std::dynamic_pointer_cast<Overlapping>(target)) {
				if (!overlapping->multi->isNumeric())
					overlapping->multi->width = width;
				if (!overlapping->sourceOnly->isNumeric())
					overlapping->sourceOnly->width = width;
			}
		}
	}
}
