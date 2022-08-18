#include "compiler/Variable.h"
#include "instruction/DestinationOnly.h"

namespace LL2X {
	ExtractionResult DestinationOnly::extract(bool force) {
		if (extracted && !force)
			return {read.size(), written.size()};

		read.clear();
		written.clear();
		extracted = true;

		if (!secretReads || !secretWrites)
			if (!(destination->isDisplaced()? secretReads : secretWrites))
				destination->extract(true, read, written);

		return {read.size(), written.size()};
	}

	bool DestinationOnly::replaceRead(const VariablePtr &to_replace, const VariablePtr &new_var) {
		bool changed = false;

		if (!destination->isRegister() && destination->reg && destination->reg->isAliasOf(*to_replace)) {
			destination->reg = new_var;
			changed = true;
		}

		if (destination->index && destination->index->isAliasOf(*to_replace)) {
			destination->index = new_var;
			changed = true;
		}

		return changed;
	}

	bool DestinationOnly::canReplaceRead(const VariablePtr &to_replace) const {
		return !destination->isRegister() &&
		      ((destination->reg   && destination->reg  ->isAliasOf(*to_replace))
		    || (destination->index && destination->index->isAliasOf(*to_replace)));
	}

	bool DestinationOnly::replaceWritten(const VariablePtr &to_replace, const VariablePtr &new_var) {
		if (destination->isRegister() && destination->reg && destination->reg->isAliasOf(*to_replace)) {
			destination->reg = new_var;
			return true;
		}

		return false;
	}

	bool DestinationOnly::canReplaceWritten(const VariablePtr &to_replace) const {
		return destination->isRegister() && destination->reg && destination->reg->isAliasOf(*to_replace);
	}
}
