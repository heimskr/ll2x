#include "instruction/MovxBase.h"

namespace LL2X {
	std::string MovxBase::debugExtra() {
		return lockPrefixAnsi + "\e[1m" + getMnemonic() + "\e[22m " + source->ansiString() + ", " +
			destination->ansiString();
	}

	std::string MovxBase::toString() const {
		return lockPrefix + getMnemonic() + " " + source->toString() + ", " + destination->toString();
	}

	bool MovxBase::replaceSimilarOperand(const OperandPtr &to_replace, const OperandPtr &replace_with) {
		if (source->similarTo(*to_replace)) {
			source = replace_with;
			return true;
		}

		return false;
	}

	std::string MovxBase::getMnemonic() const {
		std::string mnemonic = "mov";

		mnemonic += getMovType();

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
