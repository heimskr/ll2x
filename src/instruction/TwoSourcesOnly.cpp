#include "compiler/Variable.h"
#include "instruction/TwoSourcesOnly.h"

namespace LL2X {
	ExtractionResult TwoSourcesOnly::extract(bool force) {
		if (extracted && !force)
			return {read.size(), written.size()};

		read.clear();
		written.clear();
		extracted = true;

		if (!secretReads) {
			firstSource->extract(false, read, written);
			secondSource->extract(false, read, written);
		}

		return {read.size(), written.size()};
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

	bool TwoSourcesOnly::replaceOperand(const OperandPtr &to_replace, const OperandPtr &replace_with) {
		bool out = false;

		if (*firstSource == *to_replace) {
			firstSource = replace_with;
			out = true;
		}

		if (*secondSource == *to_replace) {
			secondSource = replace_with;
			out = true;
		}

		return out;
	}

	bool TwoSourcesOnly::replaceSimilarOperand(const OperandPtr &to_replace, const OperandPtr &replace_with) {
		bool out = false;

		if (firstSource->similarTo(*to_replace)) {
			firstSource = replace_with;
			out = true;
		}

		if (secondSource->similarTo(*to_replace)) {
			secondSource = replace_with;
			out = true;
		}

		return out;
	}
}
