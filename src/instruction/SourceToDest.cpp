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
			if (VariablePtr source_var = source)
				read.insert(std::move(source_var));

		if (!secretWrites)
			if (VariablePtr destination_var = destination)
				written.insert(destination_var);

		return {read.size(), written.size()};
	}

	bool SourceToDest::replaceRead(const VariablePtr &to_replace, const VariablePtr &new_var) {
		if (VariablePtr source_var = source)
			if (source_var->isAliasOf(*to_replace)) {
				source = new_var;
				return true;
			}

		return false;
	}

	bool SourceToDest::canReplaceRead(const VariablePtr &to_replace) const {
		return source.isVariable() && source.getVariable()->isAliasOf(*to_replace);
	}

	bool SourceToDest::replaceWritten(const VariablePtr &to_replace, const VariablePtr &new_var) {
		if (VariablePtr destination_var = destination)
			if (destination_var->isAliasOf(*to_replace)) {	
				destination = new_var;
				return true;
			}

		return false;
	}

	bool SourceToDest::canReplaceWritten(const VariablePtr &to_replace) const {
		return destination.isVariable() && destination.getVariable()->isAliasOf(*to_replace);
	}
}
