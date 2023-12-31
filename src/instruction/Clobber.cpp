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
		if (source)
			return "\e[33msemiunclobber\e[39m " + source->ansiString() + " into " + destination->ansiString();
		return "\e[33msemiunclobber\e[32m %" + x86_64::registerName(reg) + "\e[39m into " + destination->ansiString();
	}

	ExtractionResult SemiUnclobber::extract(bool force) {
		if (extracted && !force)
			return {read.size(), written.size()};

		read.clear();
		written.clear();
		extracted = true;

		if (!(destination->isIndirect()? secretReads : secretWrites)) {
			// TODO!: investigate
			// destination->extract(true, read, written);
			destination->extract(!destination->isIndirect(), read, written);
		}

		if (!secretReads && source)
			source->extract(false, read, written);

		return {read.size(), written.size()};
	}

	std::pair<int, int> SemiUnclobber::extractPrecolored() {
		if (destination->isRegister())
			precoloredWritten = destination->reg->getRegisters();
		else
			precoloredWritten.clear();
		return {0, precoloredWritten.size()};
	}
}
