#pragma once

#include "instruction/Sized.h"
#include "instruction/SourceOnly.h"

namespace LL2X {
	struct SizedSourceOnly: SourceOnly, Sized {
		SizedSourceOnly(Operand source_, x86_64::Width size_):
			SourceOnly(std::move(source_)),
			Sized(size_) {}

		protected:
			std::string makeDebug(const char *mnemonic) const;
			std::string makeString(const char *mnemonic) const;
	};
}
