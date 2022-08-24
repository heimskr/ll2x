#include "instruction/Movsx.h"

namespace LL2X {
	std::string Movsx::debugExtra() {
		return lockPrefixAnsi + "\e[1m" + getMnemonic() + "\e[22m " + source->ansiString() + ", " +
			destination->ansiString();
	}

	std::string Movsx::toString() const {
		return lockPrefix + getMnemonic() + " " + source->toString() + ", " + destination->toString();
	}

	std::string Movsx::getMnemonic() const {
		std::string mnemonic = "movs";

		switch (source->width) {
			case x86_64::Width::Low:   mnemonic += 'b'; break;
			case x86_64::Width::Two:   mnemonic += 'w'; break;
			case x86_64::Width::Four:  mnemonic += 'd'; break;
			case x86_64::Width::Eight: mnemonic += 'q'; break;
			default:
				mnemonic += '?';
		}

		switch (destination->width) {
			case x86_64::Width::Low:   mnemonic += 'b'; break;
			case x86_64::Width::Two:   mnemonic += 'w'; break;
			case x86_64::Width::Four:  mnemonic += 'd'; break;
			case x86_64::Width::Eight: mnemonic += 'q'; break;
			default:
				mnemonic += '?';
		}

		return mnemonic;
	}
}
