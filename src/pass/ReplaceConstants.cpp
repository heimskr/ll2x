#include "compiler/Function.h"
#include "compiler/Getelementptr.h"
#include "compiler/Instruction.h"
#include "compiler/LLVMInstruction.h"
#include "instruction/Add.h"
#include "instruction/Invalid.h"
#include "instruction/Lea.h"
#include "instruction/Mov.h"
#include "pass/LowerIcmp.h"
#include "pass/ReplaceConstants.h"
#include "util/Timer.h"
#include "util/Util.h"

namespace LL2X::Passes {

	void replaceConstants(Function &function) {
		Timer timer("ReplaceConstants");

		for (const InstructionPtr &instruction: function.linearInstructions) {
			auto llvm = std::dynamic_pointer_cast<LLVMInstruction>(instruction);
			if (!llvm || llvm->node->nodeType() == NodeType::Call)
				continue;

			auto *reader = dynamic_cast<Reader *>(llvm->node);
			if (reader == nullptr)
				continue;

			for (const ConstantPtr &constant: reader->allConstants()) {
				if (constant->conversion == Conversion::Bitcast) {
					constant->type = constant->conversionType;
					constant->value = constant->conversionSource->value;
					constant->conversion = Conversion::None;
				} else if (constant->conversion == Conversion::Zext) {
					// TODO!(seminar)
				}
			}

			for (ValuePtr *value: reader->allValuePointers()) {
				if (auto *gep = dynamic_cast<GetelementptrValue *>(value->get())) {
					auto gep_global = std::dynamic_pointer_cast<GlobalValue>(gep->variable);
					if (!gep_global) {
						warn() << "Not sure what to do when the argument of getelementptr isn't a global.\n";
						function.insertBefore<InvalidInstruction>(instruction);
					} else {
						TypePtr out_type;
						const long offset = Util::updiv(Getelementptr::compute(function.parent, gep, &out_type), 8l);
						if (Util::outOfRange(offset))
							warn() << "Getelementptr offset inexplicably out of range: " << offset << '\n';
						TypePtr ptr_type = std::make_shared<PointerType>(out_type);
						VariablePtr new_var = function.newVariable(ptr_type, instruction->parent.lock());
						function.comment(instruction, "Doing an lea here in ReplaceConstants.");
						auto mov_addr = std::make_shared<Lea>(Op8(*gep_global->name, true, false), OpV(new_var));
						function.insertBefore(instruction, mov_addr)->setDebug(*llvm)->extract();

						if (offset != 0)
							function.insertAfter<Add>(mov_addr, Op4(offset), OpV(new_var));

						*value = LocalValue::make(new_var);
					}
				} else if (auto *icmp = dynamic_cast<IcmpValue *>(value->get())) {
					VariablePtr new_var = function.newVariable(IntType::make(1), instruction->parent.lock());
					auto icmp_node = std::make_unique<IcmpNode>(OpV(new_var), icmp->cond, icmp->left, icmp->right);
					lowerIcmp(function, instruction, icmp_node.get());
					*value = LocalValue::make(new_var);
				}
			}

			instruction->extract(true);
		}

		function.extractVariables();
	}
}
