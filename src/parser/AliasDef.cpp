#include <sstream>

#include "parser/AliasDef.h"
#include "parser/Constant.h"
#include "parser/Lexer.h"
#include "parser/Parser.h"

namespace LL2X {
	AliasDef::AliasDef(ASTNode *gvar, ASTNode *linkage_, ASTNode *preemption_, ASTNode *visibility_,
	                   ASTNode *dll_storage_class, ASTNode *thread_local_, ASTNode *unnamed_addr, ASTNode *type_,
	                   ASTNode *value_node_):
	ASTNode(llvmParser, LLVM_ALIAS_DEF, gvar->lexerInfo), name(gvar->lexerInfo) {
		delete gvar;

		if (linkage_ != nullptr) {
			const std::string &link = *linkage_->lexerInfo;
			for (const std::pair<const Linkage, std::string> &pair: linkage_map) {
				if (link == pair.second) {
					linkage = pair.first;
					break;
				}
			}
			delete linkage_;
		}

		if (preemption_ != nullptr) {
			if (*preemption_->lexerInfo == "dso_preemptable")
				preemption = Preemption::DsoPreemptable;
			else if (*preemption_->lexerInfo == "dso_local")
				preemption = Preemption::DsoLocal;
			else
				throw std::runtime_error("Invalid preemption in GlobalVarDef: \"" + *preemption_->lexerInfo + "\"");
			delete preemption_;
		}

		if (visibility_ != nullptr) {
			visibility = *visibility_->lexerInfo == "hidden"? Visibility::Hidden :
				(*visibility_->lexerInfo == "protected"? Visibility::Protected : Visibility::Default);
			delete visibility_;
		}

		if (dll_storage_class != nullptr) {
			dllStorageClass = *dll_storage_class->lexerInfo == "dllimport"?
				DllStorageClass::Import : DllStorageClass::Export;
			delete dll_storage_class;
		}

		if (thread_local_ != nullptr) {
			const std::string &tl = *thread_local_->at(0)->lexerInfo;
			if (tl == "localdynamic")
				threadLocal = ThreadLocal::LocalDynamic;
			else if (tl == "initialexec")
				threadLocal = ThreadLocal::InitialExec;
			else if (tl == "localexec")
				threadLocal = ThreadLocal::LocalExec;
			delete thread_local_;
		}

		if (unnamed_addr != nullptr) {
			if (*unnamed_addr->lexerInfo == "unnamed_addr")
				unnamedAddr = UnnamedAddr::Unnamed;
			else if (*unnamed_addr->lexerInfo == "local_unnamed_addr")
				unnamedAddr = UnnamedAddr::LocalUnnamed;
			delete unnamed_addr;
		}

		type = getType(type_);
		delete type_;


		std::unique_ptr<ASTNode> value_node(value_node_);

		if (value_node->symbol == LLVM_CONSTANT) {
			ConstantPtr constant = std::make_shared<Constant>(value_node.get())->convert();
			ptrType = constant->type;
			if (constant->value->valueType() != ValueType::Global)
				throw std::runtime_error("Expected a global value in AliasDef");
			aliasTo = dynamic_cast<GlobalValue *>(constant->value.get())->name;
		} else if (value_node->symbol == LLVM_CONVERSION_EXPR) {
			if (*value_node->lexerInfo != "bitcast")
				throw std::runtime_error("Unexpected conversion type in AliasDef: " + *value_node->lexerInfo);
			ConstantPtr constant = std::make_shared<Constant>(value_node->front())->convert();
			ptrType = getType(value_node->at(1));
			if (constant->value->valueType() != ValueType::Global)
				throw std::runtime_error("Expected a global value in AliasDef");
			aliasTo = dynamic_cast<GlobalValue *>(constant->value.get())->name;
		} else {
			value_node->debug();
			throw std::runtime_error("Unexpected value node in AliasDef");
		}
	}

	std::string AliasDef::debugExtra() const {
		std::stringstream out;
		out << " =";
		if (linkage != Linkage::Default)
			out << " " << linkage_map.at(linkage);
		switch (visibility) {
			case Visibility::Hidden:    out << " hidden"; break;
			case Visibility::Protected: out << " protected"; break;
			default:;
		}
		switch (dllStorageClass) {
			case DllStorageClass::Import: out << " import"; break;
			case DllStorageClass::Export: out << " export"; break;
			default:;
		}
		switch (threadLocal) {
			case ThreadLocal::LocalDynamic: out << " localdynamic"; break;
			case ThreadLocal::InitialExec:  out << " initialexec"; break;
			case ThreadLocal::LocalExec:    out << " localexec"; break;
			default:;
		}
		switch (unnamedAddr) {
			case UnnamedAddr::Unnamed: out << " unnamed_addr"; break;
			case UnnamedAddr::LocalUnnamed: out << " local_unnamed_addr"; break;
			default:;
		}
		out << " " << std::string(*type) << ", " << std::string(*ptrType) << " \e[36m" << *aliasTo << "\e[39m";
		return out.str();
	}
}
