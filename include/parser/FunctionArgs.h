#pragma once

#include <unordered_set>
#include <vector>

#include "ASTNode.h"
#include "Types.h"

namespace LL2X {
	struct FunctionArgument {
		TypePtr type;
		std::unordered_set<ParAttr> parattrs;
		const std::string *name = nullptr;
		const std::string *originalName = nullptr;

		FunctionArgument(ASTNode *);
		FunctionArgument(TypePtr type_, const std::string *name_): type(type_), name(name_) {}
		FunctionArgument(TypePtr type_, const std::string &name_);
	};

	struct FunctionArgs: ASTNode {
		bool ellipsis;
		std::vector<FunctionArgument> arguments;

		FunctionArgs(ASTNode *list, bool ellipsis_);
		FunctionArgs(std::vector<FunctionArgument> arguments_, bool ellipsis_);
	};
}
