#pragma once

#include "instruction/Sized.h"
#include "instruction/Overlapping.h"

namespace LL2X {
	struct SizedOverlapping: public Overlapping, public Sized {
		SizedOverlapping(OperandPtr multi_, OperandPtr source_only, x86_64::Width size_):
			Overlapping(std::move(multi_), std::move(source_only)),
			Sized(size_) {}

		protected:
			std::string makeDebug(const char *mnemonic) const;
			std::string makeString(const char *mnemonic) const;
	};
}
