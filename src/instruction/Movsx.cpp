#include "instruction/Movsx.h"

namespace LL2X {
	std::string Movsx::debugExtra() {
		return lockPrefixAnsi + "\e[1m" + getMnemonic() + "\e[22m " + source->ansiString() + ", " +
			destination->ansiString();
	}

	std::string Movsx::toString() const {
		return lockPrefix + getMnemonic() + " " + source->toString() + ", " + destination->toString();
	}

	bool Movsx::replaceSimilarOperand(const OperandPtr &to_replace, const OperandPtr &replace_with) {
		if (source->similarTo(*to_replace)) {
			source = replace_with;
			return true;
		}

		return false;
	}

	std::string Movsx::getMnemonic() const {
		std::string mnemonic = "movs";

		switch (source->width) {
			case x86_64::Width::Low:   mnemonic += 'b'; break;
			case x86_64::Width::Two:   mnemonic += 'w'; break;
			case x86_64::Width::Four:  mnemonic += 'l'; break;
			case x86_64::Width::Eight: mnemonic += 'q'; break;
			default:
				mnemonic += '?';
		}

		switch (destination->width) {
			case x86_64::Width::Low:   mnemonic += 'b'; break;
			case x86_64::Width::Two:   mnemonic += 'w'; break;
			case x86_64::Width::Four:  mnemonic += 'l'; break;
			case x86_64::Width::Eight: mnemonic += 'q'; break;
			default:
				mnemonic += '?';
		}

		return mnemonic;
	}
}
