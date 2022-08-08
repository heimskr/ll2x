#include "compiler/Variable.h"
#include "instruction/Overlapping.h"

namespace LL2X {
	ExtractionResult Overlapping::extract(bool force) {
		if (extracted && !force)
			return {read.size(), written.size()};

		read.clear();
		written.clear();
		extracted = true;

		if (!secretReads) {
			if (multi.reg)
				read.insert(multi.reg);
			if (multi.index)
				read.insert(multi.index);
			if (sourceOnly.reg)
				read.insert(sourceOnly.reg);
			if (sourceOnly.index)
				read.insert(sourceOnly.index);
		}

		if (!secretWrites) {
			if (multi.reg)
				written.insert(multi.reg);
			if (multi.index)
				written.insert(multi.index);
		}

		return {read.size(), written.size()};
	}

	bool Overlapping::replaceRead(const VariablePtr &to_replace, const VariablePtr &new_var) {
		bool changed = multi.replace(*to_replace, new_var);
		return sourceOnly.replace(*to_replace, new_var) || changed;
	}

	bool Overlapping::canReplaceRead(const VariablePtr &to_replace) const {
		return (     multi.reg   &&      multi.reg  ->isAliasOf(*to_replace))
			|| (     multi.index &&      multi.index->isAliasOf(*to_replace))
		    || (sourceOnly.reg   && sourceOnly.reg  ->isAliasOf(*to_replace))
			|| (sourceOnly.index && sourceOnly.index->isAliasOf(*to_replace));
	}

	bool Overlapping::replaceWritten(const VariablePtr &to_replace, const VariablePtr &new_var) {
		return multi.replace(*to_replace, new_var);
	}

	bool Overlapping::canReplaceWritten(const VariablePtr &to_replace) const {
		return (multi.reg   && multi.reg  ->isAliasOf(*to_replace))
		    || (multi.index && multi.index->isAliasOf(*to_replace));
	}
}
