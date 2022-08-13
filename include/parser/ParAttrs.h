#pragma once

#include <memory>
#include <unordered_set>

#include "Enums.h"

namespace LL2X {
	class ASTNode;
	class Type;

	/** Represents a set of parameter attributes. */
	struct ParAttrs {
		std::unordered_set<ParAttr> attributes;
		std::shared_ptr<Type> byvalType = nullptr;
		int align = -1, dereferenceable = -1;
		bool orNull = false;
		bool signext = false;
		bool zeroext = false;

		ParAttrs();
		ParAttrs(const ASTNode &);
		ParAttrs(const ParAttrs &);
		ParAttrs(ParAttrs &&) = default;

		~ParAttrs() = default;

		ParAttrs & operator=(const ParAttrs &);
		ParAttrs & operator=(ParAttrs &&) = default;

		operator std::string() const;
	};
}
