#include "compiler/BasicBlock.h"
#include "compiler/Function.h"
#include "compiler/Instruction.h"
#include "compiler/Variable.h"
#include "parser/ASTNode.h"

namespace LL2X {
	Instruction::~Instruction() = default;

	bool Instruction::operator<(const Instruction &other) const {
		return index < other.index;
	}

	bool Instruction::operator>(const Instruction &other) const {
		return index > other.index;
	}

	std::string Instruction::toString() const {
		return "\e[91m<invalid>\e[39m: " + const_cast<Instruction *>(this)->debugExtra();
	}

	VariablePtr Instruction::doesRead(const VariablePtr &var) const {
		if (read.contains(var))
			return var;
		std::shared_ptr<BasicBlock> block = parent.lock();
		for (const VariablePtr &read_var: read)
			if (read_var->id == var->id)
				return read_var;
		for (Variable *alias: var->getAliases()) {
			VariablePtr shared_alias = block->parent->getVariable(alias->id);
			if (read.contains(shared_alias))
				return shared_alias;
		}

		return nullptr;
	}

	VariablePtr Instruction::doesWrite(const VariablePtr &var) const {
		if (written.contains(var))
			return var;
		std::shared_ptr<BasicBlock> block = parent.lock();
		for (const VariablePtr &written_var: written)
			if (written_var->id == var->id)
				return written_var;
		for (Variable *alias: var->getAliases()) {
			VariablePtr shared_alias = block->parent->getVariable(alias->id);
			if (written.contains(shared_alias))
				return shared_alias;
		}

		return nullptr;
	}

	Instruction * Instruction::setDebug(const ASTNode &node) {
		return setDebug(node.debugIndex);
	}

	Instruction * Instruction::setDebug(const ASTNode *node) {
		return setDebug(node->debugIndex);
	}
}
