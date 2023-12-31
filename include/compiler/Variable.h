#pragma once

#include <memory>
#include <optional>
#include <ostream>
#include <set>

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
		bool operator()(const std::weak_ptr<Variable> &left, const std::weak_ptr<Variable> &right) const;
	};

	using VariableID = const std::string *;

	struct VariableData {
		VariableID id;
		TypePtr type;
		WeakSet<BasicBlock>  definingBlocks, usingBlocks;
		WeakSet<Instruction> definitions, uses;
		std::weak_ptr<Instruction> lastUse;
		std::set<int> registers;
		std::set<std::weak_ptr<Variable>, VariableCompare> aliases;
		/** Whether the variable's register assignment is important and shouldn't be cleared. Useful for precolored
		 *  variables. */
		bool fixed = false;

		VariableData() = default;
		VariableData(VariableID id_, TypePtr type_, WeakSet<BasicBlock> defining_blocks,
		             WeakSet<BasicBlock> using_blocks, WeakSet<Instruction> definitions_, WeakSet<Instruction> uses_,
		             std::weak_ptr<Instruction> last_use, std::set<int> registers_, bool fixed_);

		void adopt(const VariableData &);
	};

	class Variable: public std::enable_shared_from_this<Variable> {
		private:
			std::list<Instruction *> useOrder;
			std::weak_ptr<Variable> weakParent;
			std::optional<ssize_t> spillCost;

		public:
			const VariableID originalID;

			std::shared_ptr<VariableData> data = std::make_shared<VariableData>();

			std::unordered_set<Variable *> phiParents, phiChildren;

			/** Whether the variable was defined by a ϕ-instruction. */
			bool fromPhi = false;

			Variable *spilledFrom = nullptr; // Tentative.
			std::list<Variable *> spilledTo; // Also tentative.

			Variable(VariableID id, TypePtr type = {}, WeakSet<BasicBlock> defining_blocks = {},
			         WeakSet<BasicBlock> using_blocks = {});

			VariableID getID() const;

			/** Calculates the sum of each use's estimated execution count. */
			ssize_t weight() const;

			/** Calculates the variable's spill cost. */
			ssize_t getSpillCost();
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
			VariableID parentID() const;

			/** Sets up this variable so that changes to a different variable will be reflected in this one. */
			void makeAliasOf(const std::shared_ptr<Variable> &);

			inline VariablePtr getParent() const { return weakParent.lock(); }

			inline const auto & getAliases() const { return data->aliases; }

			inline TypePtr & getType() { return data->type; }
			inline const TypePtr & getType() const { return data->type; }

			inline auto & getRegisters() { return data->registers; }
			inline const auto & getRegisters() const { return data->registers; }

			inline auto & getDefinitions() { return data->definitions; }
			inline const auto & getDefinitions() const { return data->definitions; }

			inline auto & getUses() { return data->uses; }
			inline const auto & getUses() const { return data->uses; }

			void addDefiner(const std::shared_ptr<BasicBlock> &);
			void removeDefiner(const std::shared_ptr<BasicBlock> &);
			void addUsingBlock(const std::shared_ptr<BasicBlock> &);
			void removeUsingBlock(const std::shared_ptr<BasicBlock> &);
			void addDefinition(const std::shared_ptr<Instruction> &);
			void removeDefinition(const std::shared_ptr<Instruction> &);
			void addUse(const std::shared_ptr<Instruction> &);
			void removeUse(const std::shared_ptr<Instruction> &);

			std::shared_ptr<BasicBlock> onlyDefiner() const;
			std::shared_ptr<Instruction> onlyDefinition() const;

			/** Returns true if the variable has at least one register that is special purpose. */
			bool hasSpecialRegister() const;
			/** Returns true if the variable has at least one register that isn't special purpose. */
			bool hasNonSpecialRegister() const;
			/** Returns the number of non-special-purpose registers. */
			int nonSpecialCount() const;
			/** Returns true if the variable has at least one register and all registers are special-purpose. */
			bool allRegistersSpecial() const;
			/** Returns true if this variable has the same set of registers as the argument. */
			bool compareRegisters(const Variable &) const;
			/** Returns the number of registers required to contain all the variable's data. Not useful if the variable
			 *  has no type information. */
			int registersRequired(bool may_warn = true) const;
			/** Returns true if the variable has been assigned more than one register. */
			bool multireg() const;
			/** Returns a string containing all the assigned registers.
			 *  The string is of the form "%reg" or "(%reg1 %reg2 ...)". */
			std::string registersString() const;
			void resetRegisters();

			std::string toString(x86_64::Width = x86_64::Width::Eight) const;
			std::string plainString(x86_64::Width = x86_64::Width::Eight) const;
			std::string ansiString(x86_64::Width = x86_64::Width::Eight) const;

			bool operator==(const Variable &) const;

			/** Returns whether the variables are same (with operator==) or whether they're both precolored with
			 *  matching register sets. */
			bool equivalent(const Variable &) const;

			/** Returns whether this variable is an alias of the other variable. Variables are considered aliases of
			 *  themselves for the purposes of this function. */
			bool isAliasOf(Variable &);

			void debug();

			/** Returns true if the variable's ID is numeric and less than the given number. */
			bool isLess(int64_t) const;

			/** Returns true if the given variable ID is numeric and less than the given number. */
			static bool isLess(VariableID, int64_t);
	};

	std::ostream & operator<<(std::ostream &, const LL2X::Variable &);

	using VariablePtr = std::shared_ptr<Variable>;
}