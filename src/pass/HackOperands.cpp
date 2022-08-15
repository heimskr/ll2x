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
			auto target = std::dynamic_pointer_cast<TargetInstruction>(instruction);
			if (!target)
				continue;

			auto sized = std::dynamic_pointer_cast<Sized>(target);
			if (!sized)
				continue;

			const x86_64::Width width = sized->size;

			if (auto one_source = std::dynamic_pointer_cast<OneSource>(target))
				if (one_source->source->isHackable())
					one_source->source->width = width;

			if (auto one_destination = std::dynamic_pointer_cast<OneDestination>(target))
				if (one_destination->destination->isHackable())
					one_destination->destination->width = width;

			if (auto two_sources = std::dynamic_pointer_cast<TwoSources>(target)) {
				if (two_sources->firstSource->isHackable())
					two_sources->firstSource->width = width;
				if (two_sources->secondSource->isHackable())
					two_sources->secondSource->width = width;
			}

			if (auto overlapping = std::dynamic_pointer_cast<Overlapping>(target)) {
				if (overlapping->multi->isHackable())
					overlapping->multi->width = width;
				if (overlapping->sourceOnly->isHackable())
					overlapping->sourceOnly->width = width;
			}
		}
	}
}
