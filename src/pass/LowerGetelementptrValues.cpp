#include "compiler/Function.h"
#include "compiler/Instruction.h"
#include "compiler/LLVMInstruction.h"
#include "compiler/Program.h"
#include "parser/Nodes.h"
#include "pass/LowerGetelementptr.h"
#include "pass/LowerGetelementptrValues.h"
#include "util/Timer.h"

namespace LL2X::Passes {
	namespace {
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

		std::shared_ptr<OperandValue> convertValue(Function &function,
		                                           const std::shared_ptr<GetelementptrValue> &gep_value,
		                                           const std::shared_ptr<LLVMInstruction> &llvm) {
			ConstantPtr constant = Constant::make(gep_value->type, gep_value->variable);
			TypePtr base_type = gep_value->type;
			VariablePtr new_variable = function.newVariable(base_type, llvm->parent.lock());
			OperandPtr operand = OpV(new_variable);
			lowerGetelementptr(function, llvm, llvm->node->location, constant, base_type,
				convertDecimals(gep_value->decimals), operand, llvm->node->debugIndex);
			return OperandValue::make(operand);
		}
	}

	void lowerGetelementptrValues(Function &function) {
		Timer timer("LowerGetelementptrValues");

		bool any_changed = false;

		do {
			any_changed = false;

			for (const InstructionPtr &instruction: function.linearInstructions) {
				auto llvm = std::dynamic_pointer_cast<LLVMInstruction>(instruction);
				if (!llvm)
					continue;

				Reader *reader = dynamic_cast<Reader *>(llvm->node);
				if (!reader)
					continue;

				for (ValuePtr *value_ptr: reader->allValuePointers()) {
					if (!value_ptr)
						continue;

					ValuePtr value = *value_ptr;
					if (!value || !value->isGetelementptr())
						continue;

					*value_ptr = convertValue(function, std::static_pointer_cast<GetelementptrValue>(value), llvm);
					any_changed = true;
				}
			}
		} while (any_changed);
	}
}
