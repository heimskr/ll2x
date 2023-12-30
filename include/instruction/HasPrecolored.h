#pragma once

#include <set>
#include <utility>

#include "compiler/Instruction.h"

namespace LL2X {
	/** Represents an instruction that deals with precolored registers. */
	struct HasPrecolored {
		std::set<int> precoloredRead;
		std::set<int> precoloredWritten;

		virtual std::pair<int, int> extractPrecolored() { return {0, 0}; }
	};
}
