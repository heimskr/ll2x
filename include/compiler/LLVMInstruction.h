#pragma once

#include "compiler/Instruction.h"

namespace LL2X {
	class InstructionNode;

	class LLVMInstruction: public Instruction {
		public:
			InstructionNode *node;
			bool ownsNode = false;

			LLVMInstruction(InstructionNode *node_, int index_, bool owns_node = false);

			virtual ~LLVMInstruction();

			bool isTerminal() const override;
			ExtractionResult extract(bool force = false) override;
			std::string debugExtra() override;
			std::string toString() const override;

			bool replaceRead(const VariablePtr &, const VariablePtr &) override;
			bool canReplaceRead(const VariablePtr &) const override;
			bool replaceWritten(const VariablePtr &, const VariablePtr &) override;
			bool canReplaceWritten(const VariablePtr &) const override;
			bool replaceOperand(const OperandPtr &, const OperandPtr &) override;
			bool replaceSimilarOperand(const OperandPtr &, const OperandPtr &) override;
			std::vector<std::reference_wrapper<OperandPtr>> getOperands() override;

			bool replaceLabel(const std::string *, const std::string *) override;
			std::vector<const std::string *> getLabels() const override;
			bool holdsLabels() const override;

			bool isPhi() const override;
	};
}
