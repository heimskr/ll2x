#pragma once

#include <cstdint>
#include <list>
#include <memory>
#include <string>
#include <variant>

namespace LL2X {
	class Function;
	class Instruction;
	class Program;
	class Type;
	class Variable;
	struct GetelementptrValue;
	struct Operand;

	namespace Getelementptr {
		/** Computes the offset (in bits) of a getelementptr expression. Doesn't support pvar indices. */
		int64_t compute(const std::shared_ptr<Type> &, std::list<int64_t>, std::shared_ptr<Type> *out_type = nullptr);

		/** Computes the offset (in bits) of a getelementptr expression. Doesn't support pvar indices. */
		int64_t compute(Program &, const GetelementptrValue *, std::shared_ptr<Type> *out_type = nullptr);

		/** Computes the offset (in bits) of a getelementptr expression, inserting instructions before a given base
		 *  instruction as necessary to support pvar indices. */
		void insert(Function &, const std::shared_ptr<Type> &, std::list<std::variant<int64_t, const std::string *>>,
		            std::shared_ptr<Instruction>, std::shared_ptr<Operand> &,
		            std::shared_ptr<Type> *out_type = nullptr);

		/** Computes the offset (in bits) of a getelementptr expression, inserting instructions before a given base
		 *  instruction as necessary to support pvar indices. */
		void insert(Function &, const GetelementptrValue *, std::shared_ptr<Instruction>, std::shared_ptr<Operand> &,
		            std::shared_ptr<Type> *out_type = nullptr);

		/** Returns a list of indices from a GetelementptrValue, checking to see whether all of them are longs. For each
		 *  pvar in the decimals, a warning will be printed and 0 will be added to the list. */
		std::list<int64_t> getLongIndices(const GetelementptrValue &);

		/** Returns a list of indices from a GetelementptrValue. Indices may be either a long (representing a constant
		 *  index) or a const std::string * (representing a pvar index). */
		std::list<std::variant<int64_t, const std::string *>> getVariantIndices(const GetelementptrValue &);
	}
}
