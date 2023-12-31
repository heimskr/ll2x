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

	namespace {
		VariablePtr doesAccess(const Instruction &instruction, const VariablePtr &var, std::unordered_set<VariablePtr> Instruction::*member) {
			if ((instruction.*member).contains(var))
				return var;

			BasicBlockPtr block = instruction.parent.lock();

			for (const VariablePtr &accessed_var: instruction.*member)
				if (accessed_var->getID() == var->getID())
					return accessed_var;

			for (const WeakVariablePtr &weak_alias: var->getAliases()) {
				if (VariablePtr alias = weak_alias.lock()) {
					VariablePtr shared_alias = block->parent->getVariable(alias->getID());
					if ((instruction.*member).contains(shared_alias))
						return shared_alias;
				}
			}

			return nullptr;
		}
	}

	VariablePtr Instruction::doesRead(const VariablePtr &var) const {
		return doesAccess(*this, var, &Instruction::read);
	}

	VariablePtr Instruction::doesWrite(const VariablePtr &var) const {
		return doesAccess(*this, var, &Instruction::written);
	}

	Instruction * Instruction::setDebug(const ASTNode &node) {
		return setDebug(node.debugIndex);
	}

	Instruction * Instruction::setDebug(const ASTNode *node) {
		return setDebug(node->debugIndex);
	}
}
