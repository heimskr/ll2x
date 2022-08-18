#pragma once

#include "instruction/Sized.h"
#include "instruction/DestinationOnly.h"

namespace LL2X {
	struct SizedDestinationOnly: DestinationOnly, Sized {
		SizedDestinationOnly(OperandPtr destination_, x86_64::Width size_):
			DestinationOnly(std::move(destination_)),
			Sized(size_) {}

		protected:
			std::string makeDebug(const char *mnemonic) const;
			std::string makeString(const char *mnemonic) const;
	};
}
