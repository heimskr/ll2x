#pragma once

#include "instruction/Sized.h"
#include "instruction/SourceToDest.h"

namespace LL2X {
	class MovInstruction: public SourceToDest, public Sized {
		public:
			MovInstruction(Operand source_, Operand destination_, int width_):
				SourceToDest(std::move(source_), std::move(destination_)),
				Sized(width_) {}

			
	};
}
