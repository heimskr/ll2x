#pragma once

#include <list>
#include <map>
#include <memory>
#include <optional>
#include <string>

#include "allocator/Allocator.h"
#include "compiler/BasicBlock.h"
#include "compiler/CFG.h"
#include "compiler/Interval.h"
#include "compiler/StackLocation.h"
#include "compiler/Variable.h"
#include "graph/DJGraph.h"
#include "graph/DTree.h"
#include "instruction/Mov.h"
#include "instruction/Shl.h"
#include "instruction/Xor.h"
#include "parser/FunctionArgs.h"

namespace LL2X {
	class ASTNode;
	class ColoringAllocator;
	struct FunctionArgs;
	class Program;
	struct Clobber;
	struct Unclobber;
	struct Operand;

	using InstructionPtr = std::shared_ptr<Instruction>;

	enum class CallingConvention {Reg6};

	/**
	 * Represents a function and contains code for converting functions from LLVM's intermediate representation into
	 * x86_64 assembly.
	 */
	class Function {
		public:
			/** Complex functions have multiple instructions.
			 *  Simple functions return the only argument and do nothing else.
			 *  Useless functions return void and do nothing else.
			 *  Constant functions return a constant value and do nothing else. */
			enum class Type {Complex, Simple, Useless, Constant};

		private:
			/** A pointer to an AST node that contains data about the function's arguments. */
			std::shared_ptr<FunctionArgs> argumentsNode = nullptr;

			/** Contains the AST node this object was constructed from. */
			const ASTNode *astnode;

			int initialStackSize = 0;

			/** Maps variables to their stack locations. */
			std::map<VariablePtr, StackLocation *> variableLocations;

			std::unordered_map<unsigned char, VariablePtr> assemblerVariables;

			void computeLivenessUAM();

			/** If a variable is defined in one block and used only in that block, mark it as not live anywhere. */
			void hackLiveness();

			bool isLiveInUsingMergeSet(const Node::Map &merges, Node *block, VariablePtr var);
			bool isLiveOutUsingMergeSet(const Node::Map &merges, Node *block, VariablePtr var);

			/** Computes liveness using merge sets. Seems to be broken? */
			void computeLivenessMS();

			/** Computes liveness using a traditional, non-SSA method. Broken. Do not use. */
			void computeLivenessTraditional();

			void upAndMark(BasicBlockPtr, VariablePtr);

			std::unordered_set<std::shared_ptr<BasicBlock>> getLive(std::shared_ptr<Variable>,
				std::function<std::unordered_set<std::shared_ptr<Variable>> &(const std::shared_ptr<BasicBlock> &)>)
				const;

		public:
			Program &parent;

			Type analyzedType = Type::Complex;

			/** A pointer to a list of all function arguments. */
			std::vector<FunctionArgument> *arguments = nullptr;

			/** A pointer to an interned string containing the name of the function. */
			const std::string *name = nullptr;

			const std::string *section = nullptr;

			/** The type of the returned value. */
			TypePtr returnType;

			/** A list of all basic blocks in the order they appear. */
			std::list<BasicBlockPtr> blocks;

			/** A list of all instructions in the order they appear in the source code. */
			std::list<InstructionPtr> linearInstructions;

			/** Maps numeric labels to variables. This is the main storage for the function's variables. */
			std::map<Variable::ID, VariablePtr> variableStore;

			/** A map of variables that have been removed but are likely to be still referenced somewhere, or that
			 *  aren't in variableStore but need to be processed by hackVariables. */
			std::map<Variable::ID, VariablePtr> extraVariables;

			std::unordered_set<Variable::ID> spilledVariables;

			/** A list of physical registers that were pushed to the stack in the prologue. Filled in by
			 *  InsertPrologue. */
			std::list<int> savedRegisters;

			/** Maps offsets to stack location information. */
			std::map<int, StackLocation> stack;

			/** Maps interned strings representing labels to their corresponding basic blocks. This is the main storage
			 *  for the function's basic blocks. */
			std::map<const std::string *, BasicBlockPtr> bbMap;

			/** Maps basic blocks to their corresponding CFG nodes. */
			std::unordered_map<const BasicBlock *, Node *> bbNodeMap;

			/** A set of the labels of all the function's basic blocks. */
			std::unordered_set<const std::string *> bbLabels;

			/** MovePhi can insert blocks between a pair of blocks. This maps those pairs to the created blocks so that
			 *  extra blocks won't be created. */
			std::map<std::pair<const std::string *, const std::string *>, BasicBlockPtr> movePhiBlocks;

			/** Used by passes to indicate which instructions they produced so that later passes can pick up where they
			 *  left off after other things have occurred. For example, SetupCalls uses this to record the moves from
			 *  result registers into variables in case the variable is larger than one physical register and the move
			 *  needs to be split up after register allocation. */
			std::unordered_map<std::string, std::unordered_set<InstructionPtr>> categories;

			/** Stores stack locations for register clobbering. */
			std::unordered_map<int, const StackLocation *> clobbers;

			/** Stores stack locations for saved registers in the prologue and epilogue. */
			std::unordered_map<int, const StackLocation *> calleeSaved;

			/** The highest number of bytes pushed to the stack as part of a function call. */
			int maxPushedForCalls = 0;

			/** The control-flow graph computed by makeCFG. */
			CFG cfg;

			/** The dominator tree computed from the control-flow graph. */
			std::optional<DTree> dTree;

			/** The dominator tree computed from the control-flow graph with J-edges included. */
			std::optional<DJGraph> djGraph;

			/** The number of random walks that have been performed on the control flow graph. */
			int walkCount = 0;

			/** The number of bytes reserved on the stack for variables and spills. */
			int stackSize = 0;

			/** The number of bytes reserved on the stack for spills. */
			int spillSize = 0;

			/** The number of bytes pushed to the stack when InsertPrologue saves registers, including $fp and $sp. */
			int initialPushedBytes = -1;

			/** Whether all blocks have been minimized to contain exactly one instruction each. */
			bool blocksAreMinimized = false;

			int debugIndex = -1;
			int initialDebugIndex = -1;

			std::unique_ptr<ColoringAllocator> allocator;

			bool initialDone = false, allocationDone = false, finalDone = false;

			Allocator::Result lastAllocationResult;

			Function(const Function &) = delete;
			Function(Function &&) = delete;
			Function(Program &, const ASTNode &);

			Allocator::Result attemptAllocation();

			/** Analyzes the function's type. */
			Type analyze(ValuePtr *value_out = nullptr, long *simple_index_out = nullptr);

			/** Scans through the function AST for block headers and populates the list of BasicBlocks accordingly. */
			void extractBlocks();

			/** Attempts to find a basic block with a given label. The label is allowed to start with a percent sign. */
			BasicBlockPtr getBlock(const std::string *label, bool can_throw = true) const;

			/** Copies use/definition information from the BasicBlocks into the Variables. */
			void extractVariables(bool reset = false);

			/** Recreates linearInstructions from each BasicBlock's vector of instructions and renumbers the
			 *  instructions. */
			void relinearize();

			/** Returns a label that hasn't yet been used for a basic block or variable. */
			Variable::ID newLabel() const;

			/** Produces a new variable with an as yet unused label. */
			VariablePtr newVariable(TypePtr = nullptr, BasicBlockPtr = nullptr);

			/** Tries to spill a variable. Returns true if any instructions were inserted. */
			bool spill(VariablePtr, bool doDebug = false);

			void markSpilled(VariablePtr);

			bool isSpilled(VariablePtr) const;

			bool canSpill(VariablePtr);

			bool isArgument(Variable::ID) const;

			/** Returns the first instruction in the function that isn't a label or a comment. */
			InstructionPtr firstInstruction(bool includeComments = false);

			/** Returns a pointer to the instruction before a given instruction. */
			InstructionPtr before(InstructionPtr);

			/** Returns a pointer to the instruction following a given instruction. */
			InstructionPtr after(InstructionPtr);

			/** Returns a pointer to the basic block following a given basic block. */
			BasicBlockPtr after(BasicBlockPtr);

			/** Inserts one instruction after another. Returns the inserted instruction. */
			InstructionPtr insertAfter(InstructionPtr base,
				InstructionPtr new_instruction, bool reindex = true);

			/** Inserts one instruction before another. Returns the inserted instruction. */
			InstructionPtr insertBefore(InstructionPtr base,
				InstructionPtr new_instruction, bool reindex = true, bool linear_warn = true,
				bool *should_relinearize_out = nullptr);

			/** Inserts one instruction before another and adds a comment before the inserted instruction.
			 *  Returns the inserted instruction. */
			InstructionPtr insertBefore(InstructionPtr base,
				InstructionPtr new_instruction, const std::string &, bool reindex = true);

			/** Inserts one instruction before another and adds a comment before the inserted instruction.
			 *  Returns the inserted instruction. */
			InstructionPtr insertBefore(InstructionPtr base,
				InstructionPtr new_instruction, const char *, bool reindex = true);

			/** Inserts a comment before an instruction. */
			InstructionPtr comment(InstructionPtr, const std::string &,
				bool reindex = true);

			/** Removes in a given block a branch instruction that redundantly jumps to the immediately following block
			 *  if such a branch instruction exists. */
			void removeUselessBranch(BasicBlockPtr);

			/** Reassigns indices to all instructions. */
			void reindexInstructions();

			/** Reassigns indices to all basic blocks. */
			void reindexBlocks();

			/** Splits a basic block after a given instruction. */
			BasicBlockPtr splitBlock(BasicBlockPtr, InstructionPtr);

			/** Creates a precolored variable corresponding to any register. */
			VariablePtr makePrecoloredVariable(unsigned char, BasicBlockPtr);

			/** Creates a precolored variable corresponding to a given $mx (assembler-reserved) register. */
			VariablePtr makeAssemblerVariable(unsigned char, BasicBlockPtr);

			/** Returns a given basic block's CFG node. */
			Node & operator[](const BasicBlock &) const;

			/** Returns the number of arguments the function takes. */
			int getArity() const;

			/** Returns whether the function is variadic (i.e., whether it takes a variable number of arguments). */
			bool isVariadic() const;

			/** Transforms a string like "%64" into "__functionname_label64". */
			std::string transformLabel(const std::string &) const;

			/** Sets the pvar names in all instructions to those of the connected variables. */
			void updateInstructionNodes();

			/** Removes the register assignments for all variables. If its argument is true, it won't reset variables
			 *  that have been assigned special registers. */
			void resetRegisters(bool respectful);

			/** Performs the first set of compiler passes on the function before register allocation. */
			void initialCompile();

			/** Performs register allocation, unsurprisingly. */
			void allocateRegisters();

			/** Performs the last set of compiler passes on the function after register allocation. */
			void finalCompile();

			/** Performs a full set of compiler passes on the function. */
			void compile();

			/** Assigns special argument registers to variables in a list of intervals as appropriate. */
			void precolorArguments(std::list<Interval> &);

			/** Assigns special argument registers to all variables as appropriate. */
			void precolorArguments();

			/** Assigns or looks up a stack location for a given variable. The width parameter is in bytes. */
			StackLocation & addToStack(VariablePtr, StackLocation::Purpose, int width = -1);

			/** Removes an instruction from the function. */
			void remove(InstructionPtr);

			/** Removes a basic block from the function. Any function that calls this should also be sure to relinearize
			 *  instructions after calling this. */
			void remove(BasicBlockPtr);

			/** Replaces the first instruction with the second. Not safe to call while iterating. */
			void replace(InstructionPtr, InstructionPtr);

			/** Loads a 64-bit value into a new variable before an instruction by means of set and lui. */
			VariablePtr get64(InstructionPtr before, unsigned long, bool reindex = false);

			/** Merges two basic blocks. The after-block is absorbed into the before-block. The caller of this function
			 *  is responsible for recreating the CFG and reindexing all blocks. */
			void mergeBlocks(BasicBlockPtr before, BasicBlockPtr after);

			/** Returns the variable with a given label. If the variable doesn't exist, an exception will be thrown,
			 *  unless the second argument is true and the variable is one of the argument variables, in which case
			 *  it'll be added to the variable store and returned. */
			VariablePtr getVariable(Variable::ID, bool add_arguments = true);

			/** Returns the variable with a given label. If the variable doesn't exist, an exception will be thrown,
			 *  unless the second argument is true and the variable is one of the argument variables, in which case
			 *  it'll be added to the variable store and returned. */
			VariablePtr getVariable(const std::string &label, bool add_arguments);

			/** Returns the variable with a given label. If the variable doesn't exist, an exception will be thrown. */
			VariablePtr getVariable(const std::string &);

			/** Returns the variable with a given label. If the variable doesn't exist, it will be created with the
			 *  given type and defining block options. */
			VariablePtr getVariable(Variable::ID, const TypePtr, BasicBlockPtr = nullptr);

			/** Returns the variable with a given label. If the variable doesn't exist, it will be created with the
			 *  given type and defining block options. */
			VariablePtr getVariable(const std::string &, const TypePtr, BasicBlockPtr = nullptr);

			/** Returns a pointer to the entry block. */
			BasicBlockPtr getEntry();

			/** Returns the calling convention of the function. It's chosen based on the number of arguments and whether
			 *  the function is variadic. */
			CallingConvention getCallingConvention() const;

			/** Performs liveness analysis on all variables. Requires ϕ-instructions to still be present. */
			void computeLiveness();

			/** Resets the liveness data for all variables. */
			void resetLiveness();

			/** Returns a set of all blocks where a given variable or any of its aliases are live-in. */
			std::unordered_set<std::shared_ptr<BasicBlock>> getLiveIn(std::shared_ptr<Variable>) const;

			/** Returns a set of all blocks where a given variable or any of its aliases are live-out. */
			std::unordered_set<std::shared_ptr<BasicBlock>> getLiveOut(std::shared_ptr<Variable>) const;

			/** Returns the compiled assembly code. */
			std::string toString();

			/** Returns the function header as a formatted string. */
			std::string headerString() const;

			/** Prints debug information about the function. */
			void debug(std::ostream & = std::cerr);

			/** Prints debug information about the function. */
			void debug(bool doBlocks, bool linear, bool vars, bool blockLiveness, bool readWritten, bool varLiveness,
			           bool render, bool estimations, bool aliases, bool stack, std::ostream & = std::cerr);

			/** Prints debug information about the allocated stack locations. */
			void debugStack(std::ostream & = std::cerr) const;

			bool isNaked() const;

			/** Finds a spill stack location for a variable. */
			StackLocation & getSpill(VariablePtr, bool create = false, bool *created = nullptr);

			/** Computes a getelementptr value, places the result in a variable before the given instruction and returns
			 *  the variable as a value. */
			std::shared_ptr<LocalValue> replaceGetelementptrValue(std::shared_ptr<GetelementptrValue>, InstructionPtr);

			VariablePtr makeVariable(ValuePtr, InstructionPtr, TypePtr = nullptr);

			/** Through questionable methods, this function ensures that all variables with the same numeric ID share
			 *  the same register assignment. */
			void hackVariables();

			Graph makeDependencyGraph() const;

			void makeInitialDebugIndex();

			std::shared_ptr<Clobber> clobber(const InstructionPtr &, int reg);

			std::shared_ptr<Unclobber> unclobber(const InstructionPtr &, const std::shared_ptr<Clobber> &);

			/** Replaces one operand with another throughout the function. */
			size_t replaceOperand(const std::shared_ptr<Operand> &, const std::shared_ptr<Operand> &);

			/** Replaces one operand with a similar other one throughout the function. */
			size_t replaceSimilarOperand(const std::shared_ptr<Operand> &, const std::shared_ptr<Operand> &);

			void multiply(const InstructionPtr &anchor, const OperandPtr &, int64_t, bool reindex = true,
			              int debug = -1);

			void multiply(const InstructionPtr &anchor, const OperandPtr &, uint64_t, bool reindex = true,
			              int debug = -1);

			VariablePtr pcRax;
			VariablePtr pcRdx;
			VariablePtr pcRsp;
			VariablePtr pcRbp;
			VariablePtr pcRip;

			template <typename Ins, bool Reindex = true, typename... Args>
			std::shared_ptr<Ins> insertBefore(const InstructionPtr &anchor, Args &&...args) {
				auto out = std::make_shared<Ins>(std::forward<Args>(args)...);
				insertBefore(anchor, out, Reindex)->setDebug(*anchor, true);
				return out;
			}

			template <typename Ins, bool Reindex = true, typename... Args>
			std::shared_ptr<Ins> insertAfter(const InstructionPtr &anchor, Args &&...args) {
				auto out = std::make_shared<Ins>(std::forward<Args>(args)...);
				insertAfter(anchor, out, Reindex)->setDebug(*anchor, true);
				return out;
			}

		private:

			size_t precoloredCount = 0;

			template <typename I, typename N>
			void multiply_impl(const InstructionPtr &anchor, const OperandPtr &operand, N value, bool reindex,
			                   int debug) {
				if (value == 0) {
					auto xor_ = std::make_shared<Xor>(operand, operand);
					insertBefore(anchor, xor_, reindex);
					if (debug != -1)
						xor_->setDebug(debug, false);
					xor_->extract();
					return;
				}

				if (value == 1)
					return;

				if (Util::isPowerOfTwo(value)) {
					auto shl = std::make_shared<Shl>(Op4(std::bit_width(static_cast<uint64_t>(value)) - 1),
						operand);
					insertBefore(anchor, shl, reindex);
					if (debug != -1)
						shl->setDebug(debug, false);
					shl->extract();
				} else {
					auto rax_clobber = clobber(anchor, x86_64::rax);
					auto rdx_clobber = clobber(anchor, x86_64::rdx);
					auto rax = OpX(operand->bitWidth, makePrecoloredVariable(x86_64::rax, anchor->parent.lock()));
					auto mov_in = std::make_shared<Mov>(operand, rax);
					auto mul = std::make_shared<I>(Op4(value));
					auto mov_out = std::make_shared<Mov>(rax, operand);
					insertBefore(anchor, mov_in, reindex);
					insertBefore(anchor, mul, reindex);
					insertBefore(anchor, mov_out, reindex);
					if (debug != -1) {
						mov_in->setDebug(debug, false);
						mul->setDebug(debug, false);
						mov_out->setDebug(debug, false);
					}
					mov_in->extract();
					mul->extract();
					mov_out->extract();
					unclobber(anchor, rdx_clobber);
					unclobber(anchor, rax_clobber);
				}
			}
	};
}
