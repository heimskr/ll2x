#include "compiler/Variable.h"
#include "instruction/Overlapping.h"

namespace LL2X {
	ExtractionResult Overlapping::extract(bool force) {
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
			if (!secretReads)
				sourceOnly->extract(false, read, written);
		}

		return {read.size(), written.size()};
	}

	bool Overlapping::replaceRead(const VariablePtr &to_replace, const VariablePtr &new_var) {
		bool changed = multi->replace(*to_replace, new_var);
		return sourceOnly->replace(*to_replace, new_var) || changed;
	}

	bool Overlapping::canReplaceRead(const VariablePtr &to_replace) const {
		return (     multi->reg   &&      multi->reg  ->isAliasOf(*to_replace))
			|| (     multi->index &&      multi->index->isAliasOf(*to_replace))
		    || (sourceOnly->reg   && sourceOnly->reg  ->isAliasOf(*to_replace))
			|| (sourceOnly->index && sourceOnly->index->isAliasOf(*to_replace));
	}

	bool Overlapping::replaceWritten(const VariablePtr &to_replace, const VariablePtr &new_var) {
		return multi->replace(*to_replace, new_var);
	}

	bool Overlapping::canReplaceWritten(const VariablePtr &to_replace) const {
		return (multi->reg   && multi->reg  ->isAliasOf(*to_replace))
		    || (multi->index && multi->index->isAliasOf(*to_replace));
	}

	bool Overlapping::replaceOperand(const OperandPtr &to_replace, const OperandPtr &replace_with) {
		bool out = false;

		if (*multi == *to_replace) {
			multi = replace_with;
			out = true;
		}

		if (*sourceOnly == *to_replace) {
			sourceOnly = replace_with;
			out = true;
		}

		return out;
	}
}
