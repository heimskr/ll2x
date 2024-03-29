#pragma once

#include "instruction/MovxBase.h"

namespace LL2X {
	struct Movsx: MovxBase {
		using MovxBase::MovxBase;

		char getMovType() const override { return 's'; }
	};
}
