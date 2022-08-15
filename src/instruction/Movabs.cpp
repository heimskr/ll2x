#include "instruction/Movabs.h"

namespace LL2X {
	Movabs::Movabs(OperandPtr source_, OperandPtr destination_, x86_64::Width size_):
		SizedSourceToDest(source_, destination_, size_) {}

	Movabs::Movabs(OperandPtr source_, OperandPtr destination_):
		SizedSourceToDest(source_, destination_, destination_->width) {}

	bool Movabs::operator==(const Movabs &other) const {
		return this == &other || (size == other.size && source == other.source && destination == other.destination);
	}
}
