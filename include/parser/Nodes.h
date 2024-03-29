#pragma once

#include <memory>
#include <tuple>
#include <unordered_set>
#include <variant>

#include "compiler/Variable.h"
#include "parser/ASTNode.h"
#include "parser/Enums.h"
#include "parser/Types.h"
#include "parser/Values.h"
#include "parser/Lexer.h"
#include "parser/Constant.h"
#include "util/Makeable.h"

namespace LL2X {
	class Variable;

	using VariablePtr = std::shared_ptr<Variable>;

	enum class NodeType {
		Metadata, Header, Attributes, Select, Alloca, Store, Load, Icmp, BrUncond, BrCond, CallInvoke, Call, Invoke,
		Getelementptr, Ret, Landingpad, Conversion, BasicMath, Phi, Simple, Div, Rem, Logic, Shr, FMath, Switch,
		ExtractValue, InsertValue, Resume, Unreachable, Asm, Freeze, Atomicrmw
	};

	struct BaseNode: public ASTNode {
		using ASTNode::ASTNode;
		virtual NodeType nodeType() const = 0;
	};

	struct HasType {
		TypePtr type;
	};

	struct HasValue {
		ValuePtr value;
	};

	struct HasConstant {
		ConstantPtr constant;
	};

	struct MetadataDef: public BaseNode {
		bool distinct;
		MetadataDef(ASTNode *dotident_node, ASTNode *distinct, ASTNode *list);
		std::string debugExtra() const override;
		NodeType nodeType() const override { return NodeType::Metadata; }
	};

	struct HeaderNode: public BaseNode {
		const std::string *label;
		std::vector<const std::string *> preds;
		HeaderNode(bool simple, ASTNode *);
		HeaderNode(ASTNode *);
		std::string style() const override { return "\e[32m"; }
		std::string debugExtra() const override;
		NodeType nodeType() const override { return NodeType::Header; }
	};

	struct AttributesNode: public BaseNode {
		int64_t index = -1;
		int64_t allocsizeSize = -1;
		int64_t allocsizeCount = -1;
		std::unordered_set<ParAttr> parameterAttributes;
		std::unordered_set<FnAttr> functionAttributes;
		std::unordered_map<const std::string *, const std::string *> stringAttributes;
		AttributesNode(ASTNode *);
		std::string style() const override { return "\e[31m"; }
		std::string debugExtra() const override;
		NodeType nodeType() const override { return NodeType::Attributes; }
	};

	class InstructionNode: public BaseNode {
		protected:
			void handleUnibangs(ASTNode *);

		public:
			int64_t prof = -1, callees = -1;
			InstructionNode(const std::string *str);
			InstructionNode();
			std::string style() const override { return "\e[36m"; }
	};

	struct Reader {
		virtual std::vector<ValuePtr> allValues() = 0;
		virtual std::vector<ValuePtr *> allValuePointers() = 0;
		std::vector<std::shared_ptr<LocalValue>> allLocals();
		void replaceRead(const VariablePtr &to_replace, const VariablePtr &new_var);
		virtual std::vector<ConstantPtr> allConstants() const { return {}; }
		virtual std::vector<ConstantPtr *> allConstantPointers() { return {}; }
		std::vector<std::reference_wrapper<OperandPtr>> allReadOperands();
	};

	struct Writer {
		protected:
			Writer() = default;

			Writer(const std::string *result_):
				result(result_) {}

			Writer(OperandPtr operand_):
				result(operand_->reg->getID()),
				operand(std::move(operand_)) {}

		public:
			const std::string *result = nullptr;
			OperandPtr operand;
			bool replaceWritten(const VariablePtr &to_replace, const VariablePtr &new_var);
			std::string getResult() const;
	};

	struct CachedConstantValue {
		ValuePtr cachedConstantValue;
	};

	struct SelectNode: public InstructionNode, public Reader, public Writer {
		std::unordered_set<Fastmath> fastmath;
		TypePtr conditionType, firstType, secondType;
		ValuePtr conditionValue, firstValue, secondValue;

		SelectNode(ASTNode *result_, ASTNode *fastmath_, ASTNode *condition_type, ASTNode *condition_value,
		           ASTNode *type1, ASTNode *val1, ASTNode *type2, ASTNode *val2, ASTNode *unibangs);
		std::string debugExtra() const override;
		NodeType nodeType() const override { return NodeType::Select; }
		std::vector<ValuePtr> allValues() override { return {conditionValue, firstValue, secondValue}; }
		std::vector<ValuePtr *> allValuePointers() override {
			return {&conditionValue, &firstValue, &secondValue};
		}
	};

	struct AllocaNode: public InstructionNode, public Reader, public Writer, public HasType {
		bool inalloca = false;
		TypePtr numelementsType = nullptr;
		ValuePtr numelementsValue = nullptr;
		int64_t align = -1;
		int64_t addrspace = -1;

		AllocaNode(ASTNode *result_, ASTNode *inalloca_, ASTNode *type_, ASTNode *numelements_, ASTNode *align_,
		           ASTNode *addrspace_, ASTNode *unibangs);
		std::string debugExtra() const override;
		NodeType nodeType() const override { return NodeType::Alloca; }
		std::vector<ValuePtr> allValues() override { return {numelementsValue}; }
		std::vector<ValuePtr *> allValuePointers() override { return {&numelementsValue}; }
	};

	class StoreNode: public InstructionNode, public Reader {
		private:
			void handleBangs(ASTNode *);

		public:
			bool volatile_ = false, atomic = false;
			ConstantPtr source, destination;
			int64_t align = -1, nontemporalIndex = -1, invariantGroupIndex = -1, tbaa = -1;
			const std::string *syncscope = nullptr;
			Ordering ordering = Ordering::None;

			StoreNode(ASTNode *_volatile_, ASTNode *source_, ASTNode *destination_, ASTNode *align_, ASTNode *bangs);
			StoreNode(ASTNode *_volatile_, ASTNode *source_, ASTNode *destination_, ASTNode *syncscope_,
			          ASTNode *ordering_, ASTNode *align_, ASTNode *bangs);
			std::string debugExtra() const override;
			NodeType nodeType() const override { return NodeType::Store; }
			std::vector<ValuePtr> allValues() override;
			std::vector<ValuePtr *> allValuePointers() override;
			std::vector<ConstantPtr> allConstants() const override { return {source, destination}; }
			std::vector<ConstantPtr *> allConstantPointers() override { return {&source, &destination}; }
	};

	class LoadNode: public InstructionNode, public Writer, public Reader {
		private:
			void handleBangs(ASTNode *);

		public:
			bool volatile_ = false, atomic = false;
			TypePtr type;
			ConstantPtr constant;
			int64_t align = -1, nontemporalIndex = -1, invariantLoadIndex = -1, invariantGroupIndex = -1,
				nonnullIndex = -1, tbaa = -1;
			const std::string *dereferenceable = nullptr, *dereferenceableOrNull = nullptr, *bangAlign = nullptr;
			const std::string *syncscope = nullptr;
			Ordering ordering = Ordering::None;

			LoadNode(ASTNode *result_, ASTNode *_volatile_, ASTNode *type_, ASTNode *constant_, ASTNode *align_,
					ASTNode *bangs);
			LoadNode(ASTNode *result_, ASTNode *_volatile_, ASTNode *type_, ASTNode *constant_,
					ASTNode *syncscope_, ASTNode *ordering_, ASTNode *align_, ASTNode *bangs);
			std::string debugExtra() const override;
			NodeType nodeType() const override { return NodeType::Load; }
			std::vector<ValuePtr> allValues() override { return {constant->value}; }
			std::vector<ValuePtr *> allValuePointers() override { return {&constant->value}; }
			std::vector<ConstantPtr> allConstants() const override { return {constant}; }
			std::vector<ConstantPtr *> allConstantPointers() override { return {&constant}; }
	};

	struct IcmpNode: InstructionNode, Writer, Reader, Makeable<IcmpNode> {
		IcmpCond cond;
		ConstantPtr left, right;

		IcmpNode(ASTNode *result_, ASTNode *cond_, ASTNode *left_, ASTNode *right_, ASTNode *unibangs);
		IcmpNode(const std::string *result_, IcmpCond cond_, const ConstantPtr &left_, const ConstantPtr &right_);
		IcmpNode(const OperandPtr &, IcmpCond cond_, const ConstantPtr &left_, const ConstantPtr &right_);
		TypePtr getType() const { return left->type; /* TODO: This should be i1 but that breaks things. */ }
		std::string debugExtra() const override;
		NodeType nodeType() const override { return NodeType::Icmp; }
		std::vector<ValuePtr> allValues() override;
		std::vector<ValuePtr *> allValuePointers() override;
		std::vector<ConstantPtr> allConstants() const override;
		std::vector<ConstantPtr *> allConstantPointers() override;
	};

	struct BrUncondNode: public InstructionNode {
		const std::string *destination;
		BrUncondNode(const std::string *destination_): destination(destination_) {}
		BrUncondNode(const std::string &destination_): BrUncondNode(StringSet::intern(destination_)) {}
		BrUncondNode(ASTNode *node, ASTNode *unibangs);
		std::string debugExtra() const override;
		NodeType nodeType() const override { return NodeType::BrUncond; }
	};

	struct BrCondNode: public InstructionNode, public Reader {
		ConstantPtr condition;
		const std::string *ifTrue, *ifFalse;

		BrCondNode(ASTNode *constant, ASTNode *if_true, ASTNode *if_false, ASTNode *unibangs);
		std::string debugExtra() const override;
		NodeType nodeType() const override { return NodeType::BrCond; }
		std::vector<ValuePtr> allValues() override { return {condition->value}; }
		std::vector<ValuePtr *> allValuePointers() override { return {&condition->value}; }
		std::vector<ConstantPtr> allConstants() const override { return {condition}; }
		std::vector<ConstantPtr *> allConstantPointers() override { return {&condition}; }
	};

	class CallInvokeNode: public InstructionNode, public Writer, public Reader {
		protected:
			CallInvokeNode(ASTNode *_result, ASTNode *_cconv, ASTNode *_retattrs, ASTNode *_addrspace,
			               ASTNode *return_type, ASTNode *_args, ASTNode *function_name, ASTNode *_constants,
			               ASTNode *attribute_list, ASTNode *unibangs);

			CallInvokeNode(const std::string *result_, TypePtr return_type, const std::string *name_,
			               std::vector<ConstantPtr>);

			CallInvokeNode(OperandPtr result_, TypePtr return_type, const std::string *name_, std::vector<ConstantPtr>);

		public:
			const std::string *cconv = nullptr;
			std::unordered_set<RetAttr> retattrs;
			std::vector<ConstantPtr> constants;
			std::vector<int64_t> attributeIndices;
			int64_t dereferenceable = -1, addrspace = -1;

			// For functions with varargs (and optionally for non-varargs functions), the function argument types can be
			// specified after the function return type.
			bool argumentsExplicit = false;
			std::vector<TypePtr> argumentTypes;
			bool argumentEllipsis = false;

			TypePtr returnType;
			ValuePtr name;
			bool usePLT = false;

			std::vector<ValuePtr> allValues() override;
			std::vector<ValuePtr *> allValuePointers() override;
			std::vector<ConstantPtr> allConstants() const override { return constants; }
			std::vector<ConstantPtr *> allConstantPointers() override;

			CallInvokeNode * setUsePLT(bool use = true) {
				usePLT = use;
				return this;
			}
	};

	struct CallNode: public CallInvokeNode {
		const std::string *tail = nullptr;
		std::unordered_set<Fastmath> fastmath;

		CallNode(ASTNode *_result, ASTNode *_tail, ASTNode *fastmath_flags, ASTNode *_cconv, ASTNode *_retattrs,
		         ASTNode *_addrspace, ASTNode *return_type, ASTNode *_args, ASTNode *constant, ASTNode *_constants,
		         ASTNode *attribute_list, ASTNode *unibangs);
		CallNode(const std::string *result_, TypePtr return_type, const std::string *name_, std::vector<ConstantPtr>);
		CallNode(OperandPtr result_, TypePtr return_type, const std::string *name_, std::vector<ConstantPtr>);
		std::string debugExtra() const override;
		NodeType nodeType() const override { return NodeType::Call; }
	};

	struct AsmNode: public CallInvokeNode {
		const std::string *contents = nullptr;
		const std::string *constraints = nullptr;
		bool sideeffect = false;
		bool alignstack = false;
		int64_t srcloc = -1;

		AsmNode(ASTNode *_result, ASTNode *_retattrs, ASTNode *return_type, ASTNode *_args, ASTNode *_sideeffect,
		        ASTNode *_alignstack, ASTNode *_inteldialect, ASTNode *asm_string, ASTNode *asm_constraints,
		        ASTNode *_constants, ASTNode *attribute_list, ASTNode *_srcloc, ASTNode *unibangs);
		std::string debugExtra() const override;
		NodeType nodeType() const override { return NodeType::Asm; }
	};

	struct InvokeNode: public CallInvokeNode {
		const std::string *normalLabel, *exceptionLabel;

		InvokeNode(ASTNode *_result, ASTNode *_cconv, ASTNode *_retattrs, ASTNode *_addrspace, ASTNode *return_type,
		           ASTNode *_args, ASTNode *constant, ASTNode *_constants, ASTNode *attribute_list,
		           ASTNode *normal_label, ASTNode *exception_label, ASTNode *unibangs);
		std::string debugExtra() const override;
		NodeType nodeType() const override { return NodeType::Invoke; }
	};

	struct GetelementptrNode: public InstructionNode, public Writer, public Reader, public CachedConstantValue {
		struct Index {
			int64_t width;
			std::variant<int64_t, VariableID> value;
			bool hasMinrange;
			bool isPvar;
			Index(int64_t width_, const decltype(value) &value_, bool has_minrange, bool is_pvar):
				width(width_), value(value_), hasMinrange(has_minrange), isPvar(is_pvar) {}
		};

		bool inbounds = false;
		TypePtr type, pointerType;
		ConstantPtr constant;
		std::vector<Index> indices;

		GetelementptrNode(ASTNode *pvar, ASTNode *_inbounds, ASTNode *type_, ASTNode *constant_, ASTNode *indices_,
		                  ASTNode *unibangs);
		std::string debugExtra() const override;
		NodeType nodeType() const override { return NodeType::Getelementptr; }
		std::vector<ValuePtr> allValues() override;
		std::vector<ValuePtr *> allValuePointers() override;
	};

	struct RetNode: public InstructionNode, public Reader {
		TypePtr type;
		ValuePtr value;

		RetNode(ASTNode *unibangs);
		RetNode(ASTNode *type_, ASTNode *value_, ASTNode *unibangs);
		std::string debugExtra() const override;
		NodeType nodeType() const override { return NodeType::Ret; }
		std::vector<ValuePtr> allValues() override { return {value}; }
		std::vector<ValuePtr *> allValuePointers() override { return {&value}; }
	};

	struct LandingpadNode: public InstructionNode, public Writer, public Reader {
		struct Clause {
			enum class ClauseType {Catch, Filter};
			ClauseType clauseType;
			TypePtr type = nullptr;
			ValuePtr value = nullptr;
			Clause(ASTNode *);
			operator std::string() const;
		};

		TypePtr type;
		bool cleanup;
		std::vector<std::shared_ptr<Clause>> clauses;

		LandingpadNode(ASTNode *result_, ASTNode *type_, ASTNode *clauses_, ASTNode *unibangs, bool cleanup_);
		std::string debugExtra() const override;
		NodeType nodeType() const override { return NodeType::Landingpad; }
		std::vector<ValuePtr> allValues() override;
		std::vector<ValuePtr *> allValuePointers() override;
	};

	struct ConversionNode: public InstructionNode, public Writer, public Reader {
		TypePtr from, to;
		ValuePtr value;
		Conversion conversionType;
		ConversionNode(ASTNode *result_, ASTNode *conv_op, ASTNode *from_, ASTNode *value_, ASTNode *to_,
		               ASTNode *unibangs);
		std::string debugExtra() const override;
		NodeType nodeType() const override { return NodeType::Conversion; }
		std::vector<ValuePtr> allValues() override { return {value}; }
		std::vector<ValuePtr *> allValuePointers() override { return {&value}; }
	};

	struct BasicMathNode: public InstructionNode, public Writer, public Reader {
		const std::string *oper;
		int64_t operSymbol;
		bool nuw = false, nsw = false;
		TypePtr type;
		ValuePtr left, right;
		BasicMathNode(ASTNode *result_, ASTNode *oper_, bool nuw_, bool nsw_, ASTNode *type_, ASTNode *left_,
		              ASTNode *right_, ASTNode *unibangs);
		std::string debugExtra() const override;
		NodeType nodeType() const override { return NodeType::BasicMath; }
		std::vector<ValuePtr> allValues() override { return {left, right}; }
		std::vector<ValuePtr *> allValuePointers() override { return {&left, &right}; }
	};

	struct PhiNode: public InstructionNode, public Reader, public Writer {
		/** Whether all operands are local variables. */
		bool pure = true;
		std::unordered_set<Fastmath> fastmath;
		TypePtr type;
		std::vector<std::pair<ValuePtr, const std::string *>> pairs;
		PhiNode(ASTNode *result_, ASTNode *fastmath_, ASTNode *type_, ASTNode *pairs_, ASTNode *unibangs);
		std::string debugExtra() const override;
		NodeType nodeType() const override { return NodeType::Phi; }
		std::vector<ValuePtr> allValues() override;
		std::vector<ValuePtr *> allValuePointers() override;
	};

	struct SimpleNode: public InstructionNode, public Writer, public Reader {
		TypePtr type;
		ValuePtr left, right;
		SimpleNode(ASTNode *result_, ASTNode *type_, ASTNode *left_, ASTNode *right_, ASTNode *unibangs);
		virtual const char * typeName() const = 0;
		std::string debugExtra() const override;
		std::vector<ValuePtr> allValues() override { return {left, right}; }
		std::vector<ValuePtr *> allValuePointers() override { return {&left, &right}; }
	};

	struct DivNode: public SimpleNode {
		enum class DivType {Sdiv, Udiv};
		DivType divType;
		bool exact = false;
		DivNode(ASTNode *result_, ASTNode *div, ASTNode *exact_, ASTNode *type_, ASTNode *left_, ASTNode *right_,
		        ASTNode *unibangs);
		const char * typeName() const override { return divType == DivType::Sdiv? "sdiv" : "udiv"; }
		NodeType nodeType() const override { return NodeType::Div; }
	};

	struct RemNode: public SimpleNode {
		enum class RemType {Srem, Urem};
		RemType remType;
		bool exact = false;
		RemNode(ASTNode *result_, ASTNode *rem, ASTNode *exact_, ASTNode *type_, ASTNode *left_, ASTNode *right_,
		        ASTNode *unibangs);
		const char * typeName() const override { return remType == RemType::Srem? "srem" : "urem"; }
		NodeType nodeType() const override { return NodeType::Rem; }
	};

	struct LogicNode: InstructionNode, Writer, Reader, Makeable<LogicNode> {
		LogicType logicType;
		ConstantPtr left, right;
		TypePtr type;

		LogicNode(ASTNode *result_, ASTNode *logic_type, ASTNode *left_, ASTNode *right_, ASTNode *unibangs);
		LogicNode(const std::string *result_, LogicType logic_type, const ConstantPtr &left_,
		          const ConstantPtr &right_);
		LogicNode(const OperandPtr &, LogicType logic_type, const ConstantPtr &left_, const ConstantPtr &right_);
		TypePtr getType() const { return left->type; }
		std::string debugExtra() const override;
		NodeType nodeType() const override { return NodeType::Logic; }
		std::vector<ValuePtr> allValues() override;
		std::vector<ValuePtr *> allValuePointers() override;
		std::vector<ConstantPtr> allConstants() const override;
		std::vector<ConstantPtr *> allConstantPointers() override;
	};

	struct ShrNode: public SimpleNode {
		enum class ShrType {Lshr, Ashr};
		ShrType shrType;
		bool exact = false;
		ShrNode(ASTNode *result_, ASTNode *shr, ASTNode *exact_, ASTNode *type_, ASTNode *left_, ASTNode *right_,
		        ASTNode *unibangs);
		const char * typeName() const override { return shrType == ShrType::Lshr? "lshr" : "ashr"; }
		NodeType nodeType() const override { return NodeType::Shr; }
	};

	struct FMathNode: public SimpleNode {
		enum class FMathType {Fadd, Fsub, Fmul, Fdiv, Frem};
		FMathType fmathType;
		std::unordered_set<Fastmath> fastmath;
		FMathNode(ASTNode *result_, ASTNode *fmath, ASTNode *flags, ASTNode *type_, ASTNode *left_, ASTNode *right_,
		          ASTNode *unibangs);
		const char * typeName() const override;
		std::string debugExtra() const override;
		NodeType nodeType() const override { return NodeType::FMath; }
	};

	struct SwitchNode: public InstructionNode, public Reader {
		TypePtr type;
		ValuePtr value;
		const std::string *label;
		std::vector<std::tuple<TypePtr, ValuePtr, const std::string *>> table;

		SwitchNode(ASTNode *type_, ASTNode *value_, ASTNode *label_, ASTNode *table_, ASTNode *unibangs);
		std::string debugExtra() const override;
		NodeType nodeType() const override { return NodeType::Switch; }
		std::vector<ValuePtr> allValues() override { return {value}; }
		std::vector<ValuePtr *> allValuePointers() override { return {&value}; }
	};

	struct ExtractValueNode: public InstructionNode, public Writer, public Reader {
		std::shared_ptr<AggregateType> aggregateType;
		ValuePtr aggregateValue;
		std::vector<int64_t> decimals;
		ExtractValueNode(ASTNode *result_, ASTNode *aggregate_type, ASTNode *aggregate_value, ASTNode *decimals_,
		                 ASTNode *unibangs);
		std::string debugExtra() const override;
		NodeType nodeType() const override { return NodeType::ExtractValue; }
		std::vector<ValuePtr> allValues() override { return {aggregateValue}; }
		std::vector<ValuePtr *> allValuePointers() override { return {&aggregateValue}; }
	};

	struct InsertValueNode: public InstructionNode, public Writer, public Reader {
		TypePtr aggregateType, type;
		ValuePtr aggregateValue, value;
		std::vector<int64_t> decimals;
		InsertValueNode(ASTNode *result_, ASTNode *aggregate_type, ASTNode *aggregate_value, ASTNode *type_,
		                ASTNode *value_, ASTNode *decimals_, ASTNode *unibangs);
		std::string debugExtra() const override;
		NodeType nodeType() const override { return NodeType::InsertValue; }
		std::vector<ValuePtr> allValues() override { return {aggregateValue, value}; }
		std::vector<ValuePtr *> allValuePointers() override { return {&aggregateValue, &value}; }
	};

	struct ResumeNode: public InstructionNode, public Reader {
		TypePtr type;
		ValuePtr value;
		ResumeNode(ASTNode *type_, ASTNode *value_, ASTNode *unibangs);
		std::string debugExtra() const override;
		NodeType nodeType() const override { return NodeType::Resume; }
		std::vector<ValuePtr> allValues() override { return {value}; }
		std::vector<ValuePtr *> allValuePointers() override { return {&value}; }
	};

	struct UnreachableNode: public InstructionNode {
		UnreachableNode() {}
		std::string debugExtra() const override { return "\e[91munreachable\e[39m"; }
		NodeType nodeType() const override { return NodeType::Unreachable; }
	};

	struct FreezeNode: public InstructionNode, public Writer, public Reader {
		TypePtr type;
		ValuePtr value;
		FreezeNode(ASTNode *result_, ASTNode *type_, ASTNode *value_, ASTNode *unibangs);
		std::string debugExtra() const override;
		NodeType nodeType() const override { return NodeType::Freeze; }
		std::vector<ValuePtr> allValues() override { return {value}; }
		std::vector<ValuePtr *> allValuePointers() override { return {&value}; }
	};

	struct AtomicrmwNode: InstructionNode, Writer, Reader {
		enum class Op {Invalid, Xchg, Add, Sub, And, Nand, Or, Xor, Max, Min, Umax, Umin, Fadd, Fsub, Fmax, Fmin};
		Op op = Op::Invalid;
		const std::string *opString = nullptr;
		bool volatile_ = false;
		TypePtr type;
		TypePtr pointerType;
		ValuePtr pointer, value;
		const std::string *syncscope = nullptr;
		Ordering ordering = Ordering::None;
		int64_t align = -1;

		AtomicrmwNode(ASTNode *result_, ASTNode *_volatile_, ASTNode *op_, ASTNode *pointer_type, ASTNode *pointer_,
		              ASTNode *type_, ASTNode *value_, ASTNode *syncscope_, ASTNode *ordering_, ASTNode *align_,
		              ASTNode *unibangs);
		std::string debugExtra() const override;
		NodeType nodeType() const override { return NodeType::Atomicrmw; }
		std::vector<ValuePtr> allValues() override { return {pointer, value}; }
		std::vector<ValuePtr *> allValuePointers() override { return {&pointer, &value}; }

		static std::unordered_map<std::string, Op> opMap;
	};

	ASTNode * ignoreConversion(ASTNode *);
}
