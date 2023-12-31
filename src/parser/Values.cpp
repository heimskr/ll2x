#include <climits>
#include <iostream>
#include <sstream>
#include <unordered_map>

#include "compiler/Function.h"
#include "compiler/Operand.h"
#include "compiler/Variable.h"
#include "parser/ASTNode.h"
#include "parser/Constant.h"
#include "parser/Lexer.h"
#include "parser/Parser.h"
#include "parser/StringSet.h"
#include "parser/Types.h"
#include "parser/Values.h"
#include "util/Deleter.h"
#include "util/Util.h"

#define THROW_ON_OVERFLOW

namespace LL2X {
	bool Value::isInt() const {
		return valueType() == ValueType::Int;
	}

	bool Value::isBool() const {
		return valueType() == ValueType::Bool;
	}

	bool Value::isNull() const {
		return valueType() == ValueType::Null;
	}

	bool Value::isLocal() const {
		return valueType() == ValueType::Local;
	}

	bool Value::isOperand() const {
		return valueType() == ValueType::Operand;
	}

	bool Value::isGlobal() const {
		return valueType() == ValueType::Global;
	}

	bool Value::isGetelementptr() const {
		return valueType() == ValueType::Getelementptr;
	}

	int Value::intValue(bool can_warn) const {
		const int64_t val = longValue();
		if (can_warn && (INT_MAX < val || val < INT_MIN)) {
#ifdef THROW_ON_OVERFLOW
			throw std::runtime_error("Value " + std::to_string(val) + " is outside the integer range");
#else
			warn() << "Value " << val << " is outside the integer range\n";
#endif
		}
		return static_cast<int>(val);
	}

	bool Value::overflows() const {
		const int64_t long_value = longValue();
		return INT_MAX < long_value || long_value < INT_MIN;
	}

	IntValue::IntValue(const std::string &value_) {
		value = Util::parseLong(value_, value_.substr(0, 2) == "0x"? 16 : 10);
	}

	VectorValue::VectorValue(const ASTNode *node) {
		for (auto iter = node->cbegin(); iter != node->cend(); ++iter)
			values.emplace_back(getType((*iter)->at(0)), getValue((*iter)->at(1)));
	}

	ValuePtr VectorValue::copy() const {
		std::vector<std::pair<TypePtr, ValuePtr>> newvec;
		for (const std::pair<TypePtr, ValuePtr> &pair: values)
			newvec.emplace_back(pair.first->copy(), pair.second->copy());
		return std::make_shared<VectorValue>(newvec);
	}

	VectorValue::operator std::string() {
		std::stringstream out;
		out << "\e[2m<\e[22m";
		auto begin = values.cbegin();
		for (auto iter = begin, end = values.cend(); iter != end; ++iter) {
			const std::pair<TypePtr, ValuePtr> &pair = *iter;
			if (iter != begin)
				out << "\e[2m,\e[22m ";
			out << std::string(*pair.first) << ' ' << std::string(*pair.second);
		}
		out << "\e[2m>\e[22m";
		return out.str();
	}

	std::string VectorValue::toString() const {
		std::stringstream out;
		out << "<";
		auto begin = values.cbegin();
		for (auto iter = begin, end = values.cend(); iter != end; ++iter) {
			const std::pair<TypePtr, ValuePtr> &pair = *iter;
			if (iter != begin)
				out << ", ";
			out << std::string(*pair.first) << ' ' << std::string(*pair.second);
		}
		out << ">";
		return out.str();
	}

	LocalValue::LocalValue(const VariablePtr &variable_):
		VariableValue(variable_->getID()), variable(variable_) {}

	LocalValue::LocalValue(const ASTNode *node): VariableValue(nullptr) {
		name = node->lexerInfo->at(0) == '%'? StringSet::intern(node->lexerInfo->substr(1)) : node->lexerInfo;
	}

	ValuePtr LocalValue::copy() const {
		if (variable)
			return std::make_shared<LocalValue>(variable);
		return std::make_shared<LocalValue>(name);
	}

	LocalValue::operator std::string() {
		return "\e[32m" + (variable? variable->ansiString(x86_64::getWidth(variable->getType()? variable->getType()->width() : 64)) : "%" + *name) +
			"\e[39m";
	}

	std::string LocalValue::toString() const {
		return variable? variable->plainString(x86_64::getWidth(variable->getType()? variable->getType()->width() : 64)) : "%" + *name;
	}

	VariablePtr LocalValue::getVariable(Function &function) {
		if (variable)
			return variable;
		return function.getVariable(*name);
	}

	OperandPtr LocalValue::makeOperand() const {
		if (variable)
			return Operand::make(variable);
		throw std::runtime_error("Can't make operand from LocalValue: variable is null");
	}

	OperandValue::operator std::string() {
		return operand? operand->ansiString() : "\e[31mNULL\e[39m";
	}

	std::string OperandValue::toString() const {
		return compile();
	}

	std::string OperandValue::compile() const {
		return operand? operand->toString() : "NULL OPERAND";
	}

	GlobalValue::GlobalValue(const ASTNode *node): VariableValue(nullptr) {
		name = node->lexerInfo->at(0) == '@'? StringSet::intern(node->lexerInfo->substr(1)) : node->lexerInfo;
	}

	GetelementptrValue::GetelementptrValue(bool inbounds_, TypePtr type_, TypePtr ptr_type, ValuePtr variable_,
	                                       const decltype(decimals) &decimals_):
		inbounds(inbounds_),
		type(std::move(type_)),
		ptrType(std::move(ptr_type)),
		variable(std::move(variable_)),
		decimals(decimals_) {}

	GetelementptrValue::GetelementptrValue(ASTNode *inbounds_, ASTNode *type_, ASTNode *ptr_type, ASTNode *variable_,
	                                       ASTNode *decimal_list) {
		type = getType(type_);
		ptrType = getType(ptr_type);
		variable = getValue(variable_);
		for (auto iter = decimal_list->cbegin(), end = decimal_list->cend(); iter != end; ++iter) {
			const ASTNode *comma = *iter;
			const ASTNode *inttype = comma->at(0);
			const ASTNode *decimal = comma->at(1);
			decimals.emplace_back(inttype->atoi(1), decimal->atoi());
		}

		delete type_;
		delete ptr_type;
		delete variable_;
		delete decimal_list;

		if (inbounds_ != nullptr) {
			inbounds = true;
			delete inbounds_;
		}
	}

	GetelementptrValue::GetelementptrValue(const ASTNode *node): inbounds(node->size() == 5) {
		type = getType(node->at(0));
		ptrType = getType(node->at(1));
		variable = getValue(node->at(2));

		for (auto iter = node->at(3)->cbegin(), end = node->at(3)->cend(); iter != end; ++iter) {
			const ASTNode *comma = *iter;
			const ASTNode *inttype = comma->at(0);
			const ASTNode *decimal = comma->at(1);
			decimals.emplace_back(inttype->atoi(1), decimal->atoi());
		}
	}

	GetelementptrValue::operator std::string() {
		std::stringstream out;
		out << "\e[91mgetelementptr\e[39m";
		if (inbounds)
			out << " \e[91minbounds\e[39m";
		out << " \e[2m(\e[22m" << *type << "\e[2m,\e[22m " << *ptrType << ' ' << *variable;
		for (const auto &decimal: decimals) {
			out << "\e[2m,\e[22m \e[33mi" << decimal.first << " \e[32m";
			if (std::holds_alternative<VariableID>(decimal.second))
				out << *std::get<VariableID>(decimal.second);
			else
				out << std::get<int64_t>(decimal.second);
			out << "\e[39m";
		}
		out << "\e[2m)\e[22m";
		return out.str();
	}

	std::string GetelementptrValue::toString() const {
		std::stringstream out;
		out << "getelementptr";
		if (inbounds)
			out << " inbounds";
		out << " (" << type->toString() << ", " << ptrType->toString() << ' ' << variable->toString();
		for (const auto &decimal: decimals) {
			out << ", i" << decimal.first << ' ';
			if (std::holds_alternative<VariableID>(decimal.second))
				out << *std::get<VariableID>(decimal.second);
			else
				out << std::get<int64_t>(decimal.second);
		}
		out << ')';
		return out.str();
	}

// IcmpValue

	IcmpValue::IcmpValue(ASTNode *cond_, ASTNode *left_, ASTNode *right_):
	cond(cond_inv_map.at(*cond_->lexerInfo)), left(Constant::make(left_)), right(Constant::make(right_)) {}

	IcmpValue::IcmpValue(const ASTNode *node):
		cond(cond_inv_map.at(*node->at(0)->lexerInfo)),
		left(Constant::make(node->at(1))), right(Constant::make(node->at(2))) {}

	ValuePtr IcmpValue::copy() const {
		return IcmpValue::make(cond, left->copy(), right->copy());
	}

	IcmpValue::operator std::string() {
		return "\e[31micmp " + cond_map.at(cond) + "\e[39m (" + std::string(*left) + ", " + std::string(*right) + ")";
	}

	std::string IcmpValue::toString() const {
		return "icmp " + cond_map.at(cond) + " (" + left->toString() + ", " + right->toString() + ")";
	}

	std::shared_ptr<IcmpNode> IcmpValue::makeNode(const VariablePtr &variable) const {
		return IcmpNode::make(Operand::make(variable), cond, left, right);
	}

// LogicValue

	LogicValue::LogicValue(ASTNode *type_, ASTNode *left_, ASTNode *right_):
	type(logic_inv_map.at(*type_->lexerInfo)), left(Constant::make(left_)), right(Constant::make(right_)) {}

	LogicValue::LogicValue(const ASTNode *node):
		type(logic_inv_map.at(*node->lexerInfo)),
		left(Constant::make(node->at(0))), right(Constant::make(node->at(1))) {}

	ValuePtr LogicValue::copy() const {
		return LogicValue::make(type, left->copy(), right->copy());
	}

	LogicValue::operator std::string() {
		return "\e[31m" + logic_map.at(type) + "\e[39m (" + std::string(*left) + ", " + std::string(*right) + ')';
	}

	std::string LogicValue::toString() const {
		return logic_map.at(type) + " (" + left->toString() + ", " + right->toString() + ')';
	}

	std::shared_ptr<LogicNode> LogicValue::makeNode(const VariablePtr &variable) const {
		return LogicNode::make(Operand::make(variable), type, left, right);
	}

// StructValue

	StructValue::StructValue(const ASTNode *node): packed(*node->lexerInfo == "<") {
		for (const ASTNode *sub: *node->at(0))
			constants.push_back(std::make_shared<Constant>(sub));
	}

	ValuePtr StructValue::copy() const {
		std::vector<std::shared_ptr<Constant>> constants_copy;
		for (const ConstantPtr &constant: constants)
			constants_copy.push_back(constant->copy());
		return std::make_shared<StructValue>(std::move(constants_copy), packed);
	}

	StructValue::operator std::string() {
		std::stringstream out;
		out << "\e[2m";
		if (packed)
			out << '<';
		out << "{\e[22m";
		for (auto begin = constants.cbegin(), iter = begin, end = constants.cend(); iter != end; ++iter) {
			if (iter != begin)
				out << "\e[2m,\e[22m ";
			out << std::string(**iter);
		}
		out << "\e[2m}";
		if (packed)
			out << '>';
		out << "\e[22m";
		return out.str();
	}

	std::string StructValue::toString() const {
		std::stringstream out;
		if (packed)
			out << '<';
		out << '{';
		for (auto begin = constants.cbegin(), iter = begin, end = constants.cend(); iter != end; ++iter) {
			if (iter != begin)
				out << ", ";
			out << (*iter)->toString();
		}
		out << '}';
		if (packed)
			out << '>';
		return out.str();
	}

	ArrayValue::ArrayValue(const ASTNode *node) {
		for (const ASTNode *sub: *node)
			constants.push_back(std::make_shared<Constant>(sub));
	}

	ValuePtr ArrayValue::copy() const {
		std::vector<ConstantPtr> constants_copy;
		constants_copy.reserve(constants.size());
		for (const ConstantPtr &constant: constants)
			constants_copy.push_back(constant->copy());
		return std::make_shared<ArrayValue>(constants_copy);
	}

	ArrayValue::operator std::string() {
		std::stringstream out;
		out << "\e[2m[\e[22m";
		for (auto begin = constants.cbegin(), iter = begin, end = constants.cend(); iter != end; ++iter) {
			if (iter != begin)
				out << "\e[2m,\e[22m ";
			out << std::string(**iter);
		}
		out << "\e[2m]\e[22m";
		return out.str();
	}

	std::string ArrayValue::toString() const {
		std::stringstream out;
		out << '[';
		for (auto begin = constants.cbegin(), iter = begin, end = constants.cend(); iter != end; ++iter) {
			if (iter != begin)
				out << ", ";
			out << (*iter)->toString();
		}
		out << ']';
		return out.str();
	}

	CStringValue::CStringValue(const ASTNode *node): CStringValue(StringSet::intern(node->extractName())) {}

	std::string CStringValue::reescape() const {
		std::string out;
		for (size_t i = 0, max = value->size(); i < max; ++i) {
			const char ch0 = (*value)[i];
			if (i < max - 2) {
				const uint8_t ch1 = (*value)[i + 1];
				const uint8_t ch2 = (*value)[i + 2];
				if (ch0 == '\\' && Util::isHex(ch1) && Util::isHex(ch2)) {
					const uint8_t byte = (Util::fromHex(ch1) << 4) | Util::fromHex(ch2);
					out += std::string{
						'\\', char('0' + (byte >> 6)), char('0' + ((byte >> 3) & 7)), char('0' + (byte & 7))
					};
					i += 2;
				} else
					out += ch0;
			} else
				out += ch0;
		}
		return out;
	}

	ValuePtr getValue(ASTNode *node) {
		switch (node->symbol) {
			case LLVMTOK_FLOATING:        return std::make_shared<DoubleValue>(node);
			case LLVMTOK_DECIMAL:
			case LLVMTOK_HEXADECIMAL:     return std::make_shared<IntValue>(node);
			case LLVMTOK_BOOL:            return std::make_shared<BoolValue>(node);
			case LLVM_VECTOR:             return std::make_shared<VectorValue>(node);
			case LLVMTOK_PVAR:            return std::make_shared<LocalValue>(node);
			case LLVMTOK_GVAR:            return std::make_shared<GlobalValue>(node);
			case LLVMTOK_GETELEMENTPTR:   return std::make_shared<GetelementptrValue>(node);
			case LLVMTOK_VOID:            return std::make_shared<VoidValue>();
			case LLVM_STRUCT_VALUE:       return std::make_shared<StructValue>(node);
			case LLVM_VALUE_LIST:         return std::make_shared<ArrayValue>(node);
			case LLVMTOK_NULL:            return std::make_shared<NullValue>();
			case LLVMTOK_CSTRING:         return std::make_shared<CStringValue>(node);
			case LLVMTOK_ZEROINITIALIZER: return std::make_shared<ZeroinitializerValue>();
			case LLVMTOK_UNDEF:           return std::make_shared<UndefValue>();
			case LLVMTOK_ICMP:            return std::make_shared<IcmpValue>(node);
			case LLVMTOK_LOGIC:           return std::make_shared<LogicValue>(node);
			case LLVM_CONVERSION_EXPR:    return convertConversion(node);
			default:
				node->debug();
				throw std::invalid_argument("Couldn't create Value from a node with symbol " +
			                                std::string(llvmParser.getName(node->symbol)));
		}
	}

	ValuePtr convertConversion(ASTNode *node) {
		// TODO: verify
		if (node->at(0)->symbol == LLVM_CONSTANT)
			return Constant(node->at(0)).convert()->value;
		return getValue(node->at(0));
	}

	std::ostream & operator<<(std::ostream &os, Value &value) {
		return os << std::string(value);
	}

	static std::unordered_map<ValueType, std::string> value_names {
		{ValueType::Double, "Double"}, {ValueType::Int, "Int"}, {ValueType::Null, "Null"},
		{ValueType::Vector, "Vector"}, {ValueType::Bool, "Bool"}, {ValueType::Local, "Local"},
		{ValueType::Global, "Global"}, {ValueType::Getelementptr, "Getelementptr"}, {ValueType::Void, "Void"},
		{ValueType::Struct, "Struct"}, {ValueType::Array, "Array"}, {ValueType::CString, "CString"},
		{ValueType::Zeroinitializer, "Zeroinitializer"}, {ValueType::Undef, "Undef"}, {ValueType::Icmp, "Icmp"},
		{ValueType::Operand, "Operand"},
	};

	std::string getName(ValueType type) {
		return value_names.at(type);
	}
}
