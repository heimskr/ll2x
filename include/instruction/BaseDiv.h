#pragma once

#include "compiler/x86_64.h"
#include "instruction/HasPrecolored.h"
#include "instruction/SizedSourceOnly.h"

namespace LL2X {
	class BaseDiv: public SizedSourceOnly, public HasPrecolored {
		public:
			BaseDiv(OperandPtr source_, int width_):
				SizedSourceOnly(std::move(source_), width_) {}

			BaseDiv(OperandPtr source_):
				SizedSourceOnly(source_, source_->bitWidth) {}

			std::pair<int, int> extractPrecolored() override;
	};
}
