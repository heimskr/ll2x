#include "instruction/BaseMul.h"

namespace LL2X {
	std::pair<int, int> BaseMul::extractPrecolored() {
		precoloredRead    = {x86_64::rax};
		precoloredWritten = {x86_64::rax, x86_64::rdx};
		return {precoloredRead.size(), precoloredWritten.size()};
	}
}
