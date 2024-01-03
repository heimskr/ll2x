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
#include "instruction/Sar.h"
#include "instruction/Shl.h"
#include "instruction/Xor.h"
#include "parser/FunctionArgs.h"


namespace LL2X {
	namespace {
		constexpr bool UNSAFE_IDIV_APPROXIMATION = false;
	}

	class ASTNode;
	class ColoringAllocator;
	class Program;
	struct Clobber;
	struct Div;
	struct FunctionArgs;
	struct Idiv;
	struct Imul;
	struct Mul;
	struct Operand;
	struct Unclobber;

	template <typename T>
	concept Divider = std::is_same_v<T, Div> || std::is_same_v<T, Idiv>;

	template <typename T>
	concept Multiplier = std::is_same_v<T, Mul> || std::is_same_v<T, Imul>;

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

			bool isLiveInUsingMergeSet(const Node::NMap &merges, Node *block, const VariablePtr &var);
			bool isLiveOutUsingMergeSet(const Node::NMap &merges, Node *block, const VariablePtr &var);

			/** Computes liveness using merge sets. Seems to be broken? */
			void computeLivenessMS();

			/** Computes liveness using a traditional, non-SSA method. Broken. Do not use. */
			void computeLivenessTraditional();

			void upAndMark(const BasicBlockPtr &, const VariablePtr &);

			std::unordered_set<std::shared_ptr<BasicBlock>> getLive(const VariablePtr &,
				const std::function<std::unordered_set<std::shared_ptr<Variable>> &
				(const std::shared_ptr<BasicBlock> &)> &) const;

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
			std::map<VariableID, VariablePtr> variableStore;

			/** A map of variables that have been removed but are likely to be still referenced somewhere, or that
			 *  aren't in variableStore but need to be processed by hackVariables. */
			std::map<VariableID, VariablePtr> extraVariables;

			std::unordered_set<VariableID> spilledVariables;

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
			size_t walkCount = 0;

			/** The number of bytes reserved on the stack for variables and spills. */
			int64_t stackSize = 0;

			/** The number of bytes reserved on the stack for spills. */
			int64_t spillSize = 0;

			/** Whether all blocks have been minimized to contain exactly one instruction each. */
			bool blocksAreMinimized = false;

			int debugIndex = -1;
			int initialDebugIndex = -1;

			std::unique_ptr<ColoringAllocator> allocator;

			bool initialDone = false, allocationDone = false, finalDone = false;

			Allocator::Result lastAllocationResult = Allocator::Result::Invalid;

			Function(const Function &) = delete;
			Function(Function &&) = delete;
			Function(Program &, const ASTNode &);

			Allocator::Result attemptAllocation();

			/** Analyzes the function's type. */
			Type analyze(ValuePtr *value_out = nullptr, int64_t *simple_index_out = nullptr);

			/** Scans through the function AST for block headers and populates the list of BasicBlocks accordingly. */
			void extractBlocks();

			/** Attempts to find a basic block with a given label. The label is allowed to start with a percent sign. */
			BasicBlockPtr getBlock(const std::string *label, bool can_throw = true) const;

			/** Copies use/definition information from the BasicBlocks into the Variables. */
			void extractVariables(bool reset = false);

			/** Extracts read/written information from all instructions. */
			void extractInstructions(bool force = false);

			/** Recreates linearInstructions from each BasicBlock's vector of instructions and renumbers the
			 *  instructions. */
			void relinearize();

			/** Returns a label that hasn't yet been used for a basic block or variable. */
			VariableID newLabel() const;

			/** Produces a new variable with an as yet unused label. */
			VariablePtr newVariable(const TypePtr & = nullptr, const BasicBlockPtr & = nullptr);

			/** Tries to spill a variable. Returns true if any instructions were inserted. */
			bool spill(const VariablePtr &, bool do_debug = false);

			void markSpilled(const VariablePtr &);

			bool isSpilled(const VariablePtr &) const;

			bool canSpill(const VariablePtr &);

			bool isArgument(VariableID) const;

			/** Returns the first instruction in the function that isn't a label or a comment. */
			InstructionPtr firstInstruction(bool includeComments = false);

			/** Returns a pointer to the instruction before a given instruction. */
			InstructionPtr before(const InstructionPtr &);

			/** Returns a pointer to the instruction following a given instruction. */
			InstructionPtr after(const InstructionPtr &);

			/** Returns a pointer to the basic block following a given basic block. */
			BasicBlockPtr after(const BasicBlockPtr &);

			/** Inserts one instruction after another. Returns the inserted instruction. */
			InstructionPtr insertAfter(const InstructionPtr &base, const InstructionPtr &new_instruction,
			                           bool reindex = true);

			/** Inserts one instruction before another. Returns the inserted instruction. */
			InstructionPtr insertBefore(const InstructionPtr &base, const InstructionPtr &new_instruction,
			                            bool reindex = true, bool linear_warn = true,
			                            bool *should_relinearize_out = nullptr);

			/** Inserts one instruction before another and adds a comment before the inserted instruction.
			 *  Returns the inserted instruction. */
			InstructionPtr insertBefore(const InstructionPtr &base, const InstructionPtr &new_instruction,
			                            const std::string &, bool reindex = true);

			/** Inserts one instruction before another and adds a comment before the inserted instruction.
			 *  Returns the inserted instruction. */
			InstructionPtr insertBefore(const InstructionPtr &base, const InstructionPtr &new_instruction, const char *,
			                            bool reindex = true);

			/** Inserts a comment before an instruction. */
			InstructionPtr comment(const InstructionPtr &, const std::string &, bool reindex = true);

			/** Removes in a given block a branch instruction that redundantly jumps to the immediately following block
			 *  if such a branch instruction exists. */
			void removeUselessBranch(const BasicBlockPtr &);

			/** Reassigns indices to all instructions. */
			void reindexInstructions();

			/** Reassigns indices to all basic blocks. */
			void reindexBlocks();

			/** Splits a basic block after a given instruction. */
			BasicBlockPtr splitBlock(const BasicBlockPtr &, const InstructionPtr &);

			/** Creates a precolored variable corresponding to any register. */
			VariablePtr makePrecoloredVariable(unsigned char, const BasicBlockPtr &);

			/** Creates a precolored variable corresponding to a given $mx (assembler-reserved) register. */
			VariablePtr makeAssemblerVariable(unsigned char, const BasicBlockPtr &);

			/** Returns a given basic block's CFG node. */
			Node & operator[](const BasicBlock &) const;

			/** Returns the number of arguments the function takes. */
			size_t getArity() const;

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

			/** Force-extracts all instructions and blocks, resets liveness and computes liveness. */
			void forceLiveness();

			/** Assigns special argument registers to variables in a list of intervals as appropriate. */
			void precolorArguments(std::list<Interval> &);

			/** Assigns special argument registers to all variables as appropriate. */
			void precolorArguments();

			/** Assigns or looks up a stack location for a given variable. The width and align parameters are in
			 *  bytes. */
			StackLocation & addToStack(const VariablePtr &, StackLocation::Purpose, int64_t width = -1,
			                           int64_t align = 1);

			/** Removes an instruction from the function. */
			void remove(const InstructionPtr &);

			/** Removes a basic block from the function. Any function that calls this should also be sure to relinearize
			 *  instructions after calling this. */
			void remove(const BasicBlockPtr &);

			/** Replaces the first instruction with the second. Not safe to call while iterating. */
			void replace(const InstructionPtr &, const InstructionPtr &);

			/** Loads a 64-bit value into a new variable before an instruction by means of set and lui. */
			VariablePtr get64(const InstructionPtr &before, uint64_t, bool reindex = false);

			/** Merges two basic blocks. The after-block is absorbed into the before-block. The caller of this function
			 *  is responsible for recreating the CFG and reindexing all blocks. */
			void mergeBlocks(const BasicBlockPtr &before, const BasicBlockPtr &after);

			/** Returns the variable with a given label. If the variable doesn't exist, an exception will be thrown,
			 *  unless the second argument is true and the variable is one of the argument variables, in which case
			 *  it'll be added to the variable store and returned. */
			VariablePtr getVariable(VariableID, bool add_arguments = true);

			/** Returns the variable with a given label. If the variable doesn't exist, an exception will be thrown,
			 *  unless the second argument is true and the variable is one of the argument variables, in which case
			 *  it'll be added to the variable store and returned. */
			VariablePtr getVariable(const std::string &label, bool add_arguments);

			/** Returns the variable with a given label. If the variable doesn't exist, an exception will be thrown. */
			VariablePtr getVariable(const std::string &);

			/** Returns the variable with a given label. If the variable doesn't exist, it will be created with the
			 *  given type and defining block options. */
			VariablePtr getVariable(VariableID, const TypePtr &, const BasicBlockPtr & = nullptr);

			/** Returns the variable with a given label. If the variable doesn't exist, it will be created with the
			 *  given type and defining block options. */
			VariablePtr getVariable(const std::string &, const TypePtr &, const BasicBlockPtr & = nullptr);

			/** Returns a pointer to the entry block. */
			BasicBlockPtr getEntry();

			/** Performs liveness analysis on all variables. Requires ϕ-instructions to still be present. */
			void computeLiveness();

			/** Resets the liveness data for all variables. */
			void resetLiveness();

			/** Returns a set of all blocks where a given variable or any of its aliases are live-in. */
			std::unordered_set<std::shared_ptr<BasicBlock>> getLiveIn(const VariablePtr &) const;

			/** Returns a set of all blocks where a given variable or any of its aliases are live-out. */
			std::unordered_set<std::shared_ptr<BasicBlock>> getLiveOut(const VariablePtr &) const;

			/** Returns the compiled assembly code. */
			std::string toString();

			/** Returns the function header as a formatted string. */
			std::string headerString() const;

			/** Prints debug information about the function. */
			void debug(std::ostream &);

			void debug() { debug(std::cerr); }

			/** Prints debug information about the function. */
			void debug(bool doBlocks, bool linear, bool vars, bool blockLiveness, bool readWritten, bool varLiveness,
			           bool render, bool estimations, bool aliases, bool stack, std::ostream & = std::cerr);

			/** Prints debug information about the allocated stack locations. */
			void debugStack(std::ostream & = std::cerr) const;

			bool isNaked() const;

			/** Finds a spill stack location for a variable. */
			StackLocation & getSpill(const VariablePtr &, bool create = false, bool *created = nullptr);

			/** Computes a getelementptr value, places the result in a variable before the given instruction and returns
			 *  the variable as a value. */
			std::shared_ptr<LocalValue> replaceGetelementptrValue(const std::shared_ptr<GetelementptrValue> &,
			                                                      const InstructionPtr &);

			VariablePtr makeVariable(const ValuePtr &, const InstructionPtr &, const TypePtr & = nullptr);

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
			              int64_t debug = -1);

			void multiply(const InstructionPtr &anchor, const OperandPtr &, uint64_t, bool reindex = true,
			              int64_t debug = -1);

			void divide(const InstructionPtr &anchor, const OperandPtr &, int64_t, bool reindex = true,
			            int64_t debug = -1);

			void divide(const InstructionPtr &anchor, const OperandPtr &, uint64_t, bool reindex = true,
			            int64_t debug = -1);

			void remainder(const InstructionPtr &anchor, const OperandPtr &, int64_t, bool reindex = true,
			               int64_t debug = -1);

			void remainder(const InstructionPtr &anchor, const OperandPtr &, uint64_t, bool reindex = true,
			               int64_t debug = -1);

			void divOrRem(const InstructionPtr &anchor, const OperandPtr &, int64_t, bool is_rem, bool reindex = true,
			               int64_t debug = -1);

			void divOrRem(const InstructionPtr &anchor, const OperandPtr &, uint64_t, bool is_rem, bool reindex = true,
			               int64_t debug = -1);

			/** Inserts an lea instruction if the source is a global variable. Inserts a mov instruction otherwise. */
			InstructionPtr insertLeaOrMov(const InstructionPtr &anchor, const OperandPtr &source,
			                              const OperandPtr &destination, bool reindex = true);

			/** Returns whether there exists a path from one basic block to another in the CFG. */
			bool canReach(const std::shared_ptr<BasicBlock> &from, const std::shared_ptr<BasicBlock> &to) const;

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

			template <typename Sh, bool Reindex = true>
			std::shared_ptr<Sh> insertShiftBefore(const InstructionPtr &anchor, OperandPtr shift_by,
			                                         const OperandPtr &source, const OperandPtr &destination,
			                                         int width = -1) {
				if (width == -1)
					width = destination->bitWidth;

				if (shift_by->isRegister()) {
					VariablePtr cl = makePrecoloredVariable(x86_64::rcx, anchor->parent.lock());
					cl->setType(IntType::make(8));
					OperandPtr cl_operand = Op1(cl);
					cl_operand->sizeForced = true;
					insertBefore<Mov, false>(anchor, shift_by, cl_operand, 8);
					shift_by = cl_operand;
				}

				if (*source != *destination)
					insertBefore<Mov, false>(anchor, source, destination, width);

				return insertBefore<Sh, Reindex>(anchor, shift_by, destination, width);
			}

			template <typename Sh, bool Reindex = true>
			std::shared_ptr<Sh> insertShiftBefore(const InstructionPtr &anchor, const OperandPtr &shift_by,
			                                         const OperandPtr &destination, int width = -1) {
				return insertShiftBefore<Sh>(anchor, shift_by, destination, destination, width);
			}

		private:
			size_t precoloredCount = 0;

			template <Multiplier I, typename N>
			void multiply_impl(const InstructionPtr &anchor, const OperandPtr &operand, N value, bool reindex,
			                   int debug) {
				if (value == 0) {
					auto xor_ = std::make_shared<Xor>(operand, operand);
					insertBefore(anchor, xor_, reindex);
					if (debug != -1)
						xor_->setDebug(debug, false);
					xor_->extract(false);
					return;
				}

				if (value == 1)
					return;

				if (Util::isPowerOfTwo(value)) {
					auto shl = insertShiftBefore<Shl>(anchor, Op4(std::bit_width(static_cast<uint64_t>(value)) - 1),
						operand);
					if (debug != -1)
						shl->setDebug(debug, false);
					shl->extract(false);
				} else {
					auto rax_clobber = clobber(anchor, x86_64::rax);
					auto rdx_clobber = clobber(anchor, x86_64::rdx);
					auto rax = OpX(operand->bitWidth, makePrecoloredVariable(x86_64::rax, anchor->parent.lock()));

					auto mov_in = std::make_shared<Mov>(operand, rax);

					auto mul_var = newVariable(IntType::make(operand->bitWidth));
					auto mul_operand = OpV(mul_var);
					auto mov_mulvar = std::make_shared<Mov>(Op4(value), mul_operand);
					auto mul = std::make_shared<I>(mul_operand);

					auto mov_out = std::make_shared<Mov>(rax, operand);

					insertBefore(anchor, mov_in, reindex);
					insertBefore(anchor, mov_mulvar, reindex);
					insertBefore(anchor, mul, reindex);
					unclobber(anchor, rdx_clobber);
					unclobber(anchor, rax_clobber);
					insertBefore(anchor, mov_out, reindex);
					if (debug != -1) {
						mov_in->setDebug(debug, false);
						mul->setDebug(debug, false);
						mov_out->setDebug(debug, false);
					}
					mov_in->extract(false);
					mov_mulvar->extract(false);
					mul->extract(false);
					mov_out->extract(false);
				}
			}

			// TODO: consolidate with multiply_impl a bit
			template <Divider I, typename N>
			void divide_impl(const InstructionPtr &anchor, const OperandPtr &operand, N value, bool is_rem,
			                 bool reindex, int debug) {
				if (value == 1)
					return;

				// Approximating idiv with sar is unsafe because sar rounds towards zero, while idiv rounds towards negative infinity.
				if ((UNSAFE_IDIV_APPROXIMATION || !std::is_same_v<I, Idiv>) && Util::isPowerOfTwo(value)) {
					auto sar = insertShiftBefore<Sar>(anchor, Op4(std::bit_width(static_cast<uint64_t>(value)) - 1),
						operand);
					if (debug != -1)
						sar->setDebug(debug, false);
					sar->extract(false);
					return;
				}

				auto rax_clobber = clobber(anchor, x86_64::rax);
				auto rdx_clobber = clobber(anchor, x86_64::rdx);

				VariablePtr rax_var = makePrecoloredVariable(x86_64::rax, anchor->parent.lock());
				VariablePtr rdx_var = makePrecoloredVariable(x86_64::rdx, anchor->parent.lock());

				OperandPtr rax = OpX(operand->bitWidth, rax_var);
				OperandPtr rdx = OpX(operand->bitWidth, rdx_var);

				auto mov_in = std::make_shared<Mov>(operand, rax);
				auto clear_rdx = std::make_shared<Mov>(Op4(0), Op8(rdx_var));

				VariablePtr div_var = newVariable(IntType::make(operand->bitWidth));
				OperandPtr div_operand = OpV(div_var);
				auto mov_divvar = std::make_shared<Mov>(Op4(value), div_operand);
				auto div = std::make_shared<I>(div_operand);

				auto mov_out = std::make_shared<Mov>(is_rem? rdx : rax, operand);

				insertBefore(anchor, clear_rdx, false);
				insertBefore(anchor, mov_in, false);
				insertBefore(anchor, mov_divvar, false);
				insertBefore(anchor, div, false);
				unclobber(anchor, rdx_clobber);
				unclobber(anchor, rax_clobber);
				insertBefore(anchor, mov_out, reindex);
				if (debug != -1) {
					mov_in->setDebug(debug, false);
					div->setDebug(debug, false);
					mov_out->setDebug(debug, false);
				}
				mov_in->extract(false);
				mov_divvar->extract(false);
				div->extract(false);
				mov_out->extract(false);
			}
	};
}
