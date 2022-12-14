#include <iostream>
#include <sstream>

#include "parser/Lexer.h"
#include "parser/Parser.h"
#include "parser/StringSet.h"
#include "parser/StructNode.h"

namespace LL2X {
	StructNode::StructNode(std::initializer_list<TypePtr>  types_, StructShape shape_):
		ASTNode(llvmParser, LLVM_STRUCTDEF, ""), name(StringSet::intern("[anon]")), shape(shape_), types(types_) {}

	StructNode::StructNode(const std::vector<TypePtr> &types_, StructShape shape_):
		ASTNode(llvmParser, LLVM_STRUCTDEF, ""), name(StringSet::intern("[anon]")), shape(shape_), types(types_) {}

	StructNode::StructNode(StructShape shape_):
		ASTNode(llvmParser, LLVM_STRUCTDEF, ""), name(StringSet::intern("[anon]")), shape(shape_) {}

	StructNode::StructNode(StructShape shape_, ASTNode *left, ASTNode *types_):
	ASTNode(llvmParser, LLVM_STRUCTDEF, left->lexerInfo), name(StringSet::intern(left->extractName())), shape(shape_) {
		if (left->symbol == LLVMTOK_CLASSVAR)
			form = StructForm::Class;
		else if (left->symbol == LLVMTOK_UNIONVAR)
			form = StructForm::Union;
		delete left;
		addTypes(types_);
	}

	StructNode::StructNode(StructShape shape_, ASTNode *types_):
	ASTNode(llvmParser, LLVM_STRUCTDEF, "[anon]"), name(StringSet::intern("[anon]")), shape(shape_) {
		addTypes(types_);
	}

	void StructNode::addTypes(ASTNode *types_) {
		if (types_ != nullptr) {
			types.reserve(types_->size());
			for (const ASTNode *typenode: *types_)
				types.push_back(getType(typenode));
			delete types_;
		}
	}

	std::string StructNode::typeString() const {
		std::stringstream out;
		out << "\e[2m{\e[0m";
		auto begin = types.begin();
		auto end = types.end();
		for (auto iter = begin; iter != end; ++iter) {
			if (iter != begin)
				out << "\e[2m, \e[0m";
			out << std::string(**iter);
		}
		out << "\e[2m}\e[0m";
		return out.str();
	}

	std::string StructNode::typeStringPlain() const {
		std::stringstream out;
		out << '{';
		auto begin = types.begin();
		auto end   = types.end();
		for (auto iter = begin; iter != end; ++iter) {
			if (iter != begin)
				out << ", ";
			out << (*iter)->toString();
		}
		out << '}';
		return out.str();
	}

	std::string StructNode::debugExtra() const {
		std::stringstream out;
		if (shape == StructShape::Opaque) {
			out << " opaque";
		} else {
			if (shape == StructShape::Packed)
				out << " packed";
			out << " " << typeString();
		}

		return out.str();
	}

	std::shared_ptr<StructNode> StructNode::copy() const {
		std::vector<TypePtr> type_copies;
		type_copies.reserve(types.size());
		for (const TypePtr &type: types)
			type_copies.push_back(type->copy());
		std::shared_ptr<StructNode> copied = std::make_shared<StructNode>(type_copies, shape);
		copied->form = form;
		copied->name = name;
		return copied;
	}
}
