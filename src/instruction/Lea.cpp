#include "instruction/Lea.h"

namespace LL2X {
	Lea::Lea(OperandPtr source_, OperandPtr destination_, x86_64::Width size_):
		SizedSourceToDest(source_, destination_, size_) {}

	Lea::Lea(OperandPtr source_, OperandPtr destination_):
		SizedSourceToDest(source_, destination_, destination_->width) {}

	bool Lea::operator==(const Lea &other) const {
		return this == &other || (size == other.size && source == other.source && destination == other.destination);
	}
}
