#include "compiler/Variable.h"
#include "instruction/Jmp.h"

namespace LL2X {
	const char * Jmp::getMnemonic() {
		switch (condition) {
			case x86_64::Condition::Unconditional:            return "jmp";
			case x86_64::Condition::IfEqual:                  return "je";
			case x86_64::Condition::IfNotEqual:               return "jne";
			case x86_64::Condition::IfNegative:               return "js";
			case x86_64::Condition::IfNonnegative:            return "jns";
			case x86_64::Condition::IfGreaterSigned:          return "jg";
			case x86_64::Condition::IfGreaterOrEqualSigned:   return "jge";
			case x86_64::Condition::IfLessSigned:             return "jl";
			case x86_64::Condition::IfLessOrEqualSigned:      return "jle";
			case x86_64::Condition::IfGreaterUnsigned:        return "ja";
			case x86_64::Condition::IfGreaterOrEqualUnsigned: return "jae";
			case x86_64::Condition::IfLessUnsigned:           return "jb";
			case x86_64::Condition::IfLessOrEqualUnsigned:    return "jbe";
			default: return "???";
		}
	}
}
