#include <sstream>

#include "parser/ASTNode.h"
#include "parser/Lexer.h"
#include "parser/ParAttrs.h"
#include "parser/Types.h"

namespace LL2X {
	ParAttrs::ParAttrs() = default;

	ParAttrs::ParAttrs(const ParAttrs &source):
	attributes(source.attributes) {
		if (source.byvalType)
			byvalType = source.byvalType->copy();
		align = source.align;
		dereferenceable = source.dereferenceable;
		orNull = source.orNull;
		signext = source.signext;
		zeroext = source.zeroext;
	}
	
	ParAttrs::ParAttrs(const ASTNode &node) {
		for (const ASTNode *child: node) {
			if (child->symbol == LLVMTOK_DEREF) {
				dereferenceable = child->at(0)->atoi();
				orNull = *child->lexerInfo == "dereferenceable_or_null";
			} else if (child->symbol == LLVMTOK_ALIGN) {
				align = child->at(0)->atoi();
			} else
				for (const std::pair<const ParAttr, std::string> &pair: parattr_map)
					if (*child->lexerInfo == pair.second) {
						attributes.insert(pair.first);
						if (pair.first == ParAttr::Signext)
							signext = true;
						if (pair.first == ParAttr::Zeroext)
							zeroext = true;
						break;
					}
		}
	}

	ParAttrs & ParAttrs::operator=(const ParAttrs &other) {
		if (this == &other)
			return *this;

		attributes = other.attributes;
		byvalType = other.byvalType? other.byvalType->copy() : nullptr;
		align = other.align;
		dereferenceable = other.dereferenceable;
		orNull = other.orNull;
		signext = other.signext;
		zeroext = other.zeroext;
		return *this;
	}

	ParAttrs::operator std::string() const {
		std::stringstream out;
		for (ParAttr attribute: attributes)
			if (attribute != ParAttr::Byval || !byvalType)
				out << parattr_map.at(attribute) << ' ';
		if (byvalType)
			out << "byval(" << std::string(*byvalType) << ") ";
		if (dereferenceable != -1)
			out << "dereferenceable" << (orNull? "_or_null" : "") << '(' << dereferenceable << ") ";
		if (align != -1)
			out << "align " << align << ' ';
		std::string str = out.str();
		if (!str.empty())
			str.pop_back(); // Remove the extra space at the end
		return str;
	}

	std::string ParAttrs::toString() const {
		std::stringstream out;
		for (ParAttr attribute: attributes)
			if (attribute != ParAttr::Byval || !byvalType)
				out << parattr_map.at(attribute) << ' ';
		if (byvalType)
			out << "byval(" << byvalType->toString() << ") ";
		if (dereferenceable != -1)
			out << "dereferenceable" << (orNull? "_or_null" : "") << '(' << dereferenceable << ") ";
		if (align != -1)
			out << "align " << align << ' ';
		std::string str = out.str();
		if (!str.empty())
			str.pop_back(); // Remove the extra space at the end
		return str;
	}
}
