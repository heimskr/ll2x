#include "compiler/BasicBlock.h"
#include "compiler/Function.h"
#include "compiler/Variable.h"
#include "instruction/Jmp.h"

namespace LL2X {
	std::string Jmp::debugExtra() {
		return lockPrefixAnsi + "\e[1m" + getMnemonic() + "\e[22m " + (source->isRegister()? "*" : "") +
			source->ansiString();
	}

	std::string Jmp::toString() const {
		return lockPrefix + getMnemonic() + ' ' + (source->isRegister()? "*" : "") + source->toString();
	}

	std::string Jmp::getMnemonic() const {
		if (condition == x86_64::Condition::Unconditional)
			return "jmp";
		return "j" + x86_64::conditionSuffix(condition);
	}

	bool Jmp::replaceLabel(const std::string *to_replace, const std::string *replace_with) {
		if (source->isLabel(*to_replace)) {
			source->label = *replace_with;
			return true;
		}

		const Function &function = *parent.lock()->parent;

		if (source->isLabel(function.transformLabel(*to_replace))) {
			source->label = function.transformLabel(*replace_with);
			return true;
		}

		return false;
	}

	std::vector<const std::string *> Jmp::getLabels() const {
		return {StringSet::intern(source->label)};
	}

	bool Jmp::canFallThrough() const {
		return condition != x86_64::Condition::Unconditional;
	}
}
