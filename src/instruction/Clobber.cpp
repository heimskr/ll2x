#include "compiler/Operand.h"
#include "compiler/Variable.h"
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

	ExtractionResult SemiUnclobber::extract(bool force) {
		if (extracted && !force)
			return {read.size(), written.size()};

		read.clear();
		written.clear();
		extracted = true;

		if (!secretReads || !secretWrites)
			if (!(destination->isIndirect()? secretReads : secretWrites))
				destination->extract(true, read, written);

		return {read.size(), written.size()};
	}

	std::pair<int, int> SemiUnclobber::extractPrecolored() {
		if (destination->isRegister())
			precoloredWritten = destination->reg->registers;
		else
			precoloredWritten.clear();
		return {0, precoloredWritten.size()};
	}
}
