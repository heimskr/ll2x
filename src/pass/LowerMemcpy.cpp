#include "compiler/Function.h"
#include "compiler/Getelementptr.h"
#include "compiler/Instruction.h"
#include "compiler/LLVMInstruction.h"
#include "compiler/Program.h"
#include "compiler/Variable.h"
#include "pass/LowerMemcpy.h"
#include "util/Timer.h"
#include "util/Util.h"

namespace LL2X::Passes {
	size_t lowerMemcpy(Function &function) {
		Timer timer("LowerMemcpy");

		std::list<InstructionPtr> to_remove;
		std::list<InstructionPtr> &linear = function.linearInstructions;

		for (auto iter = linear.begin(), end = linear.end(); iter != end;) {
			InstructionPtr &instruction = *iter;
			auto llvm = std::dynamic_pointer_cast<LLVMInstruction>(instruction);
			if (!llvm || llvm->node->nodeType() != NodeType::Call) {
				++iter;
				continue;
			}
			auto *call = dynamic_cast<CallNode *>(llvm->node);
			if (!call->name->isGlobal()) {
				++iter;
				continue;
			}
			BasicBlockPtr block = instruction->parent.lock();
			auto *global = dynamic_cast<GlobalValue *>(call->name.get());
			const std::string &name = *global->name;
			if (name.find("llvm.memcpy.") == std::string::npos) {
				++iter;
				continue;
			}

			if (name == "llvm.memcpy.p0i8.p0i8.i64" || name == "llvm.memcpy.p0.p0.i64") {
				auto *new_call = (new CallNode(nullptr, PointerType::make(VoidType::make()),
					StringSet::intern("memcpy"), {
						call->constants[0]->convert(),
						call->constants[1]->convert(),
						call->constants[2]->convert(),
					}));

				new_call->locate(call);

				function.insertBefore<LLVMInstruction>(instruction, new_call, -1, true);
				to_remove.push_back(instruction);
				++iter;
			} else
				throw std::runtime_error("Unhandled memcpy intrinsic: " + name);
			++iter;
		}

		if (!to_remove.empty()) {
			for (const InstructionPtr &instruction: to_remove)
				function.remove(instruction);
			function.reindexInstructions();
		}

		return to_remove.size();
	}
}
