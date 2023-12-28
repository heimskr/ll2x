#include <iostream>

#include "compiler/Function.h"
#include "compiler/Instruction.h"
#include "compiler/LLVMInstruction.h"
#include "compiler/Program.h"
#include "instruction/Add.h"
#include "instruction/Lea.h"
#include "instruction/Mov.h"
#include "parser/Enums.h"
#include "pass/LowerMemory.h"
#include "util/Timer.h"
#include "util/Util.h"

namespace LL2X::Passes {
	size_t lowerMemory(Function &function) {
		Timer timer("LowerMemory");
		size_t replaced_count = 0;
		std::list<InstructionPtr> to_remove;

		for (InstructionPtr &instruction: function.linearInstructions) {
			auto *llvm = dynamic_cast<LLVMInstruction *>(instruction.get());
			if (llvm == nullptr || (llvm->node->nodeType() != NodeType::Load &&
				llvm->node->nodeType() != NodeType::Store))
				continue;

			if (llvm->node->nodeType() == NodeType::Load)
				lowerLoad(function, instruction, *llvm);
			else if (llvm->node->nodeType() == NodeType::Store)
				lowerStore(function, instruction, *llvm);
			else
				continue;

			to_remove.push_back(instruction);
			++replaced_count;
		}

		for (const InstructionPtr &instruction: to_remove)
			function.remove(instruction);

		return replaced_count;
	}

	void lowerLoad(Function &function, InstructionPtr &instruction, LLVMInstruction &llvm) {
		auto *node = dynamic_cast<LoadNode *>(llvm.node);
		ConstantPtr converted = node->constant->convert();
		if (!converted->value)
			throw std::runtime_error("Constant lacks value in lowerLoad: " + std::string(*converted));

		int size = 0;
		try {
			size = getLoadStoreSize(converted, instruction);
		} catch (const std::exception &) {
			node->debug();
			throw;
		}
		const int width = size * 8;
		const ValueType value_type = converted->value->valueType();

		const std::string prefix = "LowerLoad(" + std::string(node->location) + ")";

		if (value_type == ValueType::Local) {

			auto local = std::dynamic_pointer_cast<LocalValue>(converted->value);
			VariablePtr localvar = local->getVariable(function);
			function.comment(instruction, prefix + ".1: (" + localvar->plainString() + ") into " +
				node->operand->toString());
			function.insertBefore<Mov>(instruction, Op8(0, localvar), node->operand, width);

		} else if (value_type == ValueType::Operand) {

			OperandPtr operand = std::dynamic_pointer_cast<OperandValue>(converted->value)->operand;
			if (operand->isRegister()) {
				function.comment(instruction, prefix + ".2: (" + operand->toString() + ") into " +
					node->operand->toString());
				// function.insertBefore<Mov>(instruction, Op8(0, operand->reg), node->operand, width);
				function.insertBefore<Mov>(instruction, Op8(0, operand->getVariable()), node->operand, width);
			} else {
				function.comment(instruction, prefix + ".3: " + operand->toString() + " into (" +
					node->operand->toString() + ')');
				function.insertBefore<Mov>(instruction, operand, node->operand, width);
			}

		} else if (value_type == ValueType::Global) {

			auto global = std::dynamic_pointer_cast<GlobalValue>(converted->value);
			OperandPtr wide_copy = node->operand->copy()->setWidth(64);
			function.comment(instruction, prefix + ".4: " + *global->name + " into " + wide_copy->toString());
			// Maybe this should be an lea, but I'm skeptical
			function.insertBefore<Mov, false>(instruction, OpX(width, *global->name, true, false), wide_copy, 64);

		} else if (value_type == ValueType::Null) { // In case you're begging for a segfault.

			function.comment(instruction, "Guaranteed segfault.");
			function.insertBefore<Mov, false>(instruction, Op4(0), node->operand, width);
			function.insertBefore<Mov>(instruction, node->operand->toDisplaced(), node->operand);

		} else if (value_type == ValueType::Int) {

			const int64_t long_value = converted->value->longValue();

			// mov $imm, %dest
			function.comment(instruction, prefix + ".5: " + std::to_string(long_value) + " into " +
				node->operand->toString());
			function.insertBefore<Mov, false>(instruction, Op4(long_value), node->operand, width);

			// mov (%dest), %dest
			function.insertBefore<Mov>(instruction, node->operand->toDisplaced(), node->operand);

		} else if (value_type == ValueType::Bool) { // Another segfault scenario.

			const bool bool_value = dynamic_cast<BoolValue *>(converted->value.get())->value;
			// mov $imm, %dest
			function.comment(instruction, prefix + ".6: " + (bool_value? "true" : "false") + " into " +
				node->operand->toString());
			function.insertBefore<Mov, false>(instruction, Op4(bool_value? 1 : 0), node->operand, width);
			// mov (%dest), %dest
			function.insertBefore<Mov>(instruction, node->operand->toDisplaced(), node->operand);

		} else
			throw std::runtime_error("Unexpected ValueType in load instruction: " + value_map.at(value_type));
	}

	void lowerStore(Function &function, InstructionPtr &instruction, LLVMInstruction &llvm) {
		auto lock = function.parent.getLock();
		auto *node = dynamic_cast<StoreNode *>(llvm.node);

		ConstantPtr converted = node->destination->convert();
		if (!converted->value)
			throw std::runtime_error("Constant lacks value in lowerStore: " + std::string(*converted));

		const std::string prefix = "LowerStore(" + std::string(node->location) + ")";

		std::shared_ptr<LocalValue> local;
		std::shared_ptr<GlobalValue> global;
		std::shared_ptr<OperandValue> operand_value;

		if (converted->value->isGetelementptr()) {
			local = function.replaceGetelementptrValue(std::dynamic_pointer_cast<GetelementptrValue>(converted->value),
				instruction);
		} else {
			local = std::dynamic_pointer_cast<LocalValue>(converted->value);
			if (!(global = local? nullptr : std::dynamic_pointer_cast<GlobalValue>(converted->value)))
				operand_value = std::dynamic_pointer_cast<OperandValue>(converted->value);

			if (!local && !global && !operand_value && !converted->value->isIntLike()) {
				node->debug();
				throw std::runtime_error("Expected a pvar, gvar or intlike in the constant of a store instruction");
			}
		}

		int size = 0;
		try {
			size = getLoadStoreSize(converted, instruction);
		} catch (std::exception &) {
			node->debug();
			throw;
		}

		ConstantPtr converted_source = node->source->convert();
		ValuePtr source_value = converted_source->value;
		TypePtr source_type = converted_source->type;
		const ValueType value_type = source_value->valueType();
		const int width = size * 8;
		const bool localish =
			value_type == ValueType::Local || value_type == ValueType::Global || value_type == ValueType::Operand;

		if (source_value->isIntLike()) {

			int64_t long_value = 0;
			ValuePtr value;

			if (value_type == ValueType::Int || value_type == ValueType::Bool) {
				long_value = source_value->longValue();
				value = source_value;
			}

			if (local) {

				VariablePtr lvar = local->getVariable(function);
				// mov $imm, (%var)
				function.comment(instruction, prefix + ".1: mov $imm, (" + lvar->plainString() + ")");
				function.insertBefore<Mov>(instruction, Op4(long_value), OpV(lvar)->toDisplaced(), width);

			} else if (global) {

				VariablePtr temp = function.newVariable(source_type, instruction->parent.lock());
				// mov $imm, %temp
				function.comment(instruction, prefix + ".2a: mov $imm, %temp");
				function.insertBefore<Mov>(instruction, Op4(long_value), OpV(temp), width);
				// mov %temp, (global)
				function.comment(instruction, prefix + ".2b: mov %temp, (global)");
				// TODO!: investigate whether to use @GOTPCREL
				function.insertBefore<Mov>(instruction, OpV(temp), OpX(width, *global->name, true, false), width);

			} else if (operand_value) {

				OperandPtr operand = operand_value->operand;
				if (operand->isRegister()) {
					// mov $imm, (operand)
					function.comment(instruction, prefix + ".3: mov $imm, " + operand->toString());
					function.insertBefore<Mov>(instruction, Op4(long_value), operand->toDisplaced(), width);
				} else {
					// mov $imm, operand
					function.comment(instruction, prefix + ".4: mov $imm, operand");
					function.insertBefore<Mov>(instruction, Op4(long_value), operand, width);
				}

			} else if (converted->value->isIntLike()) {

				const int64_t longptr = converted->value->longValue();
				VariablePtr temp = function.newVariable(source_type, instruction->parent.lock());
				// mov $imm, %temp
				function.comment(instruction, prefix + ".5a: mov $imm, %temp");
				function.insertBefore<Mov, false>(instruction, Op4(long_value), OpV(temp), width);
				// mov %temp, addr
				function.comment(instruction, prefix + ".5b: mov %temp, addr");
				function.insertBefore<Mov>(instruction, OpV(temp), OpX(width, longptr, true), width);

			}

		} else if (localish) {

			OperandPtr soperand;

			if (value_type == ValueType::Global) {
				soperand = OpV(function.newVariable(node->source->type));
				const std::string &global_name = *dynamic_cast<GlobalValue *>(source_value.get())->name;
				function.comment(instruction, prefix + ".6: load global");
				function.insertBefore<Lea, false>(instruction, Op4(global_name, true, false), soperand, width);
			} else if (value_type == ValueType::Local) {
				soperand = OpV(dynamic_cast<LocalValue *>(source_value.get())->getVariable(function));
			} else {
				soperand = dynamic_cast<OperandValue *>(source_value.get())->operand;
			}

			if (local) {

				auto lvar = local->getVariable(function);
				// mov %src, (%dest)
				function.comment(instruction, prefix + ".7: mov " + soperand->toString() + ", (" + lvar->plainString() +
					")");
				function.insertBefore<Mov>(instruction, soperand, Op8(0, lvar), width);

			} else if (global) {

				VariablePtr new_var = function.newVariable(node->destination->type, instruction->parent.lock());
				// movq var@GOTPCREL(%rip), %temp
				function.comment(instruction, prefix + ".8a: leaq var, %temp");
				function.insertBefore<Lea, false>(instruction, Op8(*global->name, true, false), Op8(new_var));
				// mov %src, (%temp)
				function.comment(instruction, prefix + ".8b: movq " + soperand->toString() + ", (%temp)");
				function.insertBefore<Mov>(instruction, soperand, Op8(0, new_var), width);

			} else if (operand_value) {

				OperandPtr doperand = operand_value->operand;

				if (doperand->isRegister()) {
					// mov %src, (dest)
					function.comment(instruction, prefix + ".9: mov " + soperand->toString() + ", (" +
						doperand->toString() + ")");
					function.insertBefore<Mov>(instruction, soperand, doperand->toDisplaced(), width);
				} else {
					// mov %src, dest
					function.comment(instruction, prefix + ".10: mov " + soperand->toString() + ", " +
						doperand->toString());
					function.insertBefore<Mov>(instruction, soperand, doperand, width);
				}

			} else if (converted->value->isIntLike()) {

				const int64_t longptr = converted->value->longValue();
				// mov %src, addr
				function.comment(instruction, prefix + ".11: mov " + soperand->toString() + ", " +
					std::to_string(longptr));
				function.insertBefore<Mov>(instruction, soperand, Op8(longptr, true), width);

			} else
				throw std::runtime_error("Unexpected destination ValueType in store instruction: " +
					value_map.at(converted->value->valueType()));

		} else {
			node->debug();
			throw std::runtime_error("Unexpected source ValueType in store instruction: " + value_map.at(value_type));
		}
	}

	int getLoadStoreSize(ConstantPtr &constant, const InstructionPtr &instruction) {
		auto constant_ptr = std::dynamic_pointer_cast<PointerType>(constant->type);

		if (!constant_ptr) {
			if (constant->type->typeType() != TypeType::OpaquePointer)
				throw std::runtime_error("Expected a PointerType or OpaquePointerType in the constant of a load/store instruction");

			auto llvm = std::dynamic_pointer_cast<LLVMInstruction>(instruction);

			if (!llvm) {
				error() << instruction->toString() << '\n';
				throw std::runtime_error("Expected instruction with an opaque pointer operand to be an LLVM instruction");
			}

			switch (llvm->node->nodeType()) {
				case NodeType::Store: {
					auto &store = dynamic_cast<StoreNode &>(*llvm->node);
					return store.source->type->width() / 8;
				}

				case NodeType::Load: {
					auto &load = dynamic_cast<LoadNode &>(*llvm->node);
					return load.type->width() / 8;
				}

				default:
					error() << instruction->toString() << '\n';
					throw std::runtime_error("Unhandled LLVM node in getLoadStoreSize: " + llvm->node->debugExtra());
			}
		}

		TypePtr subtype = constant_ptr->subtype;

		if (auto constant_int = std::dynamic_pointer_cast<IntType>(subtype)) {
			const int width = constant_int->width();
			return width < 8? 1 : width / 8;
		}

		if (std::dynamic_pointer_cast<PointerType>(subtype) || std::dynamic_pointer_cast<FunctionType>(subtype))
			return x86_64::pointerWidth;

		if (auto constant_struct = std::dynamic_pointer_cast<StructType>(subtype))
			return constant_struct->width() / 8;

		warn() << "getLoadStoreSize: Unexpected pointer subtype " + std::string(*constant_ptr->subtype) << " in "
		       << instruction->debugExtra() << '\n';

		return constant_ptr->subtype->width() / 8;
	}
}
