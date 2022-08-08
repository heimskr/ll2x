#include "compiler/Variable.h"
#include "instruction/Comment.h"

namespace LL2X {
	Comment::Comment(const std::string &text_, int index_):
		TargetInstruction(index_), text(text_) {}

	std::string Comment::debugExtra() {
		return "\e[35;2m# " + text + "\e[22;39m";
	}

	std::string Comment::toString() const {
		return "# " + text;
	}
}
