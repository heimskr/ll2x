#include "instruction/Movabs.h"

namespace LL2X {
	Movabs::Movabs(OperandPtr source_, OperandPtr destination_, int size_):
		SizedSourceToDest(std::move(source_), std::move(destination_), size_) {}

	Movabs::Movabs(OperandPtr source_, const OperandPtr &destination_):
		SizedSourceToDest(std::move(source_), destination_, destination_->bitWidth) {}

	bool Movabs::operator==(const Movabs &other) const {
		return this == &other || (size == other.size && source == other.source && destination == other.destination);
	}
}
