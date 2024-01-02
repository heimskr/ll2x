#include "compiler/Function.h"
#include "compiler/Getelementptr.h"
#include "compiler/Instruction.h"
#include "compiler/LLVMInstruction.h"
#include "instruction/Add.h"
#include "instruction/Lea.h"
#include "instruction/Mov.h"
#include "parser/StructNode.h"
#include "pass/LowerGetelementptr.h"
#include "util/Timer.h"
#include "util/Util.h"

#include <algorithm>
#include <cassert>
#include <deque>
#include <vector>

namespace LL2X::Passes {
	std::vector<GetelementptrNode::Index> convertDecimals(const decltype(GetelementptrValue::decimals) &decimals) {
		std::vector<GetelementptrNode::Index> out;
		out.reserve(decimals.size());

		for (const auto &decimal: decimals) {
			const auto &[width, variant] = decimal;
			out.emplace_back(width, variant, false,
				/* TODO: verify */ std::holds_alternative<const std::string *>(variant));
		}

		return out;
	}

	void lowerGetelementptr(Function &function, const InstructionPtr &anchor, const ASTLocation &location,
	                        const ConstantPtr &constant, TypePtr &base_type,
	                        const std::vector<GetelementptrNode::Index> &indices, OperandPtr &operand,
	                        int debug_index) {
		// In all the getelementptr instructions I've seen, the source argument has always been a pvar, never a
		// gvar. The indices have been either two decimals or one pvar, but this could be just a quirk of the
		// example program I've been using (ll/fat.ll), as most of the types are the same struct type. However, I
		// see the same thing in ll/main.ll, and it makes sense: if one of the indices isn't known at compile time,
		// it wouldn't make much sense for it to be anywhere except at the end of a list of decimals.
		// ...after reviewing the documentation, it seems that only constant decimals are valid for structs, while
		// pvars are valid for pointers, arrays and vectors. This makes sense.

		// Update: I've since encountered a gvar as a source argument:
		//     %9 = getelementptr inbounds [200 x i8], [200 x i8]* @_ZNSt3__16__itoaL10cDigitsLutE, i64 0, i64 %8

		ValuePtr constant_value = constant->value;
		TypePtr constant_type = constant->type;

		OperandPtr pointer;

		if (constant_value->isGetelementptr()) {
			function.comment(anchor, "Recursive LowerGetelementptr");
			auto gep_value = std::static_pointer_cast<GetelementptrValue>(constant_value);
			ConstantPtr constant = Constant::make(gep_value->type, gep_value->variable);
			TypePtr base_type = gep_value->type;
			VariablePtr new_variable = function.newVariable(PointerType::make(base_type), anchor->parent.lock());
			pointer = OpV(new_variable);
			lowerGetelementptr(function, anchor, location, constant, base_type,
				convertDecimals(gep_value->decimals), pointer, debug_index);
		} else if (!constant_value->isLocal() && !constant_value->isOperand() && !constant_value->isGlobal()) {
			warn() << location << ": " << *constant_value << '\n';
			throw std::runtime_error("Expected a pvar, operand or gvar as the pointer value in a getelementptr "
				"instruction");
		} else if (constant_value->isLocal()) {
			pointer = OpV(std::dynamic_pointer_cast<LocalValue>(constant_value)->variable);
		} else if (constant_value->isOperand()) {
			pointer = std::dynamic_pointer_cast<OperandValue>(constant_value)->operand;
		} else if (constant_value->isGlobal()) {
			auto *global = dynamic_cast<GlobalValue *>(constant_value.get());
			pointer = OpV(function.newVariable(PointerType::make(constant_type)));
			function.insertBefore<Lea>(anchor, Op8(*global->name, true, false), pointer);
		}

		const TypeType tt = TypeType::Pointer;
		const bool one_pvar = indices.size() == 1 && indices.at(0).isPvar;
		const bool dynamic_index = indices.size() == 2 && !indices[0].isPvar && indices[1].isPvar;
		const std::string prefix = "LowerGetelementptr(" + std::string(location) + "): ";

		function.comment(anchor, "tt = " + std::string(type_map.at(tt)) + ", type = " + base_type->toString());

		if (dynamic_index) {
			// result = (base pointer) + (width * first index value) + (subwidth * second index variable)
			const int64_t skip = Util::updiv(base_type->width(), 8) * std::get<int64_t>(indices[0].value);
			VariablePtr index = function.getVariable(std::get<VariableID>(indices[1].value));

			int subwidth = 0;
			if (auto *has_subtype = dynamic_cast<HasSubtype *>(base_type.get()))
				subwidth = Util::updiv(has_subtype->subtype->width(), 8);
			else
				throw std::runtime_error("Type " + std::string(*base_type) + " has no subtype");

			VariablePtr temp = function.newVariable(IntType::make(64), anchor->parent.lock());
			function.comment(anchor, prefix + "array/pointer-type, dynamic index -> " +
				operand->toString());
			function.comment(anchor, "index " + index->toString() + " -> temp " + temp->toString());
			function.insertBefore<Mov, false>(anchor, OpV(index), OpV(temp));
			function.comment(anchor, "Multiply temp " + temp->toString() + " by " + std::to_string(subwidth) +
				" start");
			function.multiply(anchor, OpV(temp), static_cast<uint64_t>(subwidth), false, debug_index);
			function.comment(anchor, "Multiply end");
			function.comment(anchor, "temp " + temp->toString() + " -> operand " + operand->toString());
			function.insertBefore<Mov, false>(anchor, OpV(temp), operand);
			if (skip != 0) {
				// result += skip
				function.comment(anchor, "Result " + operand->toString() + " += skip " +
					std::to_string(skip));
				function.insertBefore<Add>(anchor, Op4(skip), operand);
			}
			// result += base pointer (not %rbp)
			function.comment(anchor, "Result " + operand->toString() + " += base pointer " +
				pointer->toString());
			function.insertBefore<Add>(anchor, pointer, operand);
		} else if (!one_pvar) {
			std::list<std::variant<int64_t, const std::string *>> variants;
			std::stringstream indices_str;
			bool first = true;
			for (const auto &index: indices) {
				variants.push_back(index.value);
				if (first)
					first = false;
				else
					indices_str << ',';
				indices_str << (std::holds_alternative<int64_t>(index.value)?
					std::to_string(std::get<int64_t>(index.value)) :
					"%" + *std::get<const std::string *>(index.value));
			}

			TypePtr out_type;
			VariablePtr source;

			if (constant_value->isLocal())
				source = static_cast<LocalValue *>(constant_value.get())->getVariable(function);
			else
				source = function.makeVariable(constant_value, anchor, pointer->type);

			function.comment(anchor, "LowerGetelementptr(" + std::string(location) + "): struct-type: " +
				constant_type->toString() + ' ' + source->toString() + " -> " + operand->toString() +
				", indices=" + indices_str.str());

			function.insertBefore<Mov>(anchor, OpV(source), operand);

			Getelementptr::insert(function, PointerType::make(base_type), variants, anchor, operand, &out_type);

			function.comment(anchor, "LowerGetelementptr(" + std::string(location) + "): type of " +
				operand->toString() + " is " + out_type->toString()); operand->reg->setType(out_type);
			base_type = out_type;
		} else if (one_pvar) {
			// result = (base pointer) + (width * index value)
			VariablePtr index = function.getVariable(std::get<VariableID>(indices.at(0).value));
			const int width = Util::updiv(base_type->width(), 8);
			function.comment(anchor, "LowerGetelementptr(" + std::string(location) + "): pointer-type -> " +
				operand->toString());
			function.insertBefore<Mov, false>(anchor, OpV(index), operand);
			function.multiply(anchor, operand, static_cast<int64_t>(width), false, debug_index);
			function.insertBefore<Add>(anchor, pointer, operand);
		} else {
			throw std::runtime_error("Unsupported type in getelementptr instruction at " + std::string(location) + ": "
				+ type_map.at(tt));
		}
	}

	size_t lowerGetelementptr(Function &function) {
		Timer timer("LowerGetelementptr");
		std::list<InstructionPtr> to_remove;

		for (const InstructionPtr &instruction: function.linearInstructions) {
			auto llvm = std::dynamic_pointer_cast<LLVMInstruction>(instruction);
			if (!llvm || llvm->node->nodeType() != NodeType::Getelementptr)
				continue;

			auto *node = static_cast<GetelementptrNode *>(llvm->node);
			ConstantPtr constant = node->constant->convert();
			lowerGetelementptr(function, llvm, node->location, constant, node->type, node->indices, node->operand,
				node->debugIndex);
			to_remove.push_back(instruction);
		}

		for (const InstructionPtr &instruction: to_remove)
			function.remove(instruction);

		return to_remove.size();
	}
}
