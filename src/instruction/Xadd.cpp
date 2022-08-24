#include "compiler/Operand.h"
#include "compiler/Variable.h"
#include "instruction/Xadd.h"

namespace LL2X {
	Xadd::Xadd(OperandPtr reg_only, OperandPtr reg_mem, int size_):
		Sized(size_), regOnly(std::move(reg_only)), regMem(std::move(reg_mem)) {}

	Xadd::Xadd(OperandPtr reg_only, OperandPtr reg_mem):
		Sized(reg_mem->bitWidth), regOnly(std::move(reg_only)), regMem(std::move(reg_mem)) {}

	ExtractionResult Xadd::extract(bool force) {
		if (extracted && !force)
			return {read.size(), written.size()};

		read.clear();
		written.clear();
		extracted = true;

		// I'm just too lazy to figure it all out.
		if (secretReads || secretWrites)
			throw std::runtime_error("Neither reads nor writes can be secret in an xadd instruction");

		regOnly->extract(false, read, written);
		regOnly->extract(true,  read, written);
		regMem->extract(false,  read, written);
		regMem->extract(true,   read, written);

		return {read.size(), written.size()};
	}

	bool Xadd::replaceRead(const VariablePtr &to_replace, const VariablePtr &new_var) {
		bool changed = regOnly->replace(*to_replace, new_var);
		return regMem->replace(*to_replace, new_var) || changed;
	}

	bool Xadd::canReplaceRead(const VariablePtr &to_replace) const {
		return (regOnly->reg   && regOnly->reg  ->isAliasOf(*to_replace))
			|| (regOnly->index && regOnly->index->isAliasOf(*to_replace))
		    || (regMem ->reg   && regMem ->reg  ->isAliasOf(*to_replace))
			|| (regMem ->index && regMem ->index->isAliasOf(*to_replace));
	}

	bool Xadd::replaceWritten(const VariablePtr &to_replace, const VariablePtr &new_var) {
		// It's all the same here.
		return replaceRead(to_replace, new_var);
	}

	bool Xadd::canReplaceWritten(const VariablePtr &to_replace) const {
		// And here.
		return canReplaceRead(to_replace);
	}

	bool Xadd::replaceOperand(const OperandPtr &to_replace, const OperandPtr &replace_with) {
		bool out = false;

		if (*regOnly == *to_replace) {
			regOnly = replace_with;
			out = true;
		}

		if (*regMem == *to_replace) {
			regMem = replace_with;
			out = true;
		}

		return out;
	}

	bool Xadd::replaceSimilarOperand(const OperandPtr &to_replace, const OperandPtr &replace_with) {
		bool out = false;

		if (regOnly->similarTo(*to_replace)) {
			regOnly = replace_with;
			out = true;
		}

		if (regMem->similarTo(*to_replace)) {
			regMem = replace_with;
			out = true;
		}

		return out;
	}

	std::string Xadd::debugExtra() {
		return std::string("\e[1mxadd") + suffix() + "\e[22m " + regOnly->ansiString() + ", " + regMem->ansiString();
	}

	std::string Xadd::toString() const {
		return std::string("add") + suffix() + " " + regOnly->toString() + ", " + regMem->toString();
	}
}
