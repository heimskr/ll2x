#include <iostream>

#include "compiler/Function.h"
#include "compiler/Instruction.h"
#include "compiler/LLVMInstruction.h"
#include "compiler/Program.h"
#include "instruction/Add.h"
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
			LLVMInstruction *llvm = dynamic_cast<LLVMInstruction *>(instruction.get());
			if (!llvm || (llvm->node->nodeType() != NodeType::Load && llvm->node->nodeType() != NodeType::Store))
				continue;
			
			if (llvm->node->nodeType() == NodeType::Load)
				lowerLoad(function, instruction, *llvm);
			else if (llvm->node->nodeType() == NodeType::Store) {
				lowerStore(function, instruction, *llvm);
			} else continue;

			to_remove.push_back(instruction);
			++replaced_count;
		}

		for (InstructionPtr &instruction: to_remove)
			function.remove(instruction);

		return replaced_count;
	}

	void lowerLoad(Function &function, InstructionPtr &instruction, LLVMInstruction &llvm) {
		LoadNode *node = dynamic_cast<LoadNode *>(llvm.node);
		ConstantPtr converted = node->constant->convert();
		if (!converted->value)
			throw std::runtime_error("Constant lacks value in lowerLoad: " + std::string(*converted));
		int size;
		try {
			size = getLoadStoreSize(converted, instruction);
		} catch (const std::exception &) {
			node->debug();
			throw;
		}
		const x86_64::Width width = x86_64::getWidth(size * 8);
		const ValueType value_type = converted->value->valueType();

		const std::string prefix = "LowerMemory(load @ " + std::string(node->location) + "): ";

		if (value_type == ValueType::Local) {

			LocalValue *local = dynamic_cast<LocalValue *>(converted->value.get());
			VariablePtr localvar = local->getVariable(function);
			auto mov = std::make_shared<Mov>(Operand8(0, localvar), node->operand, width);
			function.insertBefore(instruction, mov, prefix + "load (" + localvar->plainString() + ") into " +
				node->operand->toString())->setDebug(llvm, true);

		} else if (value_type == ValueType::Global) {

			GlobalValue *global = dynamic_cast<GlobalValue *>(converted->value.get());
			auto mov = std::make_shared<Mov>(OperandX(width, *global->name), node->operand, width);
			function.insertBefore(instruction, mov, prefix + "load " + *global->name + " into " +
				node->operand->toString())->setDebug(llvm, true);

		} else if (value_type == ValueType::Null) { // In case you're begging for a segfault.

			function.insertBefore(instruction, std::make_shared<Mov>(Operand4(0), node->operand, width),
				"Guaranteed segfault.", false)->setDebug(llvm, true);
			function.insertBefore(instruction, std::make_shared<Mov>(node->operand->toDisplaced(), node->operand),
				false)->setDebug(llvm, true);

		} else if (value_type == ValueType::Int) {

			const int64_t long_value = converted->value->longValue();
			function.insertBefore(instruction, std::make_shared<Mov>(Operand4(long_value), node->operand, width),
				prefix + "load " + std::to_string(long_value) + " into " + node->operand->toString(),
				false)->setDebug(llvm, true);
			function.insertBefore(instruction, std::make_shared<Mov>(node->operand->toDisplaced(), node->operand),
				false)->setDebug(llvm, true);

		} else if (value_type == ValueType::Bool) {

			const int64_t bool_value = dynamic_cast<BoolValue *>(converted->value.get())->value? 1 : 0;
			function.insertBefore(instruction, std::make_shared<Mov>(Operand4(bool_value), node->operand, width),
				prefix + "load " + std::to_string(bool_value) + " into " + node->operand->toString(),
				false)->setDebug(llvm, true);
			function.insertBefore(instruction, std::make_shared<Mov>(node->operand->toDisplaced(), node->operand),
				false)->setDebug(llvm, true);

		} else
			throw std::runtime_error("Unexpected ValueType in load instruction: " + value_map.at(value_type));
	}

	void lowerStore(Function &function, InstructionPtr &instruction, LLVMInstruction &llvm) {
		auto lock = function.parent.getLock();
		StoreNode *node = dynamic_cast<StoreNode *>(llvm.node);

		ConstantPtr converted = node->destination->convert();
		if (!converted->value)
			throw std::runtime_error("Constant lacks value in lowerStore: " + std::string(*converted));

		std::shared_ptr<LocalValue> local;
		GlobalValue *global;

		if (converted->value->isGetelementptr()) {
			local = function.replaceGetelementptrValue(std::dynamic_pointer_cast<GetelementptrValue>(converted->value),
				instruction);
		} else {
			local = std::dynamic_pointer_cast<LocalValue>(converted->value);
			global = local? nullptr : dynamic_cast<GlobalValue *>(converted->value.get());
			if (!local && !global && !converted->value->isIntLike()) {
				node->debug();
				throw std::runtime_error("Expected a pvar, gvar or intlike in the constant of a store instruction");
			}
		}

		int size;
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
		const x86_64::Width width = x86_64::getWidth(size * 8);

		if (source_value->isIntLike()) {
			int64_t long_value = 0;
			ValuePtr value;

			if (value_type == ValueType::Int || value_type == ValueType::Bool) {
				long_value = source_value->longValue();
				value = source_value;
			}

			if (local) {
				auto lvar = local->getVariable(function);
				// mov $imm, (%var)
				function.insertBefore(instruction, std::make_shared<Mov>(Operand4(long_value),
					OperandV(lvar)->toDisplaced(), width), "LowerMemory.1: mov $imm, (" + lvar->plainString() + ")",
					false)->setDebug(llvm, true);
			} else if (global) {
				auto temp = function.newVariable(source_type, instruction->parent.lock());
				// mov $imm, %temp
				auto mov_imm = std::make_shared<Mov>(Operand4(long_value), OperandV(temp), width);
				// mov %temp, (global)
				auto mov_global = std::make_shared<Mov>(OperandV(temp), OperandX(width, *global->name, true), width);
				function.insertBefore(instruction, mov_imm, "LowerMemory.2: mov $imm, %temp", false)
					->setDebug(llvm, true);
				function.insertBefore(instruction, mov_global, "LowerMemory.3: mov %temp, (global)", false)
					->setDebug(llvm, true);
			} else if (converted->value->isIntLike()) {
				const int64_t longptr = converted->value->longValue();
				auto temp = function.newVariable(source_type, instruction->parent.lock());
				// mov $imm, %temp
				auto mov_imm = std::make_shared<Mov>(Operand4(long_value), OperandV(temp), width);
				// mov %temp, addr
				auto mov_longptr = std::make_shared<Mov>(OperandV(temp), OperandX(width, longptr, true), width);
				function.insertBefore(instruction, mov_imm, "LowerMemory.4: mov $imm, %temp", false)
					->setDebug(llvm, true);
				function.insertBefore(instruction, mov_longptr, "LowerMemory.5: mov %temp, addr", false)
					->setDebug(llvm, true);
			}
		} else if (value_type == ValueType::Local || value_type == ValueType::Global) {
			VariablePtr svar;
			if (value_type == ValueType::Global) {
				svar = function.newVariable(node->source->type);
				const std::string &global_name = *dynamic_cast<GlobalValue *>(source_value.get())->name;
				auto mov = std::make_shared<Mov>(Operand4(global_name, true), OperandV(svar), width);
				function.insertBefore(instruction, mov, "LowerMemory.6: load global")->setDebug(llvm, true);
			} else
				svar = dynamic_cast<LocalValue *>(source_value.get())->getVariable(function);

			if (local) {
				auto lvar = local->getVariable(function);
				// mov %src, (%dest)
				auto mov = std::make_shared<Mov>(OperandV(svar), Operand8(0, lvar), width);
				function.insertBefore(instruction, mov, "LowerMemory.7: mov " + svar->plainString() + ", (" +
					lvar->plainString() + ")", false)->setDebug(llvm, true);
			} else if (global) {
				// %src -> [global]
				int symsize = function.parent.symbolSize("@" + *global->name);
				symsize = symsize / 8 + (symsize % 8? 1 : 0);

				VariablePtr new_var = function.newVariable(node->destination->type, instruction->parent.lock());
				// movq var@GOTPCREL(%rip), %temp
				auto mov_global = std::make_shared<Mov>(Operand8(*global->name, true), Operand8(new_var));
				// mov %src, (%temp)
				auto mov_source = std::make_shared<Mov>(OperandV(svar), Operand8(0, new_var), width);
				function.insertBefore(instruction, mov_global, "LowerMemory.8: movq var, %temp", false)
					->setDebug(llvm, true);
				function.insertBefore(instruction, mov_source, "LowerMemory.9: movq " + svar->plainString() + ", (%temp)",
					false)->setDebug(llvm, true);
			} else if (converted->value->isIntLike()) {
				const int64_t longptr = converted->value->longValue();
				// mov %src, addr
				auto mov = std::make_shared<Mov>(OperandV(svar), Operand8(longptr, true), width);
				function.insertBefore(instruction, mov, "LowerMemory.10: mov " + svar->plainString() + ", " +
					std::to_string(longptr))->setDebug(llvm, true);
			} else
				throw std::runtime_error("Unexpected destination ValueType in store instruction: " +
					value_map.at(converted->value->valueType()));
		} else {
			node->debug();
			throw std::runtime_error("Unexpected source ValueType in store instruction: " + value_map.at(value_type));
		}
	}

	int getLoadStoreSize(ConstantPtr &constant, const InstructionPtr &instruction) {
		PointerType *constant_ptr = dynamic_cast<PointerType *>(constant->type.get());
		if (!constant_ptr)
			throw std::runtime_error("Expected a PointerType in the constant of a load/store instruction");

		Type *subtype = constant_ptr->subtype.get();
		if (IntType *constant_int = dynamic_cast<IntType *>(subtype)) {
			const int width = constant_int->width();
			if (width < 8)
				return 1;
			return constant_int->width() / 8;
		} else if (dynamic_cast<PointerType *>(subtype) || dynamic_cast<FunctionType *>(subtype)) {
			return x86_64::pointerWidth;
		} else if (StructType *constant_struct = dynamic_cast<StructType *>(subtype)) {
			return constant_struct->width() / 8;
		} else {
			warn() << "getLoadStoreSize: Unexpected pointer subtype " + std::string(*constant_ptr->subtype)
			       << " in " << instruction->debugExtra() << "\n";
			return constant_ptr->subtype->width() / 8;
		}
	}
}
