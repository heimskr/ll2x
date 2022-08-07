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
			if (source.indirect)
				read.insert(source.indirect);
			if (source.index)
				read.insert(source.index);
		}

		if (!secretWrites) {
			if (destination.indirect)
				written.insert(destination.indirect);
			if (destination.index)
				written.insert(destination.index);
		}

		return {read.size(), written.size()};
	}

	bool SourceToDest::replaceRead(const VariablePtr &to_replace, const VariablePtr &new_var) {
		bool changed = false;

		if (source.indirect && source.indirect->isAliasOf(*to_replace)) {
			source.indirect = new_var;
			changed = true;
		}

		if (source.index && source.index->isAliasOf(*to_replace)) {
			source.index = new_var;
			changed = true;
		}

		return changed;
	}

	bool SourceToDest::canReplaceRead(const VariablePtr &to_replace) const {
		return (source.indirect && source.indirect->isAliasOf(*to_replace))
		    || (source.index    && source.index   ->isAliasOf(*to_replace));
	}

	bool SourceToDest::replaceWritten(const VariablePtr &to_replace, const VariablePtr &new_var) {
		bool changed = false;

		if (destination.indirect && destination.indirect->isAliasOf(*to_replace)) {
			destination.indirect = new_var;
			changed = true;
		}

		if (destination.index && destination.index->isAliasOf(*to_replace)) {
			destination.index = new_var;
			changed = true;
		}

		return changed;
	}

	bool SourceToDest::canReplaceWritten(const VariablePtr &to_replace) const {
		return (destination.indirect && destination.indirect->isAliasOf(*to_replace))
		    || (destination.index    && destination.index   ->isAliasOf(*to_replace));
	}
}
