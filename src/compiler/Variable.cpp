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
	bool VariableCompare::operator()(const std::weak_ptr<Variable> &left, const std::weak_ptr<Variable> &right) const {
		auto strong_left = left.lock();
		auto strong_right = right.lock();

		if (strong_left && !strong_right)
			return true;

		if (!strong_left)
			return false;

		return strnatcmp(strong_left->getID()->c_str(), strong_right->getID()->c_str()) == -1;
	}

	VariableData::VariableData(VariableID id_, TypePtr type_, WeakSet<BasicBlock> defining_blocks,
	                           WeakSet<BasicBlock> using_blocks, WeakSet<Instruction> definitions_,
	                           WeakSet<Instruction> uses_, std::weak_ptr<Instruction> last_use,
	                           std::set<int> registers_, bool fixed_):
		id(id_),
		type(std::move(type_)),
		definingBlocks(std::move(defining_blocks)),
		usingBlocks(std::move(using_blocks)),
		definitions(std::move(definitions_)),
		uses(std::move(uses_)),
		lastUse(std::move(last_use)),
		registers(std::move(registers_)),
		fixed(fixed_) {}

	void VariableData::adopt(const VariableData &other) {
		for (const std::weak_ptr<Variable> &alias: aliases)
			aliases.insert(alias);

		for (const std::weak_ptr<BasicBlock> &def: other.definingBlocks)
			definingBlocks.insert(def);

		for (const std::weak_ptr<BasicBlock> &use: other.usingBlocks)
			usingBlocks.insert(use);

		for (const std::weak_ptr<Instruction> &def: other.definitions)
			definitions.insert(def.lock());

		for (const std::weak_ptr<Instruction> &use: other.uses)
			uses.insert(use.lock());
	}

	Variable::Variable(VariableID id, TypePtr type, WeakSet<BasicBlock> defining_blocks,
	WeakSet<BasicBlock> using_blocks): originalID(id) {
		data->id = id;
		data->type = std::move(type);
		data->definingBlocks = std::move(defining_blocks);
		data->usingBlocks = std::move(using_blocks);
	}

	SpillCost Variable::weight() const {
		SpillCost sum = 0;
		for (const std::weak_ptr<BasicBlock> &weak_use: data->usingBlocks)
			if (BasicBlockPtr use = weak_use.lock())
				sum += use->estimatedExecutions;
		return sum;
	}

	VariableID Variable::getID() const {
		return data->id;
	}

	SpillCost Variable::getSpillCost() {
		if (spillCost.has_value())
			return spillCost.value();

		// If a variable is never used, it has a negative spill cost.
		if (data->uses.empty())
			return *(spillCost = -1);

		if (data->definitions.size() == 1 && data->uses.size() == 1) {
			// If a variable has only one use and that use is right after its one definition, it has an (effectively)
			// infinite spill cost.
			if (data->uses.begin()->lock()->index == data->definitions.begin()->lock()->index + 1)
				return *(spillCost = SSIZE_MAX);
		} else if (data->definitions.empty()) {
			// Variables with no definitions (such as argument registers) aren't spillable.
			return *(spillCost = SSIZE_MAX);
		}

		return *(spillCost = weight());
	}

	void Variable::clearSpillCost() {
		spillCost.reset();
	}

	bool Variable::isSimple() const {
		if (data->definingBlocks.size() != 1 || data->usingBlocks.size() != 1)
			return false;

		return (*data->usingBlocks.begin()).lock()->index == (*data->definingBlocks.begin()).lock()->index;
	}

	bool Variable::operator==(const Variable &other) const {
		if (this == &other)
			return true;

		if (getID() != other.getID())
			return false;

		const TypePtr &this_type = getType();
		const TypePtr &other_type = other.getType();

		if (this_type == other_type)
			return true;

		if ((this_type == nullptr) != (other_type == nullptr))
			return false;

		return *this_type == *other_type;
	}

	bool Variable::equivalent(const Variable &other) const {
		if (*this == other)
			return true;

		// TODO(seminar): investigate
		if (!allRegistersSpecial() || !other.allRegistersSpecial())
			return false;

		if (data->registers.size() != other.data->registers.size())
			return false;

		return std::ranges::all_of(data->registers, [&other](const auto reg) {
			return other.data->registers.contains(reg);
		});
	}

	bool Variable::isAliasOf(const Variable &other) const {
		if (*this == other)
			return true;

		if (getAliases().contains(std::const_pointer_cast<Variable>(other.shared_from_this())))
			return true;

		return other.getAliases().contains(std::const_pointer_cast<Variable>(shared_from_this()));
	}

	std::string Variable::ansiString(x86_64::Width width) const {
		std::stringstream out;

		if (data->registers.empty()) {
			out << "\e[38;5;202m%" << *getID() << "\e[39m";
		} else {
			out << "\e[92m";

			if (1 < data->registers.size())
				out << '<';

			out << Util::join(data->registers, ' ', [width](const int reg) {
				return '%' + x86_64::registerName(reg, width);
			});

			if (1 < data->registers.size())
				out << '>';

			out << "\e[39;2m:\e[32m" << *getID() << "\e[39;22m";
		}

#ifdef VARIABLE_EXTRA
		VariablePtr parent = weakweakParent.lock();
		const auto &alias_set = parent? parent->getAliases() : getAliases();
		if (!alias_set.empty()) {
			out << "\e[2m[";
			for (auto begin = alias_set.begin(), iter = begin, end = alias_set.end(); iter != end; ++iter) {
				if (iter != begin)
					out << ",";
				out << *(*iter)->id << "x" << (*iter)->data->definitions.size() << "." << (*iter)->definingBlocks.size();
			}
			out << "]\e[22m";
		}
		out << "\e[2m<" << definingBlocks.size() << "." << data->definitions.size() << ":" << usingBlocks.size() << "."
		    << data->uses.size() << "/" << registersRequired(false) << ">\e[22m";
#endif
		return out.str();
	}

	std::string Variable::toString(x86_64::Width width) const {
		if (1 < data->registers.size()) {
			return '<' + Util::join(data->registers, ' ', [width](int reg) {
				return '%' + x86_64::registerName(reg, width);
			}) + '>';
		}

		if (data->registers.size() == 1)
			return '%' + x86_64::registerName(*data->registers.begin(), width);

		return plainString(width);
	}

	std::string Variable::plainString(x86_64::Width width) const {
		if (data->registers.empty())
			return '^' + *getID();

		if (data->registers.size() == 1)
			return '%' + x86_64::registerName(*data->registers.begin(), width) + ":" + *getID();

		return '<' + Util::join(data->registers, ' ', [width](int reg) {
			return '%' + x86_64::registerName(reg, width);
		}) + ">:" + *getID();
	}

	Function * Variable::getFunction() const {
		if (!data->definingBlocks.empty())
			return data->definingBlocks.begin()->lock()->parent;

		return data->usingBlocks.empty()? nullptr : data->usingBlocks.begin()->lock()->parent;
	}

	std::string Variable::functionName() const {
		if (const Function *function = getFunction())
			return function->name->substr(1);
		return "?";
	}

	VariableID Variable::parentID() const {
		return data->id;
	}

	void Variable::makeAliasOf(const std::shared_ptr<Variable> &new_parent) {
		VariablePtr shared = shared_from_this();

#ifdef DEBUG_ALIASES
		std::cerr << *this << "{o" << *originalID << "}.makeAliasOf(" << *new_parent << "{o" << *new_parent->originalID
		          << "}) \e[36m" << functionName() << "\e[39m " << this << "/" << new_parent.get();
#endif

		if (new_parent == shared || new_parent->getParent() == shared || new_parent->getAliases().contains(shared)) {
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
		weakParent = new_parent;
		new_parent->data->aliases.insert(shared);

		for (const std::weak_ptr<Variable> &weak_alias: data->aliases) {
			if (VariablePtr alias = weak_alias.lock()) {
				info() << "Alias " << alias << "->parent = " << &new_parent << "\n";
				alias->weakParent = new_parent;
			}
		}

#ifdef ADOPT_PARENT_ID
		id = new_parent->id;
#endif

		new_parent->data->adopt(*data);
		data = new_parent->data;
	}

	void Variable::addDefiner(const BasicBlockPtr &block) {
		data->definingBlocks.insert(block);
	}

	void Variable::removeDefiner(const BasicBlockPtr &block) {
		data->definingBlocks.erase(block);
	}

	void Variable::addUsingBlock(const BasicBlockPtr &block) {
		data->usingBlocks.insert(block);
	}

	void Variable::removeUsingBlock(const BasicBlockPtr &block) {
		data->usingBlocks.erase(block);
	}

	void Variable::addDefinition(const InstructionPtr &instruction) {
		data->definitions.insert(instruction);
	}

	void Variable::removeDefinition(const InstructionPtr &instruction) {
		data->definitions.erase(instruction);
	}

	void Variable::addUse(const InstructionPtr &instruction) {
		data->uses.insert(instruction);
	}

	void Variable::removeUse(const InstructionPtr &instruction) {
		data->uses.erase(instruction);
	}

	BasicBlockPtr Variable::onlyDefiner() const {
		if (data->definingBlocks.size() != 1) {
			throw std::runtime_error("Variable has " + std::string(data->definingBlocks.empty()? "no" : "multiple") +
				" defining blocks");
		}

		return data->definingBlocks.begin()->lock();
	}

	InstructionPtr Variable::onlyDefinition() const {
		if (data->definitions.size() != 1) {
			std::cerr << "[Bad variable: " << *this << "]\n";
			for (const auto &weak: data->definitions)
				std::cerr << "\e[31;2m-\e[0m " << weak.lock()->debugExtra() << "\n";
			throw std::runtime_error("Variable has " + std::string(data->definitions.empty()? "no" : "multiple") +
				" definitions");
		}

		return data->definitions.begin()->lock();
	}

	bool Variable::hasSpecialRegister() const {
		return std::ranges::any_of(data->registers, x86_64::isSpecialPurpose);
	}

	bool Variable::hasNonSpecialRegister() const {
		return std::ranges::any_of(data->registers, std::not_fn(&x86_64::isSpecialPurpose));
	}

	int Variable::nonSpecialCount() const {
		return std::ranges::count_if(data->registers, [](int reg) { return x86_64::isSpecialPurpose(reg); });
	}

	bool Variable::allRegistersSpecial() const {
		return !data->registers.empty() && !hasNonSpecialRegister();
	}

	bool Variable::compareRegisters(const Variable &other) const {
		if (data->registers.size() != other.data->registers.size())
			return false;

		auto this_iter = data->registers.begin();
		auto that_iter = other.data->registers.begin();

		for (; this_iter != data->registers.end(); ++this_iter, ++that_iter)
			if (*this_iter != *that_iter)
				return false;

		return true;
	}

	int Variable::registersRequired(bool may_warn) const {
		if (TypePtr type = getType())
			return Util::updiv(type->width(), 64);

		if (may_warn) {
			warn() << "Variable::registersRequired: " << *this << " has no type in function " << functionName()
			       << ".\n";
		}

		return 1;
	}

	bool Variable::multireg() const {
		return 1 < data->registers.size();
	}

	std::string Variable::registersString() const {
		std::string out = 1 < data->registers.size()? "(" : "";
		out += Util::join(data->registers, ' ', [](int reg) { return '%' + x86_64::registerName(reg); });
		if (1 < data->registers.size())
			out += ')';
		return out;
	}

	void Variable::resetRegisters() {
		if (!data->fixed)
			data->registers.clear();
	}

	std::ostream & operator<<(std::ostream &os, const LL2X::Variable &var) {
		return os << var.ansiString();
	}

	bool Variable::isLess(int64_t max) const {
		return isLess(getID(), max);
	}

	bool Variable::isLess(VariableID id, int64_t max) {
		try {
			return Util::parseLong(id) < max;
		} catch (const std::invalid_argument &) {
			return false;
		}
	}

	void Variable::debug() {
		std::cerr << "Debug information for " << *this << " in function \e[1m";
		if (!data->definingBlocks.empty())
			std::cerr << *data->definingBlocks.begin()->lock()->parent->name;
		else
			std::cerr << "???";
		std::cerr << "\e[22m:\n";

		std::cerr << "   Defining blocks:";

		for (const std::weak_ptr<BasicBlock> &block: data->definingBlocks)
			std::cerr << " %" << *block.lock()->label;

		std::cerr << "\n";
		std::cerr << "   Using blocks:";

		for (const std::weak_ptr<BasicBlock> &block: data->usingBlocks)
			std::cerr << " %" << *block.lock()->label;

		std::cerr << "\n";
		std::cerr << "   Last use: ";

		if (InstructionPtr last_use = data->lastUse.lock())
			std::cerr << last_use->debugExtra() << "\n";
		else
			std::cerr << "\e[2mnone\e[22m\n";

		if (data->definitions.empty()) {
			std::cerr << "   No data->definitions.\n";
		} else {
			std::cerr << "   Definitions (" << data->definitions.size() << "):\n";
			for (const std::weak_ptr<Instruction> &instruction: data->definitions)
				std::cerr << "      " << instruction.lock()->debugExtra() << "\n";
		}

		if (data->aliases.empty()) {
			std::cerr << "   No aliases.\n";
		} else {
			std::cerr << "   Aliases:";
			for (const std::weak_ptr<Variable> &weak_alias: data->aliases)
				if (VariablePtr alias = weak_alias.lock())
					std::cerr << ' ' << *alias;
			std::cerr << "\n";
		}
	}
}
