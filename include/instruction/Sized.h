#pragma once

#include <string>

namespace LL2X {
	struct Sized {
		/** The size of the instruction in bytes. */
		int size;
		Sized(int size_);
		std::string suffix() const;
	};
}
