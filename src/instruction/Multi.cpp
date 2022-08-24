#include "compiler/Operand.h"
#include "compiler/Variable.h"
#include "instruction/Multi.h"

namespace LL2X {
	ExtractionResult Multi::extract(bool force) {
		if (extracted && !force)
			return {read.size(), written.size()};

		read.clear();
		written.clear();
		extracted = true;

		// TODO: verify
		if (!secretReads || !secretWrites) {
			if (!secretReads)
				multi->extract(false, read, written);
			if (!secretWrites)
				multi->extract(true, read, written);
		}

		return {read.size(), written.size()};
	}

	bool Multi::replaceRead(const VariablePtr &to_replace, const VariablePtr &new_var) {
		return multi->replace(*to_replace, new_var);
	}

	bool Multi::canReplaceRead(const VariablePtr &to_replace) const {
		return (multi->reg   && multi->reg  ->isAliasOf(*to_replace))
			|| (multi->index && multi->index->isAliasOf(*to_replace));
	}

	bool Multi::replaceWritten(const VariablePtr &to_replace, const VariablePtr &new_var) {
		return multi->replace(*to_replace, new_var);
	}

	bool Multi::canReplaceWritten(const VariablePtr &to_replace) const {
		return (multi->reg   && multi->reg  ->isAliasOf(*to_replace))
		    || (multi->index && multi->index->isAliasOf(*to_replace));
	}

	bool Multi::replaceOperand(const OperandPtr &to_replace, const OperandPtr &replace_with) {
		if (*multi == *to_replace) {
			multi = replace_with;
			return true;
		}

		return false;
	}

	bool Multi::replaceSimilarOperand(const OperandPtr &to_replace, const OperandPtr &replace_with) {
		if (multi->similarTo(*to_replace)) {
			multi = replace_with;
			return true;
		}

		return false;
	}
}
