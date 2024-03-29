#pragma once

#include <list>
#include <map>
#include <memory>
#include <set>
#include <unordered_set>
#include <utility>
#include <vector>

#include "parser/Nodes.h"

namespace LL2X {
	class Instruction;
	class Variable;
	class Node;
	class Function;
	class LLVMInstruction;
	class Type;

	class BasicBlock: public std::enable_shared_from_this<BasicBlock> {
		private:
			bool extracted = false;
			void extract(const std::shared_ptr<Instruction> &);

		public:
			using Label = const std::string *;
			Label label;
			int index = -1;
			std::vector<Label> preds;
			std::list<std::shared_ptr<Instruction>> instructions;
			std::set<std::shared_ptr<Variable>> read, written, nonPhiWritten, nonPhiRead;
			std::unordered_set<std::shared_ptr<Variable>> liveIn;
			std::unordered_set<std::shared_ptr<Variable>> liveOut;
			/** Contains everything in liveIn and liveOut. */
			std::unordered_set<std::shared_ptr<Variable>> allLive;
			/** A set of all variables used by ϕ-instructions in this block. */
			std::unordered_set<std::shared_ptr<Variable>> phiUses;
			Node *node = nullptr;
			Function *parent = nullptr;
			/** The total number of instructions in all basic blocks preceding this one. */
			size_t offset = -1;
			int estimatedExecutions = 0;

			BasicBlock(Label, const std::vector<Label> & = {}, const std::list<std::shared_ptr<Instruction>> & = {});

			/** Extracts each instruction in the basic block. Returns a pair containing the total number of reads and
			 *  the total number of writes in the basic block. */
			std::pair<char, char> extract(bool force = false);

			/** Resets the cached read/write counts and marks the block as unextracted. */
			void unextract();

			/** Fills phiUses. */
			void extractPhi();

			std::vector<std::shared_ptr<BasicBlock>> goesTo() const;

			bool inPhiDefs(const VariablePtr &) const;

			/** Returns the number of instructions in the basic block. */
			size_t size() const { return instructions.size(); }

			/** Inserts an instruction right before the basic block's terminal instruction.
			 *  This function assumes that every basic block has exactly one terminal instruction, but this assumption
			 *  is false after lowering of terminal instructions. */
			void insertBeforeTerminal(const std::shared_ptr<Instruction> &);

			/** Returns the number of instructions in the basic block that define a variable. */
			int countDefinitions();

			bool isLiveIn(const VariablePtr &) const;
			bool isLiveOut(const VariablePtr &) const;

			/** If this block is the entry, this function returns true. Otherwise, this function returns true if this
			 *  block's only predicate is the entry block, or another block whose only predicate is the entry block,
			 *  or so on. */
			bool isPrimordial() const;
	};

	using BasicBlockPtr = std::shared_ptr<BasicBlock>;
	std::ostream & operator<<(std::ostream &, const BasicBlock &);
}
