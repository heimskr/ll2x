#pragma once

#include <memory>
#include <ostream>
#include <set>

namespace LL2X {
	class BasicBlock;
	class Variable;

	struct Interval {
		std::weak_ptr<BasicBlock> firstDefinition, lastUse;
		std::weak_ptr<Variable> variable;
		std::set<int> registers;

		Interval(std::shared_ptr<Variable>);
		int startpoint() const;
		int endpoint() const;

		std::set<int> & setRegisters(const std::set<int> &);

		operator std::string() const;
	};

	std::ostream & operator<<(std::ostream &, const Interval &);
}
