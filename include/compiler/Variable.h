#pragma once

#include <memory>
#include <optional>
#include <ostream>
#include <set>

#include "compiler/Operand.h"
#include "parser/Types.h"
#include "util/strnatcmp.h"
#include "util/WeakCompare.h"

namespace LL2X {
	class BasicBlock;
	class Function;
	class Instruction;
	class Node;
	class Variable;

	struct VariableCompare {
		bool operator()(const Variable *left, const Variable *right) const;
	};

	class Variable {
		private:
			std::list<Instruction *> useOrder;
			std::set<Variable *, VariableCompare> aliases;
			std::weak_ptr<Variable> parent;
			std::optional<int> spillCost_;

		public:
			using ID = const std::string *;

			const ID originalID;
			ID id;
			TypePtr type = nullptr;
			WeakSet<BasicBlock>  definingBlocks, usingBlocks;
			WeakSet<Instruction> definitions, uses;
			std::weak_ptr<Instruction> lastUse;
			int reg = -1;
			std::unordered_set<Variable *> phiParents, phiChildren;
			/** Whether the variable was defined by a ϕ-instruction. */
			bool fromPhi = false;

			Variable *spilledFrom = nullptr; // Tentative.
			std::list<Variable *> spilledTo; // Also tentative.

			Variable(ID id_, TypePtr type_ = nullptr,
			         const WeakSet<BasicBlock> &defining_blocks = {}, const WeakSet<BasicBlock> &using_blocks = {});

			/** Calculates the sum of each use's estimated execution count. */
			int weight() const;

			/** Calculates the variable's spill cost. */
			int spillCost();
			void clearSpillCost();

			/** Returns whether the variable has only one using block and whose single using block is the same as its
			 *  defining block. */
			bool isSimple() const;

			/** Returns a pointer to the function in which this variable occurs if it can be found in either the
			 *  defining blocks or the using blocks, or nullptr otherwise. */
			Function * getFunction() const;

			/** Returns the name of the function in which this variable occurs. */
			std::string functionName() const;

			/** If this variable has a parent, the parent's ID is returned. Otherwise, this variable's ID is returned.
			 */
			ID parentID() const;

			/** Sets up this variable so that changes to a different variable will be reflected in this one. */
			void makeAliasOf(std::shared_ptr<Variable>);

			std::weak_ptr<Variable> getParent() const { return parent; }
			const std::set<Variable *, VariableCompare> & getAliases() const { return aliases; }

			void addDefiner(std::shared_ptr<BasicBlock>);
			void removeDefiner(std::shared_ptr<BasicBlock>);
			void addUsingBlock(std::shared_ptr<BasicBlock>);
			void removeUsingBlock(std::shared_ptr<BasicBlock>);
			void addDefinition(std::shared_ptr<Instruction>);
			void removeDefinition(std::shared_ptr<Instruction>);
			void addUse(std::shared_ptr<Instruction>);
			void removeUse(std::shared_ptr<Instruction>);

			std::shared_ptr<BasicBlock> onlyDefiner() const;
			std::shared_ptr<Instruction> onlyDefinition() const;

			void setID(ID);
			void setType(TypePtr);
			void setDefiningBlocks(const decltype(definingBlocks) &);
			void setDefinitions(const decltype(definitions) &);
			void setUses(const decltype(uses) &);
			void setUsingBlocks(const decltype(usingBlocks) &);
			void setLastUse(decltype(lastUse));
			void setRegister(decltype(reg));

			/** Returns true if the variable's register is special purpose. */
			bool isSpecialRegister() const;
			/** Returns true if this variable has the same set of registers as the argument. */
			bool compareRegisters(const Variable &) const;
			/** Returns true if a register has been assigned to this variable. */
			bool hasRegister() const;

			std::string toString(x86_64::Width = x86_64::Width::Eight) const;
			std::string plainString(x86_64::Width = x86_64::Width::Eight) const;
			std::string ansiString(x86_64::Width = x86_64::Width::Eight) const;

			bool operator==(const Variable &) const;

			/** Returns whether the variables are same (with operator==) or whether they're both precolored with
			 *  matching register sets. */
			bool equivalent(const Variable &) const;

			/** Returns whether this variable is an alias of the other variable. Variables are considered aliases of
			 *  themselves for the purposes of this function. */
			bool isAliasOf(const Variable &) const;

			void debug();

			/** Returns true if the variable's ID is numeric and less than the given number. */
			bool isLess(long) const;

			/** Returns true if the given variable ID is numeric and less than the given number. */
			static bool isLess(Variable::ID, long);
	};

	std::ostream & operator<<(std::ostream &, const LL2X::Variable &);

	using VariablePtr = std::shared_ptr<Variable>;
}
