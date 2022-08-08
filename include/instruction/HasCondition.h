#pragma once

#include "compiler/x86_64.h"

namespace LL2X {
	struct HasCondition {
		x86_64::Condition condition;
		HasCondition(x86_64::Condition condition_):
			condition(condition_) {}
	};
}
