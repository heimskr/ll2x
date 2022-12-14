#pragma once

#include "instruction/Sized.h"
#include "instruction/TwoSourcesOnly.h"

namespace LL2X {
	struct SizedTwoSourcesOnly: TwoSourcesOnly, Sized {
		SizedTwoSourcesOnly(OperandPtr first_source, OperandPtr second_source, int size_):
			TwoSourcesOnly(std::move(first_source), std::move(second_source)),
			Sized(size_) {}

		protected:
			std::string makeDebug(const char *mnemonic, bool reverse = false) const;
			std::string makeString(const char *mnemonic, bool reverse = false) const;
	};
}
