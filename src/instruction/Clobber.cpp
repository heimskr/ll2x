#include "compiler/Operand.h"
#include "instruction/Clobber.h"

namespace LL2X {
	std::shared_ptr<SemiUnclobber> Clobber::makeSemi(const OperandPtr &destination) {
		auto out = SemiUnclobber::make(reg, destination);
		semis.emplace_back(out);
		return out;
	}

	std::string SemiUnclobber::toString() const {
		return "\e[33munclobber\e[32m %" + x86_64::registerName(reg) + "\e[39m into " + destination->ansiString();
	}
}
