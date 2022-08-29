#pragma once

#include <memory>
#include <map>

#include "parser/Types.h"

namespace LL2X {
	class Function;
	class Instruction;
	class Variable;
	struct StructType;

	namespace PaddedStructs {
		/** Returns the offset in bits of a member of a struct. */
		int64_t getOffset(const StructType &, int64_t index);

		/** Inserts instructions to extract a value from a struct packed inside registers. */
		std::shared_ptr<Variable> extract(const std::shared_ptr<Variable> &, int64_t index, Function &,
		                                  const std::shared_ptr<Instruction> &);
	}
}
