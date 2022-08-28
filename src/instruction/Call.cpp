#include "compiler/Variable.h"
#include "instruction/Call.h"
#include "options.h"

namespace LL2X {
#ifdef USE_UNDERSCORE
	constexpr static const char *underscore = "_";
#else
	constexpr static const char *underscore = "";
#endif
	std::string Call::debugExtra() {
		return lockPrefixAnsi + "\e[1mcallq\e[22m " + std::string(source->isLabel()? underscore : "*") +
			source->ansiString();
	}

	std::string Call::toString() const {
		return lockPrefix + "callq " + std::string(source->isLabel()? underscore : "*") + source->toString();
	}
}
