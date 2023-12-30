#pragma once

#include "compiler/x86_64.h"
#include "instruction/HasPrecolored.h"
#include "instruction/SizedSourceOnly.h"

namespace LL2X {
	class BaseMul: public SizedSourceOnly, public HasPrecolored {
		public:
			BaseMul(OperandPtr source_, int width_):
				SizedSourceOnly(std::move(source_), width_) {}

			BaseMul(OperandPtr source_):
				SizedSourceOnly(source_, source_->bitWidth) {}

			std::pair<int, int> extractPrecolored() override;
	};
}
