#include "compiler/Variable.h"
#include "instruction/Label.h"
#include "util/Util.h"

namespace LL2X {
	Label::Label(const std::string &name_, int index_):
		TargetInstruction(index_), name(name_) {}

	std::string Label::debugExtra() {
		return "\e[94m" + name + ":\e[39m";
	}

	std::string Label::toString() const {
		return Util::unquote(name) + ':';
	}
}
