#include <algorithm>
#include <cassert>
#include <deque>

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

// #define DEBUG_GETELEMENTPTR

namespace LL2X::Passes {
	static bool anyPvarInIndices(const std::vector<GetelementptrNode::Index> &indices) {
		return std::ranges::any_of(indices, [](const auto &index) { return index.isPvar; });
	}

	size_t lowerGetelementptr(Function &function) {
		Timer timer("LowerGetelementptr");
		std::list<InstructionPtr> to_remove;

		for (InstructionPtr &instruction: function.linearInstructions) {
			auto *llvm = dynamic_cast<LLVMInstruction *>(instruction.get());
			if (llvm == nullptr || llvm->node->nodeType() != NodeType::Getelementptr)
				continue;

			auto *node = dynamic_cast<GetelementptrNode *>(llvm->node);
			// In all the getelementptr instructions I've seen, the source argument has always been a pvar, never a
			// gvar. The indices have been either two decimals or one pvar, but this could be just a quirk of the
			// example program I've been using (ll/fat.ll), as most of the types are the same struct type. However, I
			// see the same thing in ll/main.ll, and it makes sense: if one of the indices isn't known at compile time,
			// it wouldn't make much sense for it to be anywhere except at the end of a list of decimals.
			// ...after reviewing the documentation, it seems that only constant decimals are valid for structs, while
			// pvars are valid for pointers, arrays and vectors. This makes sense.

			// Update: I've since encountered a gvar as a source argument:
			//     %9 = getelementptr inbounds [200 x i8], [200 x i8]* @_ZNSt3__16__itoaL10cDigitsLutE, i64 0, i64 %8

			ValuePtr constant_value = node->allValues().front();
			TypePtr constant_type = node->constant->convert()->type;

			if (!constant_value->isLocal() && !constant_value->isGlobal() && !constant_value->isOperand())
				throw std::runtime_error("Expected a pvar, operand or gvar as the pointer value in a getelementptr "
					"instruction");

			OperandPtr pointer;
			if (constant_value->isLocal()) {
				pointer = OpV(std::dynamic_pointer_cast<LocalValue>(constant_value)->variable);
			} else if (constant_value->isOperand()) {
				pointer = std::dynamic_pointer_cast<OperandValue>(constant_value)->operand;
			} else {
				auto *global = dynamic_cast<GlobalValue *>(constant_value.get());
				pointer = OpV(function.newVariable(constant_type));
				function.insertBefore<Lea>(instruction, Op8(*global->name, true, false), pointer);
			}

			const TypeType tt = TypeType::Pointer;
			const TypePtr base_type = node->type;
			const bool one_pvar = node->indices.size() == 1 && node->indices.at(0).isPvar;
			const bool any_pvar = anyPvarInIndices(node->indices);
			const bool dynamic_index = node->indices.size() == 2 && !node->indices[0].isPvar && node->indices[1].isPvar;
			const std::string prefix = "LowerGetelementptr(" + std::string(node->location) + "): ";

			function.comment(instruction, "tt = " + std::string(type_map.at(tt)) + ", type = " + node->type->toString());

			if (tt == TypeType::Struct && any_pvar) {
				// If there are any pvars in the index list, we can't combine all the indices into a single constant and
				// have to break the offset addition into separate steps for each index. Sequential constant (non-pvar)
				// indices could be combined into one addition, but I'm too lazy for that as of this writing.
				std::deque<GetelementptrNode::Index> indices(node->indices.begin(), node->indices.end());
				TypePtr type = constant_type;
				OperandPtr operand = node->operand;
				function.comment(instruction, prefix + "initial move -> " + operand->toString());
				function.insertBefore<Mov>(instruction, pointer, operand);
				while (!indices.empty()) {
					const auto &index = indices.front();
					indices.pop_front();
					const TypeType tt = type->typeType();
					if (index.isPvar) {
						VariablePtr pvar = std::holds_alternative<Variable::ID>(index.value)?
							  function.getVariable(std::get<Variable::ID>(index.value))
							: function.getVariable(std::to_string(std::get<int64_t>(index.value)));
						if (tt == TypeType::Pointer || tt == TypeType::Array) {
							type = dynamic_cast<HasSubtype *>(type.get())->subtype;
							function.comment(instruction, prefix + "pointer/array, pvar -> " + operand->toString());
							auto temp = function.newVariable(IntType::make(64), instruction->parent.lock());
							function.insertBefore<Mov, false>(instruction, OpV(pvar), OpV(temp));
							function.multiply(instruction, OpV(temp), static_cast<uint64_t>(type->width()), true,
								node->debugIndex);
							function.insertBefore<Add>(instruction, OpV(temp), operand);
						} else if (tt == TypeType::Struct) {
							throw std::runtime_error("pvar indices are invalid for struct types @ " +
								std::string(node->location));
						}
					} else if (tt == TypeType::Pointer || tt == TypeType::Array) {
						type = dynamic_cast<HasSubtype *>(type.get())->subtype;
						function.comment(instruction, prefix + "pointer/array, number -> " + operand->toString());
						function.insertBefore<Add>(instruction, Op4(type->width() * std::get<int64_t>(index.value)),
							operand);
					} else if (tt == TypeType::Struct) {
						std::shared_ptr<StructType> stype = std::dynamic_pointer_cast<StructType>(type);
						std::shared_ptr<StructNode> snode = stype->node;
						if (!snode) {
							stype = StructType::knownStructs.at(stype->barename());
							snode = stype->node;
						}

						std::list<int64_t> index_list;
						for (const GetelementptrNode::Index &index: indices)
							index_list.push_back(std::get<int64_t>(index.value));

						TypePtr out_type;
						int64_t offset = Util::updiv(Getelementptr::compute(constant_type, index_list, &out_type), 8l);
						if (Util::outOfRange(offset))
							warn() << "Getelementptr offset inexplicably out of range: " << offset << '\n';
						assert(operand->isRegister());
						operand->reg->setType(out_type);

						function.comment(instruction, prefix + "struct, number -> " + operand->toString());
						function.insertBefore<Add>(instruction, Op4(offset), operand);
						type = snode->types.at(std::get<int64_t>(index.value));
					} else
						throw std::runtime_error("Invalid type in GetelementPtr: " + std::string(*type));
				}

				assert(operand->isRegister());
				operand->reg->setType(node->type = std::make_shared<PointerType>(type->copy()));
			} else if ((tt == TypeType::Array || tt == TypeType::Pointer) && dynamic_index) {
				// result = (base pointer) + (width * first index value) + (subwidth * second index variable)
				const int64_t skip = Util::updiv(node->type->width(), 8) * std::get<int64_t>(node->indices[0].value);
				VariablePtr index = function.getVariable(std::get<Variable::ID>(node->indices[1].value));

				int subwidth = 0;
				if (auto *has_subtype = dynamic_cast<HasSubtype *>(node->type.get()))
					subwidth = Util::updiv(has_subtype->subtype->width(), 8);
				else
					throw std::runtime_error("Type " + std::string(*node->type) + " has no subtype");

				VariablePtr temp = function.newVariable(IntType::make(64), instruction->parent.lock());
				function.comment(instruction, prefix + "array/pointer-type, dynamic index -> " +
					node->operand->toString());
				function.comment(instruction, "index " + index->toString() + " -> temp " + temp->toString());
				function.insertBefore<Mov, false>(instruction, OpV(index), OpV(temp));
				function.comment(instruction, "Multiply temp " + temp->toString() + " by " + std::to_string(subwidth) +
					" start");
				function.multiply(instruction, OpV(temp), static_cast<uint64_t>(subwidth), false, node->debugIndex);
				function.comment(instruction, "Multiply end");
				function.comment(instruction, "temp " + temp->toString() + " -> operand " + node->operand->toString());
				function.insertBefore<Mov, false>(instruction, OpV(temp), node->operand);
				// result += skip
				function.comment(instruction, "Result " + node->operand->toString() + " += skip " +
					std::to_string(skip));
				function.insertBefore<Add>(instruction, Op4(skip), node->operand);
				// result += base pointer (not %rbp)
				function.comment(instruction, "Result " + node->operand->toString() + " += base pointer " +
					pointer->toString());
				function.insertBefore<Add>(instruction, pointer, node->operand);
			} else if (tt == TypeType::Struct || ((tt == TypeType::Array || tt == TypeType::Pointer || tt == TypeType::OpaquePointer) && !one_pvar)) {
				std::list<std::variant<int64_t, const std::string *>> indices;
				std::stringstream indices_str;
				bool first = true;
				for (const auto &index: node->indices) {
					indices.push_back(index.value);
					if (first)
						first = false;
					else
						indices_str << ',';
					indices_str << (std::holds_alternative<int64_t>(index.value)?
						std::to_string(std::get<int64_t>(index.value)) :
						"%" + *std::get<const std::string *>(index.value));
				}

				TypePtr out_type;

				// int64_t offset = Util::updiv(Getelementptr::compute(constant_type, indices, &out_type), 8l);
				// if (Util::outOfRange(offset))
				// 	warn() << "Getelementptr offset inexplicably out of range: " << offset << '\n';

				VariablePtr source;
				if (node->constant->value->isLocal())
					source = dynamic_cast<LocalValue *>(node->constant->value.get())->getVariable(function);
				else
					source = function.makeVariable(node->constant->value, instruction, node->constant->type);

				function.comment(instruction, "LowerGetelementptr(" + std::string(node->location) + "): struct-type: " +
					constant_type->toString() + ' ' + source->toString() + " -> " + node->operand->toString() +
					", indices=" + indices_str.str());

				function.insertBefore<Mov>(instruction, OpV(source), node->operand);

				Getelementptr::insert(function, PointerType::make(base_type), indices, instruction, node->operand, &out_type);

				function.comment(instruction, "LowerGetelementptr(" + std::string(node->location) + "): type of " + node->operand->toString() + " is "
					+ out_type->toString());
				node->operand->reg->setType(out_type);
				node->type = out_type;
			} else if ((tt == TypeType::Array || tt == TypeType::Pointer || tt == TypeType::OpaquePointer) && one_pvar) {
				// result = (base pointer) + (width * index value)
				VariablePtr index = function.getVariable(std::get<Variable::ID>(node->indices.at(0).value));
				const int width = Util::updiv(node->type->width(), 8);
				function.comment(instruction, "LowerGetelementptr(" + std::string(node->location) +
					"): pointer-type -> " + node->operand->toString());
				function.insertBefore<Mov, false>(instruction, OpV(index), node->operand);
				function.multiply(instruction, node->operand, static_cast<int64_t>(width), false, node->debugIndex);
				function.insertBefore<Add>(instruction, pointer, node->operand);
			} else {
				warn() << node->location << ": " << node->debugExtra() << '\n';
				throw std::runtime_error("Unsupported type in getelementptr instruction: " + type_map.at(tt));
			}

			to_remove.push_back(instruction);
		}

		for (const InstructionPtr &instruction: to_remove)
			function.remove(instruction);

		return to_remove.size();
	}
}
