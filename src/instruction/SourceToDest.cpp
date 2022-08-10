#include "compiler/Variable.h"
#include "instruction/SourceToDest.h"

namespace LL2X {
	ExtractionResult SourceToDest::extract(bool force) {
		if (extracted && !force)
			return {read.size(), written.size()};

		read.clear();
		written.clear();
		extracted = true;

		if (!secretReads) {
			if (source->reg)
				read.insert(source->reg);
			if (source->index)
				read.insert(source->index);
		}

		if (!secretWrites) {
			if (destination->reg)
				written.insert(destination->reg);
			if (destination->index)
				written.insert(destination->index);
		}

		return {read.size(), written.size()};
	}

	bool SourceToDest::replaceRead(const VariablePtr &to_replace, const VariablePtr &new_var) {
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
		return (source->reg   && source->reg  ->isAliasOf(*to_replace))
		    || (source->index && source->index->isAliasOf(*to_replace));
	}

	bool SourceToDest::replaceWritten(const VariablePtr &to_replace, const VariablePtr &new_var) {
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
		return (destination->reg   && destination->reg  ->isAliasOf(*to_replace))
		    || (destination->index && destination->index->isAliasOf(*to_replace));
	}
}
