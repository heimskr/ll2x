#pragma once

#include <memory>

#include "parser/Types.h"

namespace LL2X {
	class Function;
	class Variable;

	struct StackLocation {
		enum class Purpose {
			/** For spilled registers, unsurprisingly. */
			Spill,

			/** Functions that return large (> 128 bits) structs secretly take a pointer to somewhere on the stack as an
			 *  additional argument and return that pointer instead of copying the struct directly. */
			BigStruct,

			Clobber,

			CalleeSave,

			Alloca,
		};
		
		Function *function = nullptr;
		Purpose purpose;
		int offset = 0;
		int width = -1; // in bytes?
		int align = -1;
		TypePtr type;
		std::shared_ptr<Variable> variable;

		StackLocation(Function *function_, std::shared_ptr<Variable> variable_, Purpose purpose_, int offset_ = 0,
			int width_ = -1, int align_ = -1);
		StackLocation(Function *function_, LL2X::Type *type_, Purpose purpose, int offset_ = 0, int width_ = -1,
			int align_ = -1);

		LL2X::TypePtr getType() const;
		std::string getName() const;

		bool operator==(const StackLocation &) const;
	};
}
