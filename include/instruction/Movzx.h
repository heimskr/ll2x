#pragma once

#include "instruction/MovxBase.h"

namespace LL2X {
	struct Movzx: MovxBase {
		using MovxBase::MovxBase;

		char getMovType() const override { return 'z'; }
	};
}
