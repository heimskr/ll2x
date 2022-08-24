#pragma once

#include "instruction/Sized.h"
#include "instruction/SourceToDest.h"

namespace LL2X {
	struct SizedSourceToDest: public SourceToDest, public Sized {
		SizedSourceToDest(OperandPtr source_, OperandPtr destination_, int size_):
			SourceToDest(std::move(source_), std::move(destination_)),
			Sized(size_) {}

		protected:
			std::string makeDebug(std::string_view mnemonic) const;
			std::string makeString(std::string_view mnemonic) const;
	};
}
