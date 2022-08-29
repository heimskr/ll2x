#include "compiler/Function.h"
#include "compiler/Instruction.h"
#include "compiler/LLVMInstruction.h"
#include "compiler/Program.h"
#include "compiler/Variable.h"
#include "pass/LowerMemset.h"
#include "util/Timer.h"
#include "util/Util.h"

namespace LL2X::Passes {
	size_t lowerMemset(Function &function) {
		Timer timer("LowerMemset");

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
			if (std::string_view(name).substr(0, sizeof("llvm.memset.") - 1) != "llvm.memset.") {
				++iter;
				continue;
			}

			if (name == "llvm.memset.p0i8.i64") {
				// TODO: mysterious volatile 4th parameter

				auto *new_call = (new CallNode(nullptr, PointerType::make(VoidType::make()),
					StringSet::intern("memset"), {
						call->constants[0]->convert(),
						std::make_shared<Constant>(IntType::make(32), call->constants[1]->convert()->value),
						call->constants[2]->convert(),
					}));

				new_call->locate(call);

				function.insertBefore<LLVMInstruction>(instruction, new_call, -1, true);
				to_remove.push_back(instruction);
				++iter;
			} else
				throw std::runtime_error("Unhandled memset intrinsic: " + name);

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
