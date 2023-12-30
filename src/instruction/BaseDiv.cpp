#include "instruction/BaseDiv.h"

namespace LL2X {
	std::pair<int, int> BaseDiv::extractPrecolored() {
		precoloredRead    = {x86_64::rax, x86_64::rdx};
		precoloredWritten = {x86_64::rax, x86_64::rdx};
		return {precoloredRead.size(), precoloredWritten.size()};
	}
}
