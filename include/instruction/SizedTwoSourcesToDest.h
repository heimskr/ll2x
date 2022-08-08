#pragma once

#include "instruction/Sized.h"
#include "instruction/TwoSourcesToDest.h"

namespace LL2X {
	struct SizedTwoSourcesToDest: public TwoSourcesToDest, public Sized {
		SizedTwoSourcesToDest(Operand first_source, Operand second_source, Operand destination_, int size_):
			TwoSourcesToDest(std::move(first_source), std::move(second_source), std::move(destination_)),
			Sized(size_) {}

		protected:
			std::string makeDebug(const char *mnemonic) const;
			std::string makeString(const char *mnemonic) const;
	};
}
