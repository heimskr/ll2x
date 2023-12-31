#include <algorithm>
#include <climits>
#include <fstream>
#include <optional>

#include "allocator/ColoringAllocator.h"
#include "compiler/Function.h"
#include "compiler/Instruction.h"
#include "compiler/Variable.h"
#include "compiler/x86_64.h"
#include "exception/NoChoiceError.h"
#include "graph/UncolorableError.h"
#include "instruction/HasPrecolored.h"
#include "pass/MakeCFG.h"
#include "pass/SplitBlocks.h"
#include "util/Timer.h"
#include "util/Util.h"

// #define DEBUG_COLORING
#define CONSTRUCT_BY_BLOCK
// #define SELECT_LOWEST_COST
#define SELECT_MOST_LIVE
// #define SELECT_CHAITIN

namespace LL2X {
	namespace {
		constexpr int DEBUG_COLORING = 1;
		constexpr int DEBUG_SELECTMOSTLIVE = 1;
	}

	ColoringAllocator::Result ColoringAllocator::attempt() {
		++attempts;
		if constexpr (DEBUG_COLORING > 0) {
			info() << "Allocating for \e[1m" << *function->name << "\e[22m.\n";
		}

		makeInterferenceGraph();

		try {
			interference.color(Graph::ColoringAlgorithm::Greedy, x86_64::rax, x86_64::r15);
		} catch (const UncolorableError &err) {
			if constexpr (DEBUG_COLORING > 0)
				error() << "Coloring failed.\n";
			int highest_degree = -1;

#ifdef SELECT_LOWEST_COST
			VariablePtr to_spill = selectLowestSpillCost();
			(void) highest_degree;
#elif defined(SELECT_CHAITIN)
			VariablePtr to_spill = selectChaitin();
			(void) highest_degree;
#elif defined(SELECT_MOST_LIVE)
			VariablePtr to_spill = selectMostLive();
			(void) highest_degree;
#else
			VariablePtr to_spill = selectHighestDegree(&highest_degree);
			if (highest_degree == -1)
				throw std::runtime_error("highest_degree is -1");
#endif

			if (!to_spill) {
				error() << "to_spill is null!\n";
				throw std::runtime_error("to_spill is null");
			}

			if constexpr (DEBUG_COLORING > 0) {
				info() << "Going to spill " << *to_spill;
#if !defined(SELECT_LOWEST_COST) && !defined(SELECT_MOST_LIVE) && !defined(SELECT_CHAITIN)
				std::cerr << " (degree: " << highest_degree << ")";
#endif
				std::cerr << ". Likely name: " << function->variableStore.size() << "\n";
				info() << "Can spill: " << std::boolalpha << function->canSpill(to_spill) << "\n";
			}

			triedIDs.insert(to_spill->originalID);
			triedLabels.insert(*to_spill->originalID);

			if constexpr (DEBUG_COLORING > 1)
				info() << "Variable before climbing parents: " << *to_spill << " (OID: " << to_spill->originalID <<
					")\n";

			recentSpillAttempts.insert(to_spill);

			while (auto parent = to_spill->getParent()) {
				to_spill = parent;
				recentSpillAttempts.insert(to_spill);
			}

			if constexpr (DEBUG_COLORING > 1)
				info() << "Variable after climbing parents: " << *to_spill << " (OID: " << to_spill->originalID <<
					")\n";

			triedIDs.insert(to_spill->getID());
			triedLabels.insert(*to_spill->getID());

			if (function->spill(to_spill)) {
				if constexpr (DEBUG_COLORING > 0)
					std::cerr << "Spilled " << *to_spill << ". Variables: " << function->variableStore.size()
						<< ". Stack locations: " << function->stack.size() << "\n";

				lastSpill = to_spill;
				++spillCount;

				// int split = 0;
				// Passes::splitBlocks(*function);

				size_t split = Passes::splitBlocks(*function);

				if (0 < split) {
					if constexpr (DEBUG_COLORING > 0)
						std::cerr << split << " block" << (split == 1? " was" : "s were") << " split.\n";

					for (BasicBlockPtr &block: function->blocks)
						block->extract();

					Passes::makeCFG(*function);
					function->extractVariables(true);
					function->resetLiveness();
					function->computeLiveness();
				} else if constexpr (DEBUG_COLORING > 0) {
					std::cerr << "No blocks were split.\n";
				}

				recentSpillAttempts.clear();
				return Result::Spilled;
			} else if constexpr (DEBUG_COLORING > 0) {
				std::cerr << *to_spill << " wasn't spilled.\n";
			}

			return Result::NotSpilled;
		}

		if constexpr (DEBUG_COLORING > 0)
			info() << "Spilling process complete. There " << (spillCount == 1? "was " : "were ") << spillCount <<
				" spill" << (spillCount == 1? ".\n" : "s.\n");

		for (const auto &[id, node]: interference) {
			if (!node->data.has_value())
				continue;

			VariablePtr ptr = node->get<VariablePtr>();

			if constexpr (DEBUG_COLORING > 1) {
				std::cerr << "Variable " << ptr->ansiString() << " -> registers = ( ";
				for (const int color: node->colors)
					std::cerr << color << ' ';
				std::cerr << ") aliases =";
				for (const std::weak_ptr<Variable> &weak_alias: ptr->getAliases())
					if (VariablePtr alias = weak_alias.lock())
						std::cerr << ' ' << *alias;
				std::cerr << '\n';
			}

			if (ptr->getRegisters().empty()) {
				std::set<int> assigned;
				for (const int color: node->colors)
					assigned.insert(color);
				ptr->setRegisters(std::move(assigned));
			}
		}

		return Result::Success;
	}

	VariablePtr ColoringAllocator::selectHighestDegree(size_t *degree_out) const {
		const Node *highest_node = nullptr;
		size_t highest = SIZE_MAX;
		// std::cerr << "Avoid["; for (const std::string &s: triedLabels) std::cerr << " " << s; std::cerr << " ]\n";
		for (const Node *node: interference.nodes()) {
			const size_t degree = node->degree();
			// if (highest < degree && triedLabels.count(node->label()) == 0) {
			// if (highest < degree && function->canSpill(node->get<VariablePtr>())) {
			if (highest == SIZE_MAX || (highest < degree && !triedLabels.contains(node->label()) &&
					node->data.has_value() && function->canSpill(node->get<VariablePtr>()))) {
				highest_node = node;
				highest = degree;
			}
		}

		if (highest_node == nullptr)
			throw NoChoiceError("Couldn't find node with highest degree out of " +
				std::to_string(interference.nodes().size()) + " node(s)");

		std::vector<const Node *> all_highest;
		for (const Node *node: interference.nodes())
			if (node->degree() == static_cast<size_t>(highest))
				all_highest.push_back(node);

		if (degree_out != nullptr)
			*degree_out = highest;

		return highest_node->get<VariablePtr>();
	}

	VariablePtr ColoringAllocator::selectLowestSpillCost() const {
		VariablePtr ptr;
		int lowest = INT_MAX;
		for (const auto &[id, var]: function->variableStore) {
			if (var->allRegistersSpecial())
				continue;

			var->clearSpillCost();
			const auto cost = var->getSpillCost();

			if (cost != -1 && !triedIDs.contains(var->getID()) && cost < lowest && !var->isSimple()) {
				lowest = cost;
				ptr = var;
			}
		}

		if (!ptr) {
			function->debug();
			throw NoChoiceError("Couldn't select lowest spill cost variable");
		}

		return ptr;
	}

	VariablePtr ColoringAllocator::selectMostLive(size_t *liveness_out) const {
		Timer timer("SelectMostLive");
		VariablePtr ptr;
		size_t highest = SIZE_MAX;

		for (const auto *map: {&function->variableStore, &function->extraVariables}) {
			for (const auto &[id, var]: *map) {
				if (var->allRegistersSpecial()) {
					if (DEBUG_SELECTMOSTLIVE > 0)
						std::cerr << "Skipping " << var->ansiString() << ": all registers are special\n";
					continue;
				}

				if (!function->canSpill(var)) {
					if (DEBUG_SELECTMOSTLIVE > 0)
						std::cerr << "Skipping " << var->ansiString() << ": can't spill\n";
					continue;
				}

				if (recentSpillAttempts.contains(var)) {
					if (DEBUG_SELECTMOSTLIVE > 0)
						std::cerr << "Skipping " << var->ansiString() << ": already attempted recently\n";
					continue;
				}

				const size_t sum = function->getLiveIn(var).size() + function->getLiveOut(var).size();
				if (highest == SIZE_MAX || (highest < sum && !triedIDs.contains(var->originalID))) {
					highest = sum;
					ptr = var;
				}
			}
		}

		if (!ptr) {
			function->debug();
			throw std::runtime_error("Couldn't select variable with highest liveness in function " + *function->name);
		}

		if (liveness_out != nullptr)
			*liveness_out = highest;

		if (!function->canSpill(ptr))
			warn() << "Impossibility detected: can't spill " << *ptr << "\n";

		return ptr;
	}

	VariablePtr ColoringAllocator::selectChaitin() const {
		VariablePtr out;
		int64_t lowest = INT64_MAX;

		for (const Node *node: interference.nodes()) {
			if (!node->data.has_value())
				continue;

			VariablePtr var = node->get<VariablePtr>();

			if (var->allRegistersSpecial() || !function->canSpill(var))
				continue;

			var->clearSpillCost();
			const auto cost = var->getSpillCost();
			if (cost == Variable::SPILL_MAX)
				continue;

			const size_t degree = node->degree();
			const int64_t chaitin = static_cast<int64_t>(cost * 10000l / degree);
			if (chaitin < lowest) {
				lowest = chaitin;
				out = var;
			}
		}

		if (!out) {
			function->debug();
			throw NoChoiceError("Couldn't select a variable in ColoringAllocator::selectChaitin.");
		}

		return out;
	}

// #undef DEBUG_COLORING

	void ColoringAllocator::makeInterferenceGraph() {
		Timer timer("MakeInterferenceGraph");
		interference.clear();
		size_t links = 0;
		(void) links;

		for (const auto &[id, var]: function->variableStore) {
#ifdef DEBUG_COLORING
			std::cerr << "%" << *id << " / " << var->ansiString() << "; aliases:";
			for (Variable *alias: var->getAliases())
				std::cerr << ' ' << alias->ansiString();
			std::cerr << '\n';
#endif
			const std::string *parent_id = var->parentID();
			if (!interference.hasLabel(*parent_id)) { // Use only one variable from a set of aliases.
				Node &node = interference.addNode(*parent_id);
				node.data = var;
				node.colors = var->getRegisters();
#ifdef DEBUG_COLORING
				info() << *var << ": " << var->registersRequired() << " required.";
				if (var->type)
					std::cerr << " " << std::string(*var->type);
				std::cerr << "\n";
#endif
				node.colorsNeeded = var->registersRequired();
			}
		}

		std::vector<VariableID> labels;
		labels.reserve(function->variableStore.size());
		for (const auto &[id, var]: function->variableStore)
			labels.push_back(id);

#ifndef CONSTRUCT_BY_BLOCK
		// Maps a variable ID to a set of blocks in which the variable is live-in or live-out.
		std::map<VariableID, std::unordered_set<int>> live;

		for (const auto &[id, var]: function->variableStore) {
			if (!var->getRegisters().empty())
				continue;
#ifdef DEBUG_COLORING
			info() << "Variable " << *var << ":\n";
#endif
			for (const std::weak_ptr<BasicBlock> &bptr: var->definingBlocks) {
				live[var->getID()].insert(bptr.lock()->index);
#ifdef DEBUG_COLORING
				std::cerr << "  definer: " << *bptr.lock()->label << " (" << bptr.lock()->index << ")\n";
#endif
			}
			for (const std::weak_ptr<BasicBlock> &bptr: var->usingBlocks) {
				live[var->getID()].insert(bptr.lock()->index);
#ifdef DEBUG_COLORING
				std::cerr << "  user: " << *bptr.lock()->label << " (" << bptr.lock()->index << ")\n";
#endif
			}
		}

		for (const std::shared_ptr<BasicBlock> &block: function->blocks) {
#ifdef DEBUG_COLORING
			if (!block)
				warn() << "block is null?\n";
#endif
			for (const VariablePtr &var: block->liveIn)
				if (var->getRegisters().empty()) {
#ifdef DEBUG_COLORING
					info() << "Variable " << *var << " is live-in at block " << *block->label << "\n";
#endif
					live[var->getID()].insert(block->index);
				}
			for (const VariablePtr &var: block->liveOut)
				if (var->getRegisters().empty()) {
#ifdef DEBUG_COLORING
					info() << "Variable " << *var << " is live-out at block " << *block->label << "\n";
#endif
					live[var->getID()].insert(block->index);
				}
		}

		if (1 < labels.size()) {
			const size_t size = labels.size();
#ifdef DEBUG_COLORING
			info() << "Label count: " << size << "\n";
#endif
			size_t checks = 0;
			for (size_t i = 0; i < size - 1; ++i) {
				for (size_t j = i + 1; j < size; ++j) {
					VariablePtr left  = function->variableStore.at(labels[i]),
					            right = function->variableStore.at(labels[j]);
					if (left->id != right->id && Util::hasOverlap(live[left->id], live[right->id])) {
						interference.link(*left->id, *right->id, true);
						++links;
					}
					++checks;
				}
			}
#ifdef DEBUG_COLORING
			info() << "Ran " << checks << " check" << (checks == 1? "" : "s") << ".\n";
#endif
		}
#else
		std::unordered_map<int, std::vector<VariableID>> vecs;
		std::unordered_map<int, std::unordered_set<VariableID>> sets;

		for (const auto &[id, var]: function->variableStore) {
			const VariableID parent_id = var->parentID();
			// if (!var->registers.empty())
			// 	continue;
			for (const std::weak_ptr<BasicBlock> &bptr: var->getDefiningBlocks()) {
				const auto index = bptr.lock()->index;
				if (!sets[index].contains(parent_id)) {
					vecs[index].push_back(parent_id);
					sets[index].insert(parent_id);
				}
			}
			for (const std::weak_ptr<BasicBlock> &bptr: var->getUsingBlocks()) {
				const auto index = bptr.lock()->index;
				if (!sets[index].contains(parent_id)) {
					vecs[index].push_back(parent_id);
					sets[index].insert(parent_id);
				}
			}
		}

		for (const std::shared_ptr<BasicBlock> &block: function->blocks) {
			auto &vec = vecs[block->index];
			auto &set = sets[block->index];
			for (const VariablePtr &var: block->liveIn) {
				const VariableID parent_id = var->parentID();
				if (!set.contains(parent_id)) {
					vec.push_back(parent_id);
					set.insert(parent_id);
				}
			}
			for (const VariablePtr &var: block->liveOut) {
				const VariableID parent_id = var->parentID();
				if (!set.contains(parent_id)) {
					vec.push_back(parent_id);
					set.insert(parent_id);
				}
			}
		}

#ifdef DEBUG_COLORING
		info() << "Label count: " << labels.size() << "\n";
#endif
		for (const auto &[block_id, vec]: vecs) {
			const size_t size = vec.size();
			if (size < 2)
				continue;

			for (size_t i = 0; i < size - 1; ++i) {
				for (size_t j = i + 1; j < size; ++j) {
					if (interference.hasLabel(*vec[i]) && interference.hasLabel(*vec[j])) {
						interference.link(*vec[i], *vec[j], true);
						++links;
					}
				}
			}
		}
#endif

		// With all that out of the way, we have to add some precolored nodes to tell the graph coloring algorithm not
		// to assign certain registers to certain variables.
		int precolored_added = 0;
		for (const InstructionPtr &instruction: function->linearInstructions) {
			if (auto has_precolored = std::dynamic_pointer_cast<HasPrecolored>(instruction)) {
				has_precolored->extractPrecolored();
				const auto &read    = has_precolored->precoloredRead;
				const auto &written = has_precolored->precoloredWritten;
				if (read.empty() && written.empty())
					continue;

				const std::string label = "__ll2x_pc" + std::to_string(precolored_added++);
				Node &node = interference.addNode(label);
				node.colors = {written.begin(), written.end()};
				node.colors.insert(read.begin(), read.end());
				// Assumption: each basic block contains one instruction (i.e., they've all been minimized).
				// Though does that assumption matter here?
				BasicBlockPtr block = instruction->parent.lock();
				for (const VariablePtr &var: block->allLive) {
					const std::string &pid = *var->parentID();
					if (interference.hasLabel(pid))
						interference.link(label, pid, true);
				}
			}
		}

#ifdef DEBUG_COLORING
		info() << "Made " << links << " link" << (links == 1? "" : "s") << ".\n";
#endif
	}
}
