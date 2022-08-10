#include "compiler/Variable.h"
#include "instruction/TwoSourcesOnly.h"

namespace LL2X {
	ExtractionResult TwoSourcesOnly::extract(bool force) {
		if (extracted && !force)
			return {read.size(), 0};

		read.clear();
		extracted = true;

		if (!secretReads) {
			if (firstSource->reg)
				read.insert(firstSource->reg);
			if (firstSource->index)
				read.insert(firstSource->index);
			if (secondSource->reg)
				read.insert(secondSource->reg);
			if (secondSource->index)
				read.insert(secondSource->index);
		}

		return {read.size(), 0};
	}

	bool TwoSourcesOnly::replaceRead(const VariablePtr &to_replace, const VariablePtr &new_var) {
		bool changed = false;

		if (firstSource->reg && firstSource->reg->isAliasOf(*to_replace)) {
			firstSource->reg = new_var;
			changed = true;
		}

		if (firstSource->index && firstSource->index->isAliasOf(*to_replace)) {
			firstSource->index = new_var;
			changed = true;
		}

		if (secondSource->reg && secondSource->reg->isAliasOf(*to_replace)) {
			secondSource->reg = new_var;
			changed = true;
		}

		if (secondSource->index && secondSource->index->isAliasOf(*to_replace)) {
			secondSource->index = new_var;
			changed = true;
		}

		return changed;
	}

	bool TwoSourcesOnly::canReplaceRead(const VariablePtr &to_replace) const {
		return ( firstSource->reg   &&  firstSource->reg  ->isAliasOf(*to_replace))
		    || (secondSource->index && secondSource->index->isAliasOf(*to_replace))
		    || ( firstSource->reg   &&  firstSource->reg  ->isAliasOf(*to_replace))
		    || (secondSource->index && secondSource->index->isAliasOf(*to_replace));
	}
}
