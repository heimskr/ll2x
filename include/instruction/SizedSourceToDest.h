#pragma once

#include "instruction/Sized.h"
#include "instruction/SourceToDest.h"

namespace LL2X {
	struct SizedSourceToDest: public SourceToDest, public Sized {
		SizedSourceToDest(Operand source_, Operand destination_, int width_):
			SourceToDest(std::move(source_), std::move(destination_)),
			Sized(width_) {}

		protected:
			std::string makeDebug(const char *mnemonic) const;
			std::string makeString(const char *mnemonic) const;
	};
}
