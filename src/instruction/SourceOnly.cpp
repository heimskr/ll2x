#include "compiler/Variable.h"
#include "instruction/SourceOnly.h"

namespace LL2X {
	ExtractionResult SourceOnly::extract(bool force) {
		if (extracted && !force)
			return {read.size(), 0};

		read.clear();
		extracted = true;

		if (!secretReads) {
			if (source->reg)
				read.insert(source->reg);
			if (source->index)
				read.insert(source->index);
		}

		return {read.size(), 0};
	}

	bool SourceOnly::replaceRead(const VariablePtr &to_replace, const VariablePtr &new_var) {
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

	bool SourceOnly::canReplaceRead(const VariablePtr &to_replace) const {
		return (source->reg   && source->reg  ->isAliasOf(*to_replace))
		    || (source->index && source->index->isAliasOf(*to_replace));
	}
}
