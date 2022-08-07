#pragma once

#include <set>
#include <string>

namespace LL2X {
	/** Contains constants and functions pertaining to x86_64. */
	struct x86_64 {
		constexpr static int pointerWidth = 8; // in bytes

		// static std::set<int> makeRegisterPool();
		// static bool isSpecialPurpose(int);
		// static bool isArgumentRegister(int);
		// static std::string registerName(int);
	};
}
