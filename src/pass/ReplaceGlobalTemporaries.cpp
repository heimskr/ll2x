#include "compiler/Function.h"
#include "compiler/Instruction.h"
#include "compiler/Program.h"
#include "pass/ReplaceGlobalTemporaries.h"
#include "util/Timer.h"

namespace LL2X::Passes {
	void replaceGlobalTemporaries(Function &function) {
		Timer timer("ReplaceGlobalTemporaries");

		Program &program = function.parent;

		for (const auto *map: {&function.variableStore, &function.extraVariables}) {
			for (const auto &[id, variable]: *map) {
				TypePtr type = variable->type;

				if (type->typeType() != TypeType::GlobalTemporary)
					continue;

				auto global_temporary = std::dynamic_pointer_cast<GlobalTemporaryType>(type);
				const std::string &global_name = *global_temporary->globalName;

				auto iter = program.globals.find('@' + global_name);
				if (iter == program.globals.end())
					continue;

				GlobalVarDef *definition = iter->second;

				TypePtr global_type;

				if (definition->constant) {
					global_type = definition->constant->convert()->type;
				} else if (definition->type) {
					global_type = definition->type;
				}

				if (!global_type) {
					error() << "Couldn't find type of global @" << global_name << '\n';
					continue;
				}

				variable->setType(global_type);
			}
		}
	}
}
