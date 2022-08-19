#include "compiler/Variable.h"
#include "instruction/SourceOnly.h"

namespace LL2X {
	ExtractionResult SourceOnly::extract(bool force) {
		if (extracted && !force)
			return {read.size(), written.size()};

		read.clear();
		written.clear();
		extracted = true;

		if (!secretReads)
			source->extract(false, read, written);

		return {read.size(), written.size()};
	}

	bool SourceOnly::replaceRead(const VariablePtr &to_replace, const VariablePtr &new_var) {
		bool changed = false;

		if (source->isRegister() && source->reg && source->reg->isAliasOf(*to_replace)) {
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
		return source->isRegister() &&
		      ((source->reg   && source->reg  ->isAliasOf(*to_replace))
		    || (source->index && source->index->isAliasOf(*to_replace)));
	}

	bool SourceOnly::replaceOperand(const OperandPtr &to_replace, const OperandPtr &replace_with) {
		if (*source == *to_replace) {
			source = replace_with;
			return true;
		}

		return false;
	}

	bool SourceOnly::replaceSimilarOperand(const OperandPtr &to_replace, const OperandPtr &replace_with) {
		if (source->similarTo(*to_replace)) {
			source = replace_with;
			return true;
		}

		return false;
	}
}
