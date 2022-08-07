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

			bool replaceRead(const std::shared_ptr<Variable> &, const std::shared_ptr<Variable> &) override;
			bool canReplaceRead(const std::shared_ptr<Variable> &) const override;
			bool replaceWritten(const std::shared_ptr<Variable> &, const std::shared_ptr<Variable> &) override;
			bool canReplaceWritten(const std::shared_ptr<Variable> &) const override;

			bool isPhi() const override;
	};
}
