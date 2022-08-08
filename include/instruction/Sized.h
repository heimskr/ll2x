#pragma once

#include <string>

#include "compiler/x86_64.h"

namespace LL2X {
	struct Sized {
		x86_64::Width size;
		Sized(x86_64::Width);
		char suffix() const;
	};
}
