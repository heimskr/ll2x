#include "compiler/Variable.h"
#include "instruction/SourceToDest.h"

namespace LL2X {
	ExtractionResult SourceToDest::extract(bool force) {
		if (extracted && !force)
			return {read.size(), written.size()};

		read.clear();
		written.clear();
		extracted = true;

		if (!secretReads)
			source->extract(false, read, written);

		if (!(destination->isDisplaced()? secretReads : secretWrites))
			destination->extract(true, read, written);

		return {read.size(), written.size()};
	}

	bool SourceToDest::replaceRead(const VariablePtr &to_replace, const VariablePtr &new_var) {
		if (!source)
			return false;

		bool changed = false;

		if (source->reg && source->reg->isAliasOf(*to_replace)) {
			source->reg = new_var;
			changed = true;
		}

		if (source->index && source->index->isAliasOf(*to_replace)) {
			source->index = new_var;
			changed = true;
		}

		return changed;
	}

	bool SourceToDest::canReplaceRead(const VariablePtr &to_replace) const {
		return source &&
		       ((source->reg   && source->reg  ->isAliasOf(*to_replace))
		     || (source->index && source->index->isAliasOf(*to_replace)));
	}

	bool SourceToDest::replaceWritten(const VariablePtr &to_replace, const VariablePtr &new_var) {
		if (!destination)
			return false;

		bool changed = false;

		if (destination->reg && destination->reg->isAliasOf(*to_replace)) {
			destination->reg = new_var;
			changed = true;
		}

		if (destination->index && destination->index->isAliasOf(*to_replace)) {
			destination->index = new_var;
			changed = true;
		}

		return changed;
	}

	bool SourceToDest::canReplaceWritten(const VariablePtr &to_replace) const {
		return destination &&
		       ((destination->reg   && destination->reg  ->isAliasOf(*to_replace))
		     || (destination->index && destination->index->isAliasOf(*to_replace)));
	}

	bool SourceToDest::replaceOperand(const OperandPtr &to_replace, const OperandPtr &replace_with) {
		bool out = false;

		if (*source == *to_replace) {
			source = replace_with;
			out = true;
		}

		if (*destination == *to_replace) {
			destination = replace_with;
			out = true;
		}

		return out;
	}
}
