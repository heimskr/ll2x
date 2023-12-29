#include "compiler/Function.h"
#include "compiler/Getelementptr.h"
#include "compiler/Instruction.h"
#include "compiler/LLVMInstruction.h"
#include "compiler/Program.h"
#include "compiler/Variable.h"
#include "instruction/Lzcnt.h"
#include "pass/LowerIntrinsics.h"
#include "util/Timer.h"
#include "util/Util.h"

namespace LL2X::Passes {
	size_t lowerIntrinsics(Function &function) {
		Timer timer("LowerIntrinsics");

		std::list<InstructionPtr> to_remove;
		std::list<InstructionPtr> &linear = function.linearInstructions;

		for (auto iter = linear.begin(), end = linear.end(); iter != end; ++iter) {
			InstructionPtr &instruction = *iter;
			auto llvm = std::dynamic_pointer_cast<LLVMInstruction>(instruction);

			if (!llvm || llvm->node->nodeType() != NodeType::Call)
				continue;

			auto *call = dynamic_cast<CallNode *>(llvm->node);

			if (!call->name->isGlobal())
				continue;

			BasicBlockPtr block = instruction->parent.lock();
			auto *global = dynamic_cast<GlobalValue *>(call->name.get());
			const std::string &name = *global->name;

			if (name.find("llvm.") != 0)
				continue;

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
			} else if (name == "llvm.memmove.p0i8.p0i8.i64" || name == "llvm.memmove.p0.p0.i64") {
				auto *new_call = (new CallNode(nullptr, PointerType::make(VoidType::make()),
					StringSet::intern("memmove"), {
						call->constants[0]->convert(),
						call->constants[1]->convert(),
						call->constants[2]->convert(),
					}));

				new_call->locate(call);

				function.insertBefore<LLVMInstruction>(instruction, new_call, -1, true);
				to_remove.push_back(instruction);
			} else if (name == "llvm.memset.p0i8.i64" || name == "llvm.memset.p0.i64") {
				auto *new_call = (new CallNode(nullptr, PointerType::make(VoidType::make()),
					StringSet::intern("memset"), {
						call->constants[0]->convert(),
						std::make_shared<Constant>(IntType::make(32), call->constants[1]->convert()->value),
						call->constants[2]->convert(),
					}));

				new_call->locate(call);

				function.insertBefore<LLVMInstruction>(instruction, new_call, -1, true);
				to_remove.push_back(instruction);
			} else if (name == "llvm.ctlz.i64") {
				OperandPtr operand = OpV(function.makeVariable(call->constants[0]->convert()->value, instruction));
				function.insertBefore<Lzcnt, false>(instruction, operand, call->operand);
				to_remove.push_back(instruction);
			} else {
				error() << instruction->debugExtra() << '\n';
				throw std::runtime_error("Unhandled llvm intrinsic: " + name);
			}
		}

		if (!to_remove.empty()) {
			for (const InstructionPtr &instruction: to_remove)
				function.remove(instruction);
			function.reindexInstructions();
		}

		return to_remove.size();
	}
}
