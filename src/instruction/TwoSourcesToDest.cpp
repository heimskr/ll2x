#include "compiler/Variable.h"
#include "instruction/TwoSourcesToDest.h"

namespace LL2X {
	ExtractionResult TwoSourcesToDest::extract(bool force) {
		if (extracted && !force)
			return {read.size(), written.size()};

		read.clear();
		written.clear();
		extracted = true;

		if (!secretReads) {
			if (firstSource.reg)
				read.insert(firstSource.reg);
			if (firstSource.index)
				read.insert(firstSource.index);
			if (secondSource.reg)
				read.insert(secondSource.reg);
			if (secondSource.index)
				read.insert(secondSource.index);
		}

		if (!secretWrites) {
			if (destination.reg)
				written.insert(destination.reg);
			if (destination.index)
				written.insert(destination.index);
		}

		return {read.size(), written.size()};
	}

	bool TwoSourcesToDest::replaceRead(const VariablePtr &to_replace, const VariablePtr &new_var) {
		bool changed = false;

		if (firstSource.reg && firstSource.reg->isAliasOf(*to_replace)) {
			firstSource.reg = new_var;
			changed = true;
		}

		if (firstSource.index && firstSource.index->isAliasOf(*to_replace)) {
			firstSource.index = new_var;
			changed = true;
		}

		if (secondSource.reg && secondSource.reg->isAliasOf(*to_replace)) {
			secondSource.reg = new_var;
			changed = true;
		}

		if (secondSource.index && secondSource.index->isAliasOf(*to_replace)) {
			secondSource.index = new_var;
			changed = true;
		}

		return changed;
	}

	bool TwoSourcesToDest::canReplaceRead(const VariablePtr &to_replace) const {
		return ( firstSource.reg   &&  firstSource.reg  ->isAliasOf(*to_replace))
		    || (secondSource.reg   && secondSource.reg  ->isAliasOf(*to_replace))
		    || ( firstSource.index &&  firstSource.index->isAliasOf(*to_replace))
		    || (secondSource.index && secondSource.index->isAliasOf(*to_replace));
	}

	bool TwoSourcesToDest::replaceWritten(const VariablePtr &to_replace, const VariablePtr &new_var) {
		bool changed = false;

		if (destination.reg && destination.reg->isAliasOf(*to_replace)) {
			destination.reg = new_var;
			changed = true;
		}

		if (destination.index && destination.index->isAliasOf(*to_replace)) {
			destination.index = new_var;
			changed = true;
		}

		return changed;
	}

	bool TwoSourcesToDest::canReplaceWritten(const VariablePtr &to_replace) const {
		return (destination.reg   && destination.reg  ->isAliasOf(*to_replace))
		    || (destination.index && destination.index->isAliasOf(*to_replace));
	}
}
