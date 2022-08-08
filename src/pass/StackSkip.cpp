#include "compiler/Function.h"
#include "instruction/Sub.h"
#include "pass/InsertLabels.h"
#include "pass/StackSkip.h"
#include "util/Timer.h"

namespace LL2X::Passes {
	void insertStackSkip(Function &function) {
		Timer timer("InsertStackSkip");
		if (function.isNaked())
			return;
		BasicBlockPtr entry = function.getEntry();
		auto sp = function.stackPointer(entry);
		auto sub = std::make_shared<SubInstruction>(sp, 0, x86_64::Width::Eight);
		function.insertBefore(function.linearInstructions.front(), sub, "InsertStackSkip")
			->setDebug(function.initialDebugIndex)->extract();
		function.categories["StackSkip"].insert(sub);
	}

	void readjustStackSkip(Function &function) {
		Timer timer("ReadjustStackSkip");
		if (function.isNaked())
			return;
		if (function.categories.count("StackSkip") == 0)
			throw std::runtime_error("No StackSkip category found in function " + *function.name);
		const auto &set = function.categories.at("StackSkip");
		if (set.size() != 1)
			throw std::runtime_error("Expected size of StackSkip set to be exactly one, but it's " +
				std::to_string(set.size()));
		// We need to add an offset of 8 because spush subtracts and then writes to memory.
		dynamic_cast<SubInstruction *>(set.begin()->get())->sourceOnly = function.spillSize + 8;
	}
}
