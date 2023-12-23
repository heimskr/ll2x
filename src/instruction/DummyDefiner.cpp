#include "instruction/DummyDefiner.h"

namespace LL2X {
	DummyDefiner::DummyDefiner(OperandPtr destination_):
		DestinationOnly(std::move(destination_)) {}

	std::string DummyDefiner::debugExtra() {
		return lockPrefixAnsi + "\e[1m<ddef>\e[22m " + destination->ansiString();
	}

	std::string DummyDefiner::toString() const {
		return lockPrefix + "<ddef> " + destination->toString();
	}

	bool DummyDefiner::operator==(const DummyDefiner &other) const {
		return this == &other || destination == other.destination;
	}
}
