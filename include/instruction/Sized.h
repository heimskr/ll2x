#pragma once

#include <string>

#include "compiler/x86_64.h"

namespace LL2X {
	struct Sized {
		int size = -1;
		Sized() = delete;
		Sized(int);
		char suffix() const;
	};
}
