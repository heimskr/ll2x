#include <algorithm>

#include "compiler/BasicBlock.h"
#include "compiler/Function.h"
#include "compiler/Instruction.h"
#include "compiler/LLVMInstruction.h"
#include "compiler/Variable.h"
// #include "instruction/MoveInstruction.h"
#include "util/Timer.h"

namespace LL2X {
	BasicBlock::BasicBlock(Label label_, const std::vector<Label> &preds_,
	                       const std::list<std::shared_ptr<Instruction>> &instructions_):
		label(label_), preds(preds_), instructions(instructions_) {}

	void BasicBlock::extract(const InstructionPtr &instruction) {
		if (instruction->parent.lock().get() != this)
			warn() << "Instruction's block is " << *instruction->parent.lock()->label << ", not " << *label << ": "
			       << instruction->debugExtra() << '\n';
		instruction->extract();
		for (const auto &read_var: instruction->read)
			read.insert(read_var);
		for (const auto &written_var: instruction->written)
			written.insert(written_var);
		if (instruction->isPhi())
			return;
		for (const auto &read_var: instruction->read)
			nonPhiRead.insert(read_var);
		for (const auto &written_var: instruction->written)
			nonPhiWritten.insert(written_var);
	}

	std::pair<char, char> BasicBlock::extract(bool force) {
		Timer timer("BasicBlock::extract");

		if (extracted && !force)
			return {read.size(), written.size()};

		read.clear();
		written.clear();
		nonPhiWritten.clear();
		nonPhiRead.clear();

		for (std::shared_ptr<Instruction> &instruction: instructions)
			extract(instruction);

		return {read.size(), written.size()};
	}

	void BasicBlock::unextract() {
		read.clear();
		written.clear();
		nonPhiWritten.clear();
		nonPhiRead.clear();
		extracted = false;
	}

	void BasicBlock::extractPhi() {
		phiUses.clear();

		if (instructions.empty())
			return;

		if (auto *llvm = dynamic_cast<LLVMInstruction *>(instructions.front().get()))
			if (auto *phi = dynamic_cast<PhiNode *>(llvm->node))
				for (const std::pair<ValuePtr, const std::string *> &pair: phi->pairs)
					if (pair.first->valueType() == ValueType::Local)
						phiUses.insert(dynamic_cast<LocalValue *>(pair.first.get())->variable);

		// for (InstructionPtr instruction: parent->categories["MovePhi"])
		// 	if (instruction->parent.lock().get() == this)
		// 		if (auto *move = dynamic_cast<MoveInstruction *>(instruction.get())) {
					// std::cerr << "Phi: " << *move->rs << " (" << move->debugExtra() << ")\n";
					// phiUses.insert(move->rs);
				// }
	}

	std::vector<std::shared_ptr<BasicBlock>> BasicBlock::goesTo() const {
		if (instructions.empty())
			return {};

		const auto back = instructions.back();
		if (auto *llvm = dynamic_cast<LLVMInstruction *>(back.get())) {
			const NodeType type = llvm->node->nodeType();
			if (type == NodeType::BrUncond)
				return {parent->getBlock(dynamic_cast<BrUncondNode *>(llvm->node)->destination)};

			if (type == NodeType::BrCond) {
				const auto *cond = dynamic_cast<BrCondNode *>(llvm->node);
				return {parent->getBlock(cond->ifTrue), parent->getBlock(cond->ifFalse)};
			}

			if (type == NodeType::Ret)
				return {};

			if (type == NodeType::Switch) {
				std::vector<std::shared_ptr<BasicBlock>> out;
				for (const auto &[type, value, switch_label]: dynamic_cast<SwitchNode *>(llvm->node)->table)
					out.push_back(parent->getBlock(switch_label));
				return out;
			}

			throw std::runtime_error("Unrecognized terminal instruction in BasicBlock::goesTo: " +
				back->debugExtra());
		}

		throw std::runtime_error("Unrecognized terminal instruction in BasicBlock::goesTo: " + back->debugExtra());
	}

	bool BasicBlock::inPhiDefs(const VariablePtr &var) const {
		bool found_in_written = false;
		for (const VariablePtr &other: written)
			if (*var == *other) {
				found_in_written = true;
				break;
			}
		if (!found_in_written)
			return false;

		return !std::ranges::any_of(nonPhiWritten, [&var](const auto &other) {
			return *var == *other;
		});
	}

	void BasicBlock::insertBeforeTerminal(const InstructionPtr &instruction) {
		instruction->parent = shared_from_this();

		if (instructions.empty()) {
			instructions.push_back(instruction);
		} else {
			auto iter = instructions.end();
			instructions.insert(--iter, instruction);
		}

		extract(instruction);
	}

	bool BasicBlock::isLiveIn(const VariablePtr &var) const {
		if (liveIn.contains(var))
			return true;
		return std::ranges::any_of(liveIn, [&var](const auto &live_in) {
			return live_in->id == var->id;
		});
	}

	bool BasicBlock::isLiveOut(const VariablePtr &var) const {
		if (liveOut.contains(var))
			return true;
		return std::ranges::any_of(liveOut, [&var](const auto &live_out) {
			return live_out->id == var->id;
		});
	}

	std::ostream & operator<<(std::ostream &os, const BasicBlock &block) {
		return os << "%" << *block.label;
	}
}
