#include "instruction/Lea.h"

namespace LL2X {
	Lea::Lea(OperandPtr source_, OperandPtr destination_, int size_):
		SizedSourceToDest(std::move(source_), std::move(destination_), size_) {}

	Lea::Lea(OperandPtr source_, const OperandPtr &destination_):
		SizedSourceToDest(std::move(source_), destination_, destination_->bitWidth) {}

	bool Lea::operator==(const Lea &other) const {
		return this == &other || (size == other.size && source == other.source && destination == other.destination);
	}
}
