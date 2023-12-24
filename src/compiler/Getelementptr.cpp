#include <iostream>

#include "compiler/Function.h"
#include "compiler/Getelementptr.h"
#include "compiler/PaddedStructs.h"
#include "compiler/Variable.h"
#include "exception/TypeError.h"
#include "instruction/Add.h"
#include "instruction/Mov.h"
#include "instruction/Mul.h"
#include "parser/StructNode.h"
#include "parser/Types.h"
#include "parser/Values.h"

namespace LL2X::Getelementptr {
	static int64_t compute_mutating(const TypePtr &type, std::list<int64_t> &indices, TypePtr *out_type) {
		// compute_mutating... computating
		if (indices.empty()) {
			if (out_type != nullptr)
				*out_type = PointerType::make(type->copy());
			return 0;
		}

		const int64_t front = indices.front();
		indices.pop_front();
		switch (type->typeType()) {
			case TypeType::Pointer:
			case TypeType::OpaquePointer:
			case TypeType::Array: {
				TypePtr subtype;
				if (type->typeType() == TypeType::OpaquePointer)
					subtype = std::make_shared<OpaquePointerType>();
				else
					subtype = dynamic_cast<HasSubtype *>(type.get())->subtype;
				return front * subtype->width() + compute_mutating(subtype, indices, out_type);
			}
			case TypeType::Struct: {
				std::shared_ptr<StructType> stype = std::dynamic_pointer_cast<StructType>(type);
				std::shared_ptr<StructNode> snode = stype->node;
				if (!snode) {
					stype = StructType::knownStructs.at(stype->barename());
					snode = stype->node;
				}
				return PaddedStructs::getOffset(*stype, front)
					+ compute_mutating(snode->types.at(front), indices, out_type);
			}
			default: throw TypeError("Getelementptr::compute encountered an invalid type: " + std::string(*type), type);
		}
	}

	static void
	insert_mutating(Function &function, const TypePtr  &type,
	                std::list<std::variant<int64_t, const std::string *>> &indices, InstructionPtr &instruction,
	                OperandPtr &out_operand, TypePtr *out_type) {
		// TODO: add a bool first parameter, which if true indicates that out_var should be directly set to the computed
		// offset instead of being added to by the computed offset. This would obviate the need to set out_var to zero
		// at the beginning of the insert functions.

		if (indices.empty()) {
			if (out_type != nullptr)
				*out_type = PointerType::make(type->copy());
			return;
		}

		using variant = std::variant<int64_t, const std::string *>;
		const variant front = indices.front();
		indices.pop_front();
		switch (type->typeType()) {
			case TypeType::Pointer:
			case TypeType::OpaquePointer:
			case TypeType::Array: {
				TypePtr subtype;
				if (type->typeType() == TypeType::OpaquePointer)
					subtype = std::make_shared<OpaquePointerType>();
				else
					subtype = dynamic_cast<HasSubtype *>(type.get())->subtype;
				const int64_t subbytes = Util::updiv(subtype->width(), 8);
				if (std::holds_alternative<int64_t>(front)) {
					const int64_t offset = std::get<int64_t>(front) * subbytes;
					if (offset != 0)
						function.insertBefore<Add>(instruction, Op4(offset), out_operand);
				} else {
					VariablePtr temp = function.newVariable(IntType::make(64), instruction->parent.lock());
					function.insertBefore<Mov, false>(instruction,
						OpV(function.getVariable(std::get<const std::string *>(front), false)), OpV(temp));
					function.multiply(instruction, OpV(temp), subbytes, false, instruction->debugIndex);
					function.insertBefore<Add>(instruction, OpV(temp), out_operand);
				}
				insert_mutating(function, subtype, indices, instruction, out_operand, out_type);
				break;
			}
			case TypeType::Struct: {
				if (!std::holds_alternative<int64_t>(front))
					throw std::runtime_error("Unable to index a struct with a pvar except in the first position");
				std::shared_ptr<StructType> stype = std::dynamic_pointer_cast<StructType>(type);
				std::shared_ptr<StructNode> snode = stype->node;
				if (!snode) {
					stype = StructType::knownStructs.at(stype->barename());
					snode = stype->node;
				}
				const int64_t index = std::get<int64_t>(front);
				const int64_t offset = Util::updiv(PaddedStructs::getOffset(*stype, index), 8l);
				// Too lazy to handle overflows here.
				if (Util::outOfRange(offset))
					warn() << "PaddedStructs offset " << offset << " is out of the integer range. Incorrect code will "
					          "be produced.\n";
				if (offset != 0)
					function.insertBefore<Add>(instruction, Op4(offset), out_operand);
				insert_mutating(function, snode->types.at(index), indices, instruction, out_operand, out_type);
				break;
			}
			default:
				throw TypeError("Getelementptr::insert encountered an invalid type: " + std::string(*type) + " (" +
					type_map.at(type->typeType()) + ")", type);
		}
	}

	int64_t compute(const TypePtr &type, std::list<int64_t> indices, TypePtr *out_type) {
		return compute_mutating(type, indices, out_type);
	}

	int64_t compute(const GetelementptrValue *value, TypePtr *out_type) {
		std::list<int64_t> indices = getLongIndices(*value);
		warn() << std::string(const_cast<GetelementptrValue &>(*value)) << '\n';
		return compute_mutating(value->ptrType, indices, out_type);
	}

	void insert(Function &function, const TypePtr &type, std::list<std::variant<int64_t, const std::string *>> indices,
	            InstructionPtr instruction, OperandPtr &out_operand, TypePtr *out_type) {
		if (!out_operand)
			throw std::invalid_argument("out_operand must not be null in Getelementptr::insert");
		insert_mutating(function, type, indices, instruction, out_operand, out_type);
	}

	void insert(Function &function, const GetelementptrValue *value, std::shared_ptr<Instruction> instruction,
	            OperandPtr &out_operand, std::shared_ptr<Type> *out_type) {
		auto indices = getVariantIndices(*value);
		if (!out_operand)
			throw std::invalid_argument("out_operand must not be null in Getelementptr::insert");
		insert_mutating(function, value->ptrType, indices, instruction, out_operand, out_type);
	}

	std::list<int64_t> getLongIndices(const GetelementptrValue &value) {
		std::list<int64_t> indices;
		for (const auto &decimal_pair: value.decimals)
			if (!std::holds_alternative<int64_t>(decimal_pair.second)) {
				warn() << "GetelementptrValue decimal's second item is a pvar. Incorrect code will be produced.\n";
				indices.push_back(0);
			} else
				indices.push_back(std::get<int64_t>(decimal_pair.second));
		return indices;
	}

	std::list<std::variant<int64_t, const std::string *>> getVariantIndices(const GetelementptrValue &value) {
		std::list<std::variant<int64_t, const std::string *>> indices;
		for (const auto &decimal_pair: value.decimals)
			indices.push_back(decimal_pair.second);
		return indices;
	}
}
