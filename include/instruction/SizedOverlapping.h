#pragma once

#include "instruction/Sized.h"
#include "instruction/Overlapping.h"

namespace LL2X {
	struct SizedOverlapping: public Overlapping, public Sized {
		SizedOverlapping(OperandPtr source_only, OperandPtr multi_, int size_):
			Overlapping(std::move(source_only), std::move(multi_)),
			Sized(size_) {}

		SizedOverlapping(OperandPtr source_only, OperandPtr multi_):
			Overlapping(std::move(source_only), std::move(multi_)),
			Sized(multi->bitWidth) {}

		protected:
			std::string makeDebug(const char *mnemonic) const;
			std::string makeString(const char *mnemonic) const;
	};
}
