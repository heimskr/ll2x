// Sorry for all the repetition.

#include <climits>
#include <iostream>

#include "compiler/Function.h"
#include "compiler/Instruction.h"
#include "compiler/LLVMInstruction.h"
#include "instruction/Add.h"
#include "instruction/And.h"
#include "instruction/Clobber.h"
#include "instruction/Div.h"
#include "instruction/Idiv.h"
#include "instruction/Imul.h"
#include "instruction/Mov.h"
#include "instruction/Mul.h"
#include "instruction/Or.h"
#include "instruction/Sar.h"
#include "instruction/Shl.h"
#include "instruction/Shr.h"
#include "instruction/Sub.h"
#include "instruction/Xor.h"
#include "pass/LowerMath.h"
#include "util/Timer.h"

namespace LL2X::Passes {
	template <typename Ins, bool Rem>
	static void lowerDiv(Function &function, InstructionPtr &instruction, SimpleNode *node) {
		for (int reg: {x86_64::rax, x86_64::rdx})
			function.insertBefore(instruction, Clobber::make(reg))->setDebug(*instruction, true);

		OperandPtr left  = node->left->makeOperand();
		OperandPtr right = node->right->makeOperand();
		OperandPtr rax   = Operand8(function.makePrecoloredVariable(x86_64::rax, instruction->parent.lock()));
		OperandPtr rdx   = Operand8(function.makePrecoloredVariable(x86_64::rdx, instruction->parent.lock()));
		const auto width = x86_64::getWidth(node->type->width());

		function.insertBefore(instruction, std::make_shared<Mov>(Operand4(0), rdx, width))
			->setDebug(*instruction, true);
		function.insertBefore(instruction, std::make_shared<Mov>(left, rax, width))->setDebug(*instruction, true);
		function.insertBefore(instruction, std::make_shared<Ins>(right, width))->setDebug(*instruction, true);
		function.insertBefore(instruction, std::make_shared<Mov>(Rem? rdx : rax, node->operand, width))
			->setDebug(*instruction, true);

		for (int reg: {x86_64::rdx, x86_64::rax})
			function.insertBefore(instruction, Unclobber::make(reg))->setDebug(*instruction, true);
	}

	std::string getName(BasicMathNode *node) {
		return *node->oper;
	}

	std::string getName(LogicNode *node) {
		switch (node->logicType) {
			case LogicType::And: return "and";
			case LogicType::Or:  return "or";
			case LogicType::Xor: return "xor";
			default:
				return std::to_string(static_cast<int>(node->logicType));
		}
	}

	std::string getName(ShrNode *node) {
		switch (node->shrType) {
			case ShrNode::ShrType::Ashr: return "ashr";
			case ShrNode::ShrType::Lshr: return "lshr";
			default:
				return "invalid";
		}
	}

	template <typename Ins, typename N>
	static void lowerCommutative(Function &function, InstructionPtr &instruction, N *node) {
		const auto values = node->allValues();
		OperandPtr left  = values.at(0)->makeOperand();
		OperandPtr right = values.at(1)->makeOperand();
		OperandPtr destination = node->operand;
		const auto width = x86_64::getWidth(node->type->width());

		function.insertBefore(instruction, std::make_shared<Mov>(left, destination, width))->setDebug(*node)->extract();
		function.insertBefore(instruction, std::make_shared<Ins>(right, destination, width))
			->setDebug(*node)->extract();
	}

	template <typename Ins, typename N>
	static void lowerNoncommutative(Function &function, InstructionPtr &instruction, N *node) {
		OperandPtr left  = node->left->makeOperand();
		OperandPtr right = node->right->makeOperand();
		OperandPtr destination = node->operand;
		const auto width = x86_64::getWidth(node->type->width());

		function.insertBefore(instruction, std::make_shared<Mov>(left, destination, width))->setDebug(*node)->extract();
		function.insertBefore(instruction, std::make_shared<Ins>(right, destination, width))
			->setDebug(*node)->extract();
	}

	void lowerMath(Function &function, InstructionPtr &instruction, BasicMathNode *node) {
		if (*node->oper == "add") {
			lowerCommutative<Add>(function, instruction, node);
		} else if (*node->oper == "sub") {
			lowerNoncommutative<Sub>(function, instruction, node);
		} else if (*node->oper == "mul") {
			lowerMult(function, instruction, node);
		} else if (*node->oper == "shl") {
			lowerNoncommutative<Shl>(function, instruction, node);
		} else
			throw std::runtime_error("Unknown math operation: " + *node->oper);
	}

	void lowerMult(Function &function, InstructionPtr &instruction, BasicMathNode *node) {
		for (int reg: {x86_64::rax, x86_64::rdx})
			function.insertBefore(instruction, Clobber::make(reg))->setDebug(*instruction, true);

		OperandPtr left  = node->left->makeOperand();
		OperandPtr right = node->right->makeOperand();
		OperandPtr rax   = Operand::make(function.makePrecoloredVariable(x86_64::rax, instruction->parent.lock()));
		OperandPtr rdx   = Operand::make(function.makePrecoloredVariable(x86_64::rdx, instruction->parent.lock()));
		OperandPtr destination = node->operand;

		function.insertBefore(instruction, std::make_shared<Mov>(left, rax, x86_64::Width::Eight))
			->setDebug(*instruction, true);
		function.insertBefore(instruction, std::make_shared<Mul>(right, destination->width))
			->setDebug(*instruction, true);
		function.insertBefore(instruction, std::make_shared<Mov>(rax, destination, x86_64::Width::Eight))
			->setDebug(*instruction, true);

		for (int reg: {x86_64::rdx, x86_64::rax})
			function.insertBefore(instruction, Unclobber::make(reg))->setDebug(*instruction, true);
	}

	void lowerLogic(Function &function, InstructionPtr &instruction, LogicNode *node) {
		switch (node->logicType) {
			case LogicType::And:
				lowerCommutative<And>(function, instruction, node);
				break;
			case LogicType::Or:
				lowerCommutative<Or>(function, instruction, node);
				break;
			case LogicType::Xor:
				lowerCommutative<Xor>(function, instruction, node);
				break;
			default:
				throw std::runtime_error("Unknown logic type: " + std::to_string(static_cast<int>(node->logicType)));
		}
	}

	int lowerMath(Function &function) {
		Timer timer("LowerMath");
		std::list<InstructionPtr> to_remove;

		for (InstructionPtr &instruction: function.linearInstructions) {
			LLVMInstruction *llvm = dynamic_cast<LLVMInstruction *>(instruction.get());
			if (!llvm)
				continue;

			const NodeType type = llvm->node->nodeType();
			if (type == NodeType::BasicMath) {
				lowerMath(function, instruction, dynamic_cast<BasicMathNode *>(llvm->node));
			} else if (type == NodeType::Logic) {
				lowerLogic(function, instruction, dynamic_cast<LogicNode *>(llvm->node));
			} else if (type == NodeType::Div) {
				DivNode *div = dynamic_cast<DivNode *>(llvm->node);
				if (div->divType == DivNode::DivType::Udiv)
					lowerDiv<Div, false>(function, instruction, div);
				else if (div->divType == DivNode::DivType::Sdiv)
					lowerDiv<Idiv, false>(function, instruction, div);
			} else if (type == NodeType::Rem) {
				RemNode *rem = dynamic_cast<RemNode *>(llvm->node);
				if (rem->remType == RemNode::RemType::Srem)
					lowerDiv<Div, true>(function, instruction, rem);
				else
					lowerDiv<Idiv, true>(function, instruction, rem);
			} else if (type == NodeType::Shr) {
				ShrNode *shr = dynamic_cast<ShrNode *>(llvm->node);
				if (shr->shrType == ShrNode::ShrType::Ashr)
					lowerNoncommutative<Sar>(function, instruction, shr);
				else
					lowerNoncommutative<Shr>(function, instruction, shr);
			} else
				continue;

			to_remove.push_back(instruction);
		}

		for (InstructionPtr &instruction: to_remove)
			function.remove(instruction);

		return to_remove.size();
	}
}
