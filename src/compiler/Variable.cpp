#include <algorithm>
#include <climits>
#include <functional>
#include <iostream>
#include <sstream>

#include "compiler/BasicBlock.h"
#include "compiler/Function.h"
#include "compiler/Instruction.h"
#include "compiler/Variable.h"
#include "options.h"
#include "util/Util.h"

// #define DEBUG_ALIASES
// #define VARIABLE_EXTRA
// #define ADOPT_PARENT_ID

namespace LL2X {
	bool VariableCompare::operator()(const Variable *left, const Variable *right) const {
		return strnatcmp(left->id->c_str(), right->id->c_str()) == -1;
	}

	Variable::Variable(ID id_, TypePtr type_, const WeakSet<BasicBlock> &defining_blocks,
	const WeakSet<BasicBlock> &using_blocks):
		originalID(id_), id(id_), type(std::move(type_)), definingBlocks(defining_blocks), usingBlocks(using_blocks) {}

	int Variable::weight() const {
		int sum = 0;
		for (const std::weak_ptr<BasicBlock> &use: usingBlocks)
			sum += use.lock()->estimatedExecutions;
		return sum;
	}

	int Variable::spillCost() {
		if (spillCost_.has_value())
			return spillCost_.value();

		// If a variable is never used, it has a negative spill cost.
		if (uses.empty())
			return *(spillCost_ = -1);

		if (definitions.size() == 1 && uses.size() == 1) {
			// If a variable has only one use and that use is right after its one definition, it has an (effectively)
			// infinite spill cost.
			if (uses.begin()->lock()->index == definitions.begin()->lock()->index + 1)
				return *(spillCost_ = INT_MAX);
		} else if (definitions.empty()) {
			// Variables with no definitions (such as argument registers) aren't spillable.
			return *(spillCost_ = INT_MAX);
		}

		return *(spillCost_ = weight());
	}

	void Variable::clearSpillCost() {
		spillCost_.reset();
	}

	bool Variable::isSimple() const {
		return definingBlocks.size() == 1 && usingBlocks.size() == 1
			&& (*usingBlocks.begin()).lock()->index == (*definingBlocks.begin()).lock()->index;
	}

	bool Variable::operator==(const Variable &other) const {
		if (this == &other)
			return true;

		if (id != other.id)
			return false;

		if (type == other.type)
			return true;

		if ((type == nullptr) != (other.type == nullptr))
			return false;

		return *type == *other.type;
	}

	bool Variable::equivalent(const Variable &other) const {
		if (*this == other)
			return true;

		if (!allRegistersSpecial() || !other.allRegistersSpecial() || registers.size() != other.registers.size())
			return false;

		return std::ranges::all_of(registers, [&other](const auto reg) {
			return other.registers.contains(reg);
		});
	}

	bool Variable::isAliasOf(const Variable &other) const {
		return *this == other || aliases.contains(const_cast<Variable *>(&other))
			|| other.aliases.contains(const_cast<Variable *>(this));
	}

	std::string Variable::ansiString(x86_64::Width width) const {
		std::stringstream out;
		const std::string base;
		if (registers.empty())
			out << "\e[38;5;202m%" << *id << "\e[39m";
		else {
			out << "\e[92m";
			if (1 < registers.size())
				out << '<';
			bool first = true;
			for (const int reg: registers) {
				if (first)
					first = false;
				else
					out << ' ';
				out << '%' << x86_64::registerName(reg, width);
			}
			if (1 < registers.size())
				out << '>';
			out << "\e[39;2m:\e[32m" << *id << "\e[39;22m";
		}
#ifdef VARIABLE_EXTRA
		auto sparent = parent.lock();
		auto alias_set = sparent? sparent->aliases : aliases;
		if (!alias_set.empty()) {
			out << "\e[2m[";
			for (auto begin = alias_set.begin(), iter = begin, end = alias_set.end(); iter != end; ++iter) {
				if (iter != begin)
					out << ",";
				out << *(*iter)->id << "x" << (*iter)->definitions.size() << "." << (*iter)->definingBlocks.size();
			}
			out << "]\e[22m";
		}
		out << "\e[2m<" << definingBlocks.size() << "." << definitions.size() << ":" << usingBlocks.size() << "."
		    << uses.size() << "/" << registersRequired(false) << ">\e[22m";
#endif
		return out.str();
	}

	std::string Variable::toString(x86_64::Width width) const {
		if (1 < registers.size()) {
			std::string out = "<";
			bool first = true;
			for (const int reg: registers) {
				if (first)
					first = false;
				else
					out += ' ';
				out += '%' + x86_64::registerName(reg, width);
			}
			out += '>';
			return out;
		}

		if (registers.size() == 1)
			return '%' + x86_64::registerName(*registers.begin(), width);

		return plainString(width);
	}

	std::string Variable::plainString(x86_64::Width width) const {
		if (registers.empty())
			return '^' + *id;

		if (registers.size() == 1)
			return '%' + x86_64::registerName(*registers.begin(), width) + ":" + *id;

		std::string out = "<";
		bool first = true;
		for (const int reg: registers) {
			if (first)
				first = false;
			else
				out += ' ';
			out += '%' + x86_64::registerName(reg, width);
		}
		out += ">:" + *id;
		return out;
	}

	Function * Variable::getFunction() const {
		return definingBlocks.empty()? (usingBlocks.empty()? nullptr : usingBlocks.begin()->lock()->parent)
		                             : definingBlocks.begin()->lock()->parent;
	}

	std::string Variable::functionName() const {
		const Function *function = getFunction();
		return function != nullptr? function->name->substr(1) : "?";
	}

	Variable::ID Variable::parentID() const {
		auto sparent = parent.lock();
		return sparent? sparent->id : id;
	}

	void Variable::makeAliasOf(std::shared_ptr<Variable> new_parent) {
#ifdef DEBUG_ALIASES
		std::cerr << *this << "{o" << *originalID << "}.makeAliasOf(" << *new_parent << "{o" << *new_parent->originalID
		          << "}) \e[36m" << functionName() << "\e[39m " << this << "/" << new_parent.get();
#endif
		if (new_parent.get() == this || new_parent->parent.lock().get() == this || new_parent->aliases.contains(this)) {
#ifdef DEBUG_ALIASES
			std::cerr << " \e[2m...\e[22;31mnope\e[39m\n";
#endif
			return;
		}
#ifdef DEBUG_ALIASES
		std::cerr << "\n";
#endif
		// info() << "\e[36m" << functionName() << "\e[39m: " << *this << "[\e[1m" << this << "\e[22m].makeAliasOf("
		//        << new_parent << "[\e[1m" << new_parent.get() << "\e[22m])\n";
		parent = new_parent;
		new_parent->aliases.insert(this);
		for (Variable *alias: aliases) {
			info() << "Alias " << alias << "->parent = " << &new_parent << "\n";
			alias->parent = new_parent;
			new_parent->aliases.insert(alias);
		}
		for (const std::weak_ptr<BasicBlock> &def: definingBlocks)
			new_parent->definingBlocks.insert(def);
		for (const std::weak_ptr<BasicBlock> &use: usingBlocks)
			new_parent->usingBlocks.insert(use);
		for (const std::weak_ptr<Instruction> &def: definitions)
			new_parent->definitions.insert(def.lock());
		for (const std::weak_ptr<Instruction> &use: uses)
			new_parent->uses.insert(use.lock());
#ifdef ADOPT_PARENT_ID
		id = new_parent->id;
#endif
		type = new_parent->type;
		lastUse = new_parent->lastUse;
		definingBlocks = new_parent->definingBlocks;
		usingBlocks = new_parent->usingBlocks;
		definitions = new_parent->definitions;
		uses = new_parent->uses;
		registers = new_parent->registers; // ???
	}

	void Variable::addDefiner(const BasicBlockPtr &block) {
		if (auto sparent = parent.lock()) {
			sparent->addDefiner(block);
		} else {
			definingBlocks.insert(block);
			for (Variable *alias: aliases)
				alias->definingBlocks.insert(block);
		}
	}

	void Variable::removeDefiner(const BasicBlockPtr &block) {
		if (auto sparent = parent.lock()) {
			if (sparent.get() != this) {
				sparent->removeDefiner(block);
				return;
			}
		}

		definingBlocks.erase(block);
		for (Variable *alias: aliases)
			alias->definingBlocks.erase(block);
	}

	void Variable::addUsingBlock(const BasicBlockPtr &block) {
		if (auto sparent = parent.lock()) {
			if (sparent.get() != this) {
				sparent->addUsingBlock(block);
				return;
			}
		}

		usingBlocks.insert(block);
		for (Variable *alias: aliases)
			alias->usingBlocks.insert(block);
	}

	void Variable::removeUsingBlock(const BasicBlockPtr &block) {
		if (auto sparent = parent.lock()) {
			if (sparent.get() != this) {
				sparent->removeUsingBlock(block);
				return;
			}
		}

		usingBlocks.erase(block);
		for (Variable *alias: aliases)
			alias->usingBlocks.erase(block);
	}

	void Variable::addDefinition(const InstructionPtr &instruction) {
		if (auto sparent = parent.lock()) {
			if (sparent.get() != this) {
				sparent->addDefinition(instruction);
				return;
			}
		}

		definitions.insert(instruction);
		for (Variable *alias: aliases)
			alias->definitions.insert(instruction);
	}

	void Variable::removeDefinition(const InstructionPtr &instruction) {
		if (auto sparent = parent.lock()) {
			if (sparent.get() != this) {
				sparent->removeDefinition(instruction);
				return;
			}
		}

		definitions.erase(instruction);
		for (Variable *alias: aliases)
			alias->definitions.erase(instruction);
	}

	void Variable::addUse(const InstructionPtr &instruction) {
		if (auto sparent = parent.lock()) {
			if (sparent.get() != this) {
				sparent->addUse(instruction);
				return;
			}
		}

		uses.insert(instruction);
		for (Variable *alias: aliases)
			alias->uses.insert(instruction);
	}

	void Variable::removeUse(const InstructionPtr &instruction) {
		if (auto sparent = parent.lock()) {
			if (sparent.get() != this) {
				sparent->removeUse(instruction);
				return;
			}
		}

		uses.erase(instruction);
		for (Variable *alias: aliases)
			alias->uses.erase(instruction);
	}

	BasicBlockPtr Variable::onlyDefiner() const {
		if (definingBlocks.size() != 1) {
			throw std::runtime_error("Variable has " + std::string(definingBlocks.empty()? "no" : "multiple") +
				" defining blocks");
		}

		return definingBlocks.begin()->lock();
	}

	InstructionPtr Variable::onlyDefinition() const {
		if (definitions.size() != 1) {
			std::cerr << "[Bad variable: " << *this << "]\n";
			for (const auto &weak: definitions)
				std::cerr << "\e[31;2m-\e[0m " << weak.lock()->debugExtra() << "\n";
			throw std::runtime_error("Variable has " + std::string(definitions.empty()? "no" : "multiple") +
				" definitions");
		}

		return definitions.begin()->lock();
	}

	void Variable::setType(const TypePtr &new_type) {
		if (auto sparent = parent.lock()) {
			sparent->setType(new_type);
		} else {
			type = new_type? new_type->copy() : nullptr;
			for (Variable *alias: aliases)
				alias->type = type;
		}
	}

#define VARSETTER(method, type, param, field) \
	void Variable::set##method(type param) { \
		if (auto sparent = parent.lock()) { \
			sparent->set##method(param); \
		} else { \
			field = param; \
			for (Variable *alias: aliases) \
				alias->field = param; \
		} \
	}

	VARSETTER(ID, ID, new_id, id)
	VARSETTER(DefiningBlocks, const decltype(Variable::definingBlocks) &, block,         definingBlocks)
	VARSETTER(Definitions,    const decltype(Variable::definitions) &,    defs,          definitions)
	VARSETTER(Uses,           const decltype(Variable::uses) &,           new_uses,      uses)
	VARSETTER(UsingBlocks,    const decltype(Variable::usingBlocks) &,    blocks,        usingBlocks)
	VARSETTER(LastUse,        const decltype(Variable::lastUse) &,        use,           lastUse);
	VARSETTER(Registers,      const decltype(Variable::registers) &,      new_registers, registers);

	bool Variable::hasSpecialRegister() const {
		return std::ranges::any_of(registers, x86_64::isSpecialPurpose);
	}

	bool Variable::hasNonSpecialRegister() const {
		return std::ranges::any_of(registers, [](const int reg) {
			return !x86_64::isSpecialPurpose(reg);
		});
	}

	int Variable::nonSpecialCount() const {
		int count = 0;
		for (const int reg: registers)
			if (!x86_64::isSpecialPurpose(reg))
				++count;
		return count;
	}

	bool Variable::allRegistersSpecial() const {
		return !registers.empty() && !hasNonSpecialRegister();
	}

	bool Variable::compareRegisters(const Variable &other) const {
		if (registers.size() != other.registers.size())
			return false;
		auto this_iter = registers.begin();
		auto that_iter = other.registers.begin();
		for (; this_iter != registers.end(); ++this_iter, ++that_iter)
			if (*this_iter != *that_iter)
				return false;
		return true;
	}

	int Variable::registersRequired(bool may_warn) const {
		if (!type) {
			if (may_warn)
				warn() << "Variable::registersRequired: " << *this << " has no type in function " << functionName()
				       << ".\n";
			return 1;
		}

		return Util::updiv(type->width(), 64);
	}

	bool Variable::multireg() const {
		return 1 < registers.size();
	}

	std::string Variable::registersString() const {
		std::string out = 1 < registers.size()? "(" : "";
		bool first = true;
		for (const int reg: registers) {
			if (first)
				first = false;
			else
				out += ' ';
			out += '%' + x86_64::registerName(reg);
		}
		if (1 < registers.size())
			out += ')';
		return out;
	}

	void Variable::resetRegisters() {
		if (!fixed)
			setRegisters({});
	}

	std::ostream & operator<<(std::ostream &os, const LL2X::Variable &var) {
		return os << var.ansiString();
	}

	bool Variable::isLess(int64_t max) const {
		return isLess(id, max);
	}

	bool Variable::isLess(Variable::ID id, int64_t max) {
		try {
			int64_t parsed = Util::parseLong(id);
			return parsed < max;
		} catch (const std::invalid_argument &) {
			return false;
		}
	}

	void Variable::debug() {
		std::cerr << "Debug information for " << *this << " in function \e[1m";
		if (!definingBlocks.empty()) {
			std::cerr << *definingBlocks.begin()->lock()->parent->name;
		} else std::cerr << "???";
		std::cerr << "\e[22m:\n";
		std::cerr << "   Defining blocks:";
		for (const std::weak_ptr<BasicBlock> &block: definingBlocks)
			std::cerr << " %" << *block.lock()->label;
		std::cerr << "\n";
		std::cerr << "   Using blocks:";
		for (const std::weak_ptr<BasicBlock> &block: usingBlocks)
			std::cerr << " %" << *block.lock()->label;
		std::cerr << "\n";
		std::cerr << "   Last use: ";
		if (InstructionPtr last_use = lastUse.lock())
			std::cerr << lastUse.lock()->debugExtra() << "\n";
		else
			std::cerr << "\e[2mnone\e[22m\n";
		if (definitions.empty()) {
			std::cerr << "   No definitions.\n";
		} else {
			std::cerr << "   Definitions (" << definitions.size() << "):\n";
			for (const std::weak_ptr<Instruction> &instruction: definitions)
				std::cerr << "      " << instruction.lock()->debugExtra() << "\n";
		}
		if (aliases.empty()) {
			std::cerr << "   No aliases.\n";
		} else {
			std::cerr << "   Aliases:";
			for (const Variable *alias: aliases)
				std::cerr << ' ' << *alias;
			std::cerr << "\n";
		}
	}
}
