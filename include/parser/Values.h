#pragma once

#include <cstdlib>
#include <memory>
#include <stdexcept>
#include <string>
#include <utility>
#include <variant>
#include <vector>

#include "ASTNode.h"
#include "Enums.h"
#include "compiler/Operand.h"
#include "util/Makeable.h"

namespace LL2X {
	class ASTNode;
	class Type;
	class Function;
	struct IcmpNode;
	struct LogicNode;

	class Variable;
	using VariablePtr = std::shared_ptr<Variable>;

	struct Value;
	using ValuePtr = std::shared_ptr<Value>;

	struct Constant;
	using ConstantPtr = std::shared_ptr<Constant>;

	struct Value {
		virtual ~Value() = default;
		virtual ValueType valueType() const = 0;
		virtual ValuePtr copy() const = 0;
		virtual operator std::string() = 0;
		virtual std::string toString() const = 0;
		bool isInt() const;
		bool isBool() const;
		bool isNull() const;
		bool isLocal() const;
		bool isOperand() const;
		bool isGlobal() const;
		bool isGetelementptr() const;
		virtual bool isIntLike() const { return false; }
		virtual long longValue() const { throw std::runtime_error("Value isn't int-like"); }
		int intValue(bool can_warn = true);
		bool overflows() const;
		/* Stringifies the Value into something that can be put in a #data section. */
		virtual std::string compile() const = 0;
		virtual OperandPtr makeOperand() const {
			throw std::logic_error("makeOperand unimplemented for " + std::string(typeid(*this).name()));
		}
	};

	struct DoubleValue: Value {
		const double value;
		const std::string *original;
		DoubleValue(double value_): value(value_), original(StringSet::intern(std::to_string(value_))) {}
		DoubleValue(const std::string &value_): value(std::stod(value_)), original(StringSet::intern(value_)) {}
		DoubleValue(const std::string *value_): value(std::stod(*value_)), original(value_) {}
		DoubleValue(const ASTNode *node): DoubleValue(node->lexerInfo) {}
		ValueType valueType() const override { return ValueType::Double; }
		ValuePtr copy() const override { return std::make_shared<DoubleValue>(value); }
		operator std::string() override { return *original; }
		std::string toString() const override { return *original; }
		std::string compile() const override { return std::to_string(value); }
	};

	struct IntValue: Value, Makeable<IntValue> {
		long value;
		IntValue(long value_): value(value_) {}
		IntValue(const std::string &);
		IntValue(const std::string *value_): IntValue(*value_) {}
		IntValue(const ASTNode *node): IntValue(node->lexerInfo) {}
		ValueType valueType() const override { return ValueType::Int; }
		ValuePtr copy() const override { return std::make_shared<IntValue>(value); }
		operator std::string() override { return "\e[92m" + std::to_string(value) + "\e[0m"; }
		std::string toString() const override { return std::to_string(value); }
		bool isIntLike() const override { return true; }
		long longValue() const override { return value; }
		std::string compile() const override { return std::to_string(value); }
		OperandPtr makeOperand() const override { return Op4(value); }
	};

	struct NullValue: IntValue {
		NullValue(): IntValue((long) 0) {}
		ValueType valueType() const override { return ValueType::Null; }
		ValuePtr copy() const override { return std::make_shared<NullValue>(); }
		operator std::string() override { return "null"; }
		std::string toString() const override { return "null"; }
		bool isIntLike() const override { return true; }
		long longValue() const override { return 0; }
		std::string compile() const override { return "0"; }
		OperandPtr makeOperand() const override { return Op1(0); }
	};

	struct VectorValue: Value {
		std::vector<std::pair<TypePtr, ValuePtr>> values;
		VectorValue(const ASTNode *);
		VectorValue(const std::vector<std::pair<TypePtr, ValuePtr>> &values_): values(values_) {}
		ValueType valueType() const override { return ValueType::Vector; }
		ValuePtr copy() const override;
		operator std::string() override;
		std::string toString() const override;
		std::string compile() const override { return "UNIMPLEMENTED (Vector)"; }
	};

	struct BoolValue: Value {
		bool value;
		BoolValue(bool value_): value(value_) {}
		BoolValue(const std::string &value_): BoolValue(value_ == "true") {}
		BoolValue(const std::string *value_): BoolValue(*value_) {}
		BoolValue(const ASTNode *node): BoolValue(node->lexerInfo) {}
		ValueType valueType() const override { return ValueType::Bool; }
		ValuePtr copy() const override { return std::make_shared<BoolValue>(value); }
		operator std::string() override { return value? "true" : "false"; }
		std::string toString() const override { return value? "true" : "false"; }
		bool isIntLike() const override { return true; }
		long longValue() const override { return value? 1 : 0; }
		std::string compile() const override { return std::to_string(longValue()); }
		OperandPtr makeOperand() const override { return Op1(longValue()); }

	};

	struct VariableValue: Value {
		protected:
			VariableValue(const std::string *name_): name(name_) {}

		public:
			const std::string *name = nullptr;
			std::string compile() const override { return "UNSUPPORTED (Variable)"; }
	};

	struct LocalValue: VariableValue, Makeable<LocalValue> {
		VariablePtr variable;
		LocalValue(const std::string *name_): VariableValue(name_) {}
		LocalValue(const std::string &name_): LocalValue(StringSet::intern(name_)) {}
		LocalValue(const VariablePtr &);
		LocalValue(const ASTNode *node);
		ValueType valueType() const override { return ValueType::Local; }
		ValuePtr copy() const override;
		operator std::string() override;
		std::string toString() const override;
		std::string compile() const override { return "UNSUPPORTED (Local)"; }
		VariablePtr getVariable(Function &);
		OperandPtr makeOperand() const override;
	};

	/** Never produced by the parser. Instead, LocalValues are sometimes replaced with OperandValues during a compiler
	 *  pass. */
	struct OperandValue: Value, Makeable<OperandValue> {
		OperandPtr operand;
		OperandValue(const OperandPtr &operand_): operand(operand_) {}
		ValueType valueType() const override { return ValueType::Operand; }
		ValuePtr copy() const override { return std::make_shared<OperandValue>(operand); }
		operator std::string() override;
		std::string toString() const override;
		std::string compile() const override;
		OperandPtr makeOperand() const override { return operand; }
	};

	struct GlobalValue: VariableValue {
		GlobalValue(const std::string *name_): VariableValue(name_) {}
		GlobalValue(const std::string &name_): GlobalValue(&name_) {}
		GlobalValue(const ASTNode *);
		ValueType valueType() const override { return ValueType::Global; }
		ValuePtr copy() const override { return std::make_shared<GlobalValue>(name); }
		operator std::string() override { return "\e[32m@" + *name + "\e[39m"; }
		std::string toString() const override { return "@" + *name; }
		std::string compile() const override { return *name; }
		OperandPtr makeOperand() const override { return Op8(*name, true); }
	};

	struct GetelementptrValue: Value {
		bool inbounds = false;
		TypePtr type, ptrType;
		ValuePtr variable;
		// The first element represents the width of the integer type.
		std::vector<std::pair<long, std::variant<long, const std::string *>>> decimals {};

		GetelementptrValue(ASTNode *inbounds_, ASTNode *type_, ASTNode *ptr_type, ASTNode *variable_,
							ASTNode *decimal_list);
		GetelementptrValue(bool inbounds_, TypePtr type_, TypePtr ptr_type, ValuePtr variable_,
							const decltype(decimals) &decimals_);
		GetelementptrValue(const ASTNode *);
		ValueType valueType() const override { return ValueType::Getelementptr; }
		ValuePtr copy() const override {
			return std::make_shared<GetelementptrValue>(inbounds, type->copy(), ptrType->copy(), variable->copy(),
				decimals);
		}
		operator std::string() override;
		std::string toString() const override;
		std::string compile() const override { return "UNSUPPORTED (Getelementptr)"; }
	};

	struct IcmpValue: Value, Makeable<IcmpValue> {
		IcmpCond cond;
		ConstantPtr left, right;
		IcmpValue(ASTNode *cond_, ASTNode *left_, ASTNode *right_);
		IcmpValue(IcmpCond cond_, ConstantPtr left_, ConstantPtr right_): cond(cond_), left(left_), right(right_) {}
		IcmpValue(const ASTNode *);
		ValueType valueType() const override { return ValueType::Icmp; }
		ValuePtr copy() const override;
		operator std::string() override;
		std::string toString() const override;
		std::string compile() const override { return "UNSUPPORTED (Icmp)"; }
		std::shared_ptr<IcmpNode> makeNode(VariablePtr) const;
	};

	struct LogicValue: Value, Makeable<LogicValue> {
		LogicType type;
		ConstantPtr left, right;
		LogicValue(ASTNode *type_, ASTNode *left_, ASTNode *right_);
		LogicValue(LogicType type_, ConstantPtr left_, ConstantPtr right_): type(type_), left(left_), right(right_) {}
		LogicValue(const ASTNode *);
		ValueType valueType() const override { return ValueType::Logic; }
		ValuePtr copy() const override;
		operator std::string() override;
		std::string toString() const override;
		std::string compile() const override { return "UNSUPPORTED (Logic)"; }
		std::shared_ptr<LogicNode> makeNode(VariablePtr) const;
	};

	struct VoidValue: Value {
		ValueType valueType() const override { return ValueType::Void; }
		ValuePtr copy() const override { return std::make_shared<VoidValue>(); }
		operator std::string() override { return "void"; }
		std::string toString() const override { return "void"; }
		std::string compile() const override { return "0"; }
		OperandPtr makeOperand() const override { return Op8(0); }
	};

	struct StructValue: Value {
		std::vector<ConstantPtr> constants;
		bool packed = false;
		StructValue(const ASTNode *);
		StructValue(const std::vector<ConstantPtr> &constants_, bool packed_ = false):
			constants(constants_), packed(packed_) {}
		ValueType valueType() const override { return ValueType::Struct; }
		ValuePtr copy() const override;
		operator std::string() override;
		std::string toString() const override;
		std::string compile() const override { return "UNSUPPORTED (Struct)"; }
	};

	struct ArrayValue: Value {
		std::vector<ConstantPtr> constants;
		ArrayValue(const ASTNode *);
		ArrayValue(const std::vector<ConstantPtr> &constants_): constants(constants_) {}
		ValueType valueType() const override { return ValueType::Array; }
		ValuePtr copy() const override;
		operator std::string() override;
		std::string toString() const override;
		std::string compile() const override { return "UNSUPPORTED (Array)"; }
	};

	struct CStringValue: Value {
		const std::string *value;
		CStringValue(const std::string *value_): value(value_) {}
		CStringValue(const ASTNode *);
		ValueType valueType() const override { return ValueType::CString; }
		ValuePtr copy() const override { return std::make_shared<CStringValue>(value); }
		operator std::string() override { return "\e[34mc\e[33m\"" + *value + "\"\e[0m"; }
		std::string toString() const override { return "c\"" + *value + '"'; }
		// Replaces LLVM-style escapes (e.g., "\1B") with WASM-style escapes (e.g., "\x1B").
		std::string reescape() const;
		std::string compile() const override { return "\"" + reescape() + "\""; }
	};

	struct ZeroinitializerValue: Value {
		ZeroinitializerValue() {}
		ValueType valueType() const override { return ValueType::Zeroinitializer; }
		ValuePtr copy() const override { return std::make_shared<ZeroinitializerValue>(); }
		operator std::string() override { return "zeroinitializer"; }
		std::string toString() const override { return "zeroinitializer"; }
		std::string compile() const override { return "0"; }
		OperandPtr makeOperand() const override { return Op8(0); }
	};

	struct UndefValue: Value {
		UndefValue() {}
		ValueType valueType() const override { return ValueType::Undef; }
		ValuePtr copy() const override { return std::make_shared<UndefValue>(); }
		operator std::string() override { return "undef"; }
		std::string toString() const override { return "undef"; }
		bool isIntLike() const override { return true; }
		long longValue() const override { return 0; }
		std::string compile() const override { return "0"; }
		OperandPtr makeOperand() const override { return Op8(0); }
	};

	ValuePtr getValue(ASTNode *);
	ValuePtr convertConversion(ASTNode *);
	std::ostream & operator<<(std::ostream &, Value &);
	std::string getName(ValueType);
}
