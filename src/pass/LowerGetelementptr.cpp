#include <cassert>
#include <deque>

#include "compiler/Function.h"
#include "compiler/Getelementptr.h"
#include "compiler/Instruction.h"
#include "compiler/LLVMInstruction.h"
#include "instruction/Add.h"
#include "instruction/Mov.h"
#include "parser/StructNode.h"
#include "pass/LowerGetelementptr.h"
#include "util/Timer.h"
#include "util/Util.h"

// #define DEBUG_GETELEMENTPTR

namespace LL2X::Passes {
	static bool anyPvarInIndices(const std::vector<GetelementptrNode::Index> &indices) {
		for (const auto &index: indices)
			if (index.isPvar)
				return true;
		return false;
	}

	int lowerGetelementptr(Function &function) {
		Timer timer("LowerGetelementptr");
		std::list<InstructionPtr> to_remove;

		for (InstructionPtr &instruction: function.linearInstructions) {
			LLVMInstruction *llvm = dynamic_cast<LLVMInstruction *>(instruction.get());
			if (!llvm || llvm->node->nodeType() != NodeType::Getelementptr)
				continue;

			GetelementptrNode *node = dynamic_cast<GetelementptrNode *>(llvm->node);
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
				pointer = OperandV(std::dynamic_pointer_cast<LocalValue>(constant_value)->variable);
			} else if (constant_value->isOperand()) {
				pointer = std::dynamic_pointer_cast<OperandValue>(constant_value)->operand;
			} else {
				GlobalValue *global = dynamic_cast<GlobalValue *>(constant_value.get());
				pointer = OperandV(function.newVariable(constant_type));
				function.insertBefore(instruction, std::make_shared<Mov>(Operand8(*global->name), pointer))
					->setDebug(node)->extract();
			}

			const TypeType tt = constant_type->typeType();
			const bool one_pvar = node->indices.size() == 1 && node->indices.at(0).isPvar;
			const bool any_pvar = anyPvarInIndices(node->indices);
			const bool dynamic_index = node->indices.size() == 2 && !node->indices[0].isPvar && node->indices[1].isPvar;

			if (tt == TypeType::Struct && any_pvar) {
				// If there are any pvars in the index list, we can't combine all the indices into a single constant and
				// have to break the offset addition into separate steps for each index. Sequential constant (non-pvar)
				// indices could be combined into one addition, but I'm too lazy for that as of this writing.
				std::deque<GetelementptrNode::Index> indices(node->indices.begin(), node->indices.end());
				TypePtr type = constant_type;
				OperandPtr operand = node->operand;
				auto move = std::make_shared<Mov>(pointer, operand);
				function.insertBefore(instruction, move, "LowerGetelementptr(" + std::string(node->location) +
					"): initial move -> " + operand->toString())->setDebug(node)->extract();
				while (!indices.empty()) {
					const auto &index = indices.front();
					indices.pop_front();
					const TypeType tt = type->typeType();
					if (index.isPvar) {
						VariablePtr pvar = std::holds_alternative<Variable::ID>(index.value)?
							  function.getVariable(std::get<Variable::ID>(index.value))
							: function.getVariable(std::to_string(std::get<long>(index.value)));
						if (tt == TypeType::Pointer || tt == TypeType::Array) {
							type = dynamic_cast<HasSubtype *>(type.get())->subtype;
							function.comment(instruction, "LowerGetelementptr(" + std::string(node->location)
								+ "): pointer/array, pvar -> " + operand->toString());
							auto temp = function.newVariable(IntType::make(64), instruction->parent.lock());
							function.insertBefore(instruction, std::make_shared<Mov>(OperandV(pvar), OperandV(temp)),
								false)->setDebug(*instruction, true);
							function.multiply(instruction, OperandV(temp), static_cast<uint64_t>(type->width()), true,
								node->debugIndex);
							function.insertBefore(instruction, std::make_shared<Add>(OperandV(temp), operand))
								->setDebug(*instruction, true);
						} else if (tt == TypeType::Struct) {
							throw std::runtime_error("pvar indices are invalid for struct types @ " +
								std::string(node->location));
						}
					} else if (tt == TypeType::Pointer || tt == TypeType::Array) {
						type = dynamic_cast<HasSubtype *>(type.get())->subtype;
						auto add = std::make_shared<Add>(Operand4(type->width() * std::get<long>(index.value)),
							operand);
						function.insertBefore(instruction, add, "LowerGetelementptr(" + std::string(node->location) +
							"): pointer/array, number -> " + operand->toString())->setDebug(node)->extract();
					} else if (tt == TypeType::Struct) {
						std::shared_ptr<StructType> stype = std::dynamic_pointer_cast<StructType>(type);
						std::shared_ptr<StructNode> snode = stype->node;
						if (!snode) {
							stype = StructType::knownStructs.at(stype->barename());
							snode = stype->node;
						}

						std::list<long> index_list;
						for (const GetelementptrNode::Index &index: indices)
							index_list.push_back(std::get<long>(index.value));

						TypePtr out_type;
						long offset = Util::updiv(Getelementptr::compute(constant_type, index_list, &out_type), 8l);
						if (Util::outOfRange(offset))
							warn() << "Getelementptr offset inexplicably out of range: " << offset << '\n';
						assert(operand->isRegister());
						operand->reg->setType(out_type);

						auto add = std::make_shared<Add>(Operand4(offset), operand);
						function.insertBefore(instruction, add, "LowerGetelementptr(" + std::string(node->location) +
							"): struct, number -> " + operand->toString())->setDebug(node)->extract();
						type = snode->types.at(std::get<long>(index.value));
					} else
						throw std::runtime_error("Invalid type in GetelementPtr: " + std::string(*type));
				}

				assert(operand->isRegister());
				operand->reg->setType(node->type = std::make_shared<PointerType>(type->copy()));
			} else if ((tt == TypeType::Array || tt == TypeType::Pointer) && dynamic_index) {
				// result = (base pointer) + (width * first index value) + (subwidth * second index variable)
				const int skip = Util::updiv(node->type->width(), 8) * std::get<long>(node->indices[0].value);
				VariablePtr index = function.getVariable(std::get<Variable::ID>(node->indices[1].value));

				int subwidth;
				if (HasSubtype *has_subtype = dynamic_cast<HasSubtype *>(node->type.get()))
					subwidth = Util::updiv(has_subtype->subtype->width(), 8);
				else
					throw std::runtime_error("Type " + std::string(*node->type) + " has no subtype");

				VariablePtr temp = function.newVariable(IntType::make(64), instruction->parent.lock());
				auto mov = std::make_shared<Mov>(OperandV(index), OperandV(temp));
				function.insertBefore(instruction, mov, "LowerGetelementptr(" + std::string(node->location) +
					"): array/pointer-type, dynamic index -> " + node->operand->toString(), false)
					->setDebug(node)->extract();
				function.multiply(instruction, OperandV(temp), static_cast<uint64_t>(subwidth), false,
					node->debugIndex);
				auto movmul = std::make_shared<Mov>(OperandV(temp), node->operand);
				// result += skip
				auto addskip = std::make_shared<Add>(Operand4(skip), node->operand);
				// result += base pointer (not %rbp)
				auto addbase = std::make_shared<Add>(pointer, node->operand);
				function.insertBefore(instruction, movmul)->setDebug(node)->extract();
				function.insertBefore(instruction, addskip)->setDebug(node)->extract();
				function.insertBefore(instruction, addbase)->setDebug(node)->extract();
			} else if (tt == TypeType::Struct || ((tt == TypeType::Array || tt == TypeType::Pointer) && !one_pvar)) {
				std::list<std::variant<long, const std::string *>> indices;
				std::stringstream indices_str;
				bool first = true;
				for (const auto &index: node->indices) {
					indices.push_back(index.value);
					if (first)
						first = false;
					else
						indices_str << ',';
					indices_str << (std::holds_alternative<long>(index.value)?
						std::to_string(std::get<long>(index.value)) :
						"%" + *std::get<const std::string *>(index.value));
				}


				TypePtr out_type;
#ifdef DEBUG_GETELEMENTPTR
				TypePtr old_type = node->variable->type;
#endif
				// long offset = Util::updiv(Getelementptr::compute(constant_type, indices, &out_type), 8l);
				// if (Util::outOfRange(offset))
				// 	warn() << "Getelementptr offset inexplicably out of range: " << offset << '\n';
				function.comment(instruction, "LowerGetelementptr(" + std::string(node->location) + "): struct-type: " +
					constant_type->toString() + " -> " + node->operand->toString() + ", indices=" +
					indices_str.str());

				VariablePtr source;
				if (node->constant->value->isLocal())
					source = dynamic_cast<LocalValue *>(node->constant->value.get())->getVariable(function);
				else
					source = function.makeVariable(node->constant->value, instruction, node->constant->type);
				function.insertBefore(instruction, std::make_shared<Mov>(OperandV(source), node->operand));

				Getelementptr::insert(function, node->pointerType, indices, instruction, node->operand, &out_type);
				node->operand->reg->setType(out_type);
				node->type = out_type;
#ifdef DEBUG_GETELEMENTPTR
				function.comment(add, "Type: " + std::string(*old_type) + " -> " + std::string(*out_type));
#endif
			} else if ((tt == TypeType::Array || tt == TypeType::Pointer) && one_pvar) {
				// result = (base pointer) + (width * index value)
				VariablePtr index = function.getVariable(std::get<Variable::ID>(node->indices.at(0).value));
				const int width = Util::updiv(node->type->width(), 8);

				auto mov = std::make_shared<Mov>(OperandV(index), node->operand);
				function.insertBefore(instruction, mov, "LowerGetelementptr(" + std::string(node->location) +
					"): pointer-type -> " + node->operand->toString(), false)->setDebug(node)->extract();
				function.multiply(instruction, node->operand, static_cast<int64_t>(width), false, node->debugIndex);
				auto add = std::make_shared<Add>(pointer, node->operand);
				function.insertBefore(instruction, add)->setDebug(node)->extract();
			} else throw std::runtime_error("Unsupported type in getelementptr instruction: " + type_map.at(tt));

			to_remove.push_back(instruction);
		}

		for (InstructionPtr &instruction: to_remove)
			function.remove(instruction);

		return to_remove.size();
	}
}
