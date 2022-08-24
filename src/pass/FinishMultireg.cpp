#include "compiler/Function.h"
#include "instruction/Add.h"
#include "instruction/DeferredDestinationMove.h"
#include "instruction/DeferredSourceMove.h"
#include "instruction/Mov.h"
#include "pass/FinishMultireg.h"
#include "util/Timer.h"

namespace LL2X::Passes {
	void finishMultireg(Function &function) {
		Timer timer("FinishMultireg");
		std::list<InstructionPtr> to_remove;

		for (InstructionPtr &instruction: function.linearInstructions) {
			if (auto defsource = std::dynamic_pointer_cast<DeferredSourceMove>(instruction)) {
				if (!defsource->source->isRegister()) {
					error() << defsource->debugExtra() << '\n';
					throw std::runtime_error("Deferred-source move has non-register source operand");
				}
				if (defsource->source->reg->registers.empty())
					throw std::runtime_error("Deferred-source move has no registers allocated to its source");
				const int reg = *std::next(defsource->source->reg->registers.begin(), defsource->registerIndex);
				auto var = function.makePrecoloredVariable(reg, defsource->parent.lock());
				auto move = std::make_shared<Mov>(OperandV(var), defsource->destination);
				function.insertBefore(instruction, move)->setDebug(*defsource, true);
				to_remove.push_back(instruction);
			} else if (auto defdest = std::dynamic_pointer_cast<DeferredDestinationMove>(instruction)) {
				if (!defdest->source->isRegister()) {
					error() << defdest->debugExtra() << '\n';
					throw std::runtime_error("Deferred-destination move has non-register destination operand");
				}
				if (defdest->destination->reg->registers.empty())
					throw std::runtime_error("Deferred-destination move has no registers allocated to its destination");
				const int reg = *std::next(defdest->destination->reg->registers.begin(), defdest->registerIndex);
				auto var = function.makePrecoloredVariable(reg, defdest->parent.lock());
				auto move = std::make_shared<Mov>(defdest->source, OperandV(var));
				function.insertBefore(instruction, move)->setDebug(*defdest, true);
				to_remove.push_back(instruction);
			} else if (auto mov = std::dynamic_pointer_cast<Mov>(instruction)) {
				const bool multi_source = mov->source->isRegister() && 1 < mov->source->reg->registers.size();
				const bool multi_dest = mov->destination->isRegister() && 1 < mov->destination->reg->registers.size();

				if (multi_source && multi_dest) {
					warn() << "Skipping mov instruction with register packs in both the source and destination: "
					       << mov->debugExtra() << '\n';
					continue;
				}


				if (!multi_source && !multi_dest)
					continue;

				info() << "Size of " << mov->debugExtra() << ": " << mov->size << " bits\n";
			}
				// if (multi_source) {
				// 	auto bytes_remaining = mov->widt
				// }
			// } else if (auto *load = dynamic_cast<LoadRInstruction *>(instruction.get())) {
			// 	if (load->rd->registers.size() < 2)
			// 		continue;

			// 	auto m4 = function.mx(4, instruction);
			// 	auto move = std::make_shared<MoveInstruction>(load->rs, m4);
			// 	function.insertBefore(instruction, move)->setDebug(load)->extract();
			// 	auto iter = load->rd->registers.begin();
			// 	auto bytes_remaining = load->size;

			// 	while (8 <= bytes_remaining) {
			// 		auto precolored = function.makePrecoloredVariable(*iter++, load->parent.lock());
			// 		auto new_load = std::make_shared<LoadRInstruction>(m4, precolored, 8);
			// 		function.insertBefore(instruction, new_load)->setDebug(load)->extract();
			// 		bytes_remaining -= 8;
			// 		if (0 < bytes_remaining)
			// 			function.insertBefore(instruction, std::make_shared<AddIInstruction>(m4, 8, m4))
			// 				->setDebug(load)->extract();
			// 	}

			// 	for (int size = 4; 0 < size; size /= 2) {
			// 		if (size <= bytes_remaining) {
			// 			auto precolored = function.makePrecoloredVariable(*iter++, load->parent.lock());
			// 			auto new_load = std::make_shared<LoadRInstruction>(m4, precolored, size);
			// 			function.insertBefore(instruction, new_load)->setDebug(load)->extract();
			// 			bytes_remaining -= size;
			// 			if (0 < bytes_remaining)
			// 				function.insertBefore(instruction, std::make_shared<AddIInstruction>(m4, size, m4))
			// 					->setDebug(load)->extract();
			// 		}
			// 	}

			// 	to_remove.push_back(instruction);
			// } else if (auto *store = dynamic_cast<StoreRInstruction *>(instruction.get())) {
			// 	if (store->rs->registers.size() < 2)
			// 		continue;

			// 	auto m4 = function.mx(4, instruction);
			// 	auto move = std::make_shared<MoveInstruction>(store->rt, m4);
			// 	function.insertBefore(instruction, move)->setDebug(store)->extract();
			// 	auto iter = store->rs->registers.begin();
			// 	auto bytes_remaining = store->size;

			// 	while (8 <= bytes_remaining) {
			// 		auto precolored = function.makePrecoloredVariable(*iter++, store->parent.lock());
			// 		auto new_store = std::make_shared<StoreRInstruction>(precolored, m4, 8);
			// 		function.insertBefore(instruction, new_store)->setDebug(store)->extract();
			// 		bytes_remaining -= 8;
			// 		if (0 < bytes_remaining)
			// 			function.insertBefore(instruction, std::make_shared<AddIInstruction>(m4, 8, m4))
			// 				->setDebug(store)->extract();
			// 	}

			// 	for (int size = 4; 0 < size; size /= 2) {
			// 		if (size <= bytes_remaining) {
			// 			auto precolored = function.makePrecoloredVariable(*iter++, store->parent.lock());
			// 			auto new_store = std::make_shared<StoreRInstruction>(precolored, m4, size);
			// 			function.insertBefore(instruction, new_store)->setDebug(store)->extract();
			// 			bytes_remaining -= size;
			// 			if (0 < bytes_remaining)
			// 				function.insertBefore(instruction, std::make_shared<AddIInstruction>(m4, size, m4))
			// 					->setDebug(store)->extract();
			// 		}
			// 	}

			// 	to_remove.push_back(instruction);
			// }
		}

		for (InstructionPtr &instruction: to_remove)
			function.remove(instruction);
	}
}
