#include "instruction/Lzcnt.h"

namespace LL2X {
	Lzcnt::Lzcnt(OperandPtr source_, OperandPtr destination_, int size_):
		SizedSourceToDest(std::move(source_), std::move(destination_), size_) {}

	Lzcnt::Lzcnt(OperandPtr source_, const OperandPtr &destination_):
		SizedSourceToDest(std::move(source_), destination_, destination_->bitWidth) {}

	bool Lzcnt::operator==(const Lzcnt &other) const {
		return this == &other || (size == other.size && source == other.source && destination == other.destination);
	}
}
