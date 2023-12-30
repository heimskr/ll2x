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
#include "util/Util.h"

namespace LL2X::Passes {
	static void
	lowerDiv(Function &function, const InstructionPtr &instruction, SimpleNode *node, bool is_rem, bool is_signed) {
		OperandPtr left  = node->left->makeOperand();
		OperandPtr right = node->right->makeOperand();
		OperandPtr destination = node->operand;

		if (right->isConstant()) {
			const int64_t constant = right->getConstant();

			function.insertBefore<Mov, false>(instruction, left, destination);

			if (is_signed) {
				function.divOrRem(instruction, destination, constant, is_rem);
			} else {
				function.divOrRem(instruction, destination, uint64_t(constant), is_rem);
			}

			return;
		}

		auto rax_clobber = function.clobber(instruction, x86_64::rax);
		auto rdx_clobber = function.clobber(instruction, x86_64::rdx);

		OperandPtr rax   = Op8(function.makePrecoloredVariable(x86_64::rax, instruction->parent.lock()));
		OperandPtr rdx   = Op8(function.makePrecoloredVariable(x86_64::rdx, instruction->parent.lock()));
		const auto width = node->type->width();

		function.insertBefore<Mov, false>(instruction, Op4(0), rdx, width);
		function.insertBefore<Mov, false>(instruction, left, rax, width);
		if (is_signed)
			function.insertBefore<Idiv, false>(instruction, right, width);
		else
			function.insertBefore<Div, false>(instruction, right, width);
		function.insertBefore<Mov, false>(instruction, is_rem? rdx : rax, destination, width);

		function.unclobber(instruction, rdx_clobber);
		function.unclobber(instruction, rax_clobber);
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
	static void lowerCommutative(Function &function, const InstructionPtr &instruction, N *node) {
		const auto values = node->allValues();
		OperandPtr left  = values.at(0)->makeOperand();
		OperandPtr right = values.at(1)->makeOperand();
		OperandPtr destination = node->operand;
		const auto width = node->type->width();

		function.insertBefore<Mov, false>(instruction, left,  destination, width);
		function.insertBefore<Ins>(instruction, right, destination, width);
	}

	template <typename Ins, typename N>
	static void lowerNoncommutative(Function &function, const InstructionPtr &instruction, N *node) {
		OperandPtr left  = node->left->makeOperand();
		OperandPtr right = node->right->makeOperand();
		OperandPtr destination = node->operand;
		const auto width = node->type->width();

		function.insertBefore<Mov, false>(instruction, left, destination, width);
		function.insertBefore<Ins>(instruction, right, destination, width);
	}

	template <typename Ins, typename N>
	static void lowerShift(Function &function, const InstructionPtr &instruction, N *node) {
		OperandPtr left  = node->left->makeOperand();
		OperandPtr right = node->right->makeOperand();
		OperandPtr destination = node->operand;
		const auto width = node->type->width();

		if (right->isRegister()) {
			VariablePtr cl = function.makePrecoloredVariable(x86_64::rcx, instruction->parent.lock());
			cl->setType(IntType::make(8));
			OperandPtr cl_operand = Op1(cl);
			cl_operand->sizeForced = true;
			function.comment(instruction, "LowerShift(" + std::string(node->location) + "): operand " +
				right->toString() + " changed to " + cl_operand->toString());
			function.insertBefore<Mov, false>(instruction, right, cl_operand, 8);
			right = cl_operand;
		}

		function.insertBefore<Mov, false>(instruction, left, destination, width);
		function.insertBefore<Ins>(instruction, right, destination, width);
	}

	void lowerMath(Function &function, const InstructionPtr &instruction, BasicMathNode *node) {
		if (*node->oper == "add")
			lowerCommutative<Add>(function, instruction, node);
		else if (*node->oper == "sub")
			lowerNoncommutative<Sub>(function, instruction, node);
		else if (*node->oper == "mul")
			lowerMult(function, instruction, node);
		else if (*node->oper == "shl")
			lowerShift<Shl>(function, instruction, node);
		else
			throw std::runtime_error("Unknown math operation: " + *node->oper);
	}

	void lowerMult(Function &function, const InstructionPtr &instruction, BasicMathNode *node) {
		OperandPtr left  = node->left->makeOperand();
		OperandPtr right = node->right->makeOperand();
		OperandPtr destination = node->operand;

		if (right->isConstant()) {
			const auto constant = right->getConstant();
			if (constant == 0) {
				function.insertBefore<Xor>(instruction, destination, destination);
				return;
			}

			if (constant == 1) {
				function.insertBefore<Mov>(instruction, left, destination);
				return;
			}

			if (0 < constant && Util::isPowerOfTwo(constant)) {
				auto new_right = Op4(std::bit_width(static_cast<uint64_t>(constant)) - 1);
				function.insertBefore<Mov, false>(instruction, left, destination);
				function.insertShiftBefore<Shl>(instruction, new_right, destination);
				return;
			}

			function.insertBefore<Mov, false>(instruction, left, destination);
			function.multiply(instruction, destination, constant, true);
			return;
		}

		auto rax_clobber = function.clobber(instruction, x86_64::rax);
		auto rdx_clobber = function.clobber(instruction, x86_64::rdx);

		OperandPtr rax = Operand::make(function.makePrecoloredVariable(x86_64::rax, instruction->parent.lock()));
		OperandPtr rdx = Operand::make(function.makePrecoloredVariable(x86_64::rdx, instruction->parent.lock()));

		// mov %left, %rax
		function.insertBefore<Mov, false>(instruction, left, rax);
		// mul %right
		function.insertBefore<Mul, false>(instruction, right, destination->bitWidth);
		// mov %rax, %dest
		function.insertBefore<Mov, false>(instruction, rax, destination);

		function.unclobber(instruction, rdx_clobber);
		function.unclobber(instruction, rax_clobber);
	}

	void lowerLogic(Function &function, const InstructionPtr &instruction, LogicNode *node) {
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

	size_t lowerMath(Function &function) {
		Timer timer("LowerMath");
		std::list<InstructionPtr> to_remove;

		for (InstructionPtr &instruction: function.linearInstructions) {
			auto *llvm = dynamic_cast<LLVMInstruction *>(instruction.get());
			if (llvm == nullptr)
				continue;

			const NodeType type = llvm->node->nodeType();

			const std::string location(llvm->node->location);

			std::string end;

			if (auto *reader = dynamic_cast<Reader *>(llvm->node)) {
				end = Util::join(reader->allValues(), ", ", [](const ValuePtr &value) {
					return value? value->toString() : "(null)";
				});
			}

			if (auto *writer = dynamic_cast<Writer *>(llvm->node)) {
				if (end.empty())
					end = "?";

				if (writer->operand) {
					if (TypePtr &type = writer->operand->type)
						end += " into " + type->toString() + ' ' + writer->operand->toString();
					else
						end += " into " + writer->operand->toString() + " (unknown type)";
				} else {
					end += " into unknown operand";
				}
			}

			if (type == NodeType::BasicMath) {
				auto *node = dynamic_cast<BasicMathNode *>(llvm->node);
				function.comment(instruction, "LowerMath(" + location + "): " + end);
				lowerMath(function, instruction, node);
			} else if (type == NodeType::Logic) {
				function.comment(instruction, "LowerLogic(" + location + "): " + end);
				lowerLogic(function, instruction, dynamic_cast<LogicNode *>(llvm->node));
			} else if (type == NodeType::Div) {
				auto *div = dynamic_cast<DivNode *>(llvm->node);
				if (div->divType == DivNode::DivType::Udiv) {
					function.comment(instruction, "LowerUdiv(" + location + "): " + end);
					lowerDiv(function, instruction, div, false, false);
				} else if (div->divType == DivNode::DivType::Sdiv) {
					function.comment(instruction, "LowerSdiv(" + location + "): " + end);
					lowerDiv(function, instruction, div, false, true);
				}
			} else if (type == NodeType::Rem) {
				auto *rem = dynamic_cast<RemNode *>(llvm->node);
				if (rem->remType == RemNode::RemType::Srem) {
					function.comment(instruction, "LowerSrem(" + location + "): " + end);
					lowerDiv(function, instruction, rem, true, true);
				} else {
					function.comment(instruction, "LowerUrem(" + location + "): " + end);
					lowerDiv(function, instruction, rem, true, false);
				}
			} else if (type == NodeType::Shr) {
				auto *shr = dynamic_cast<ShrNode *>(llvm->node);
				if (shr->shrType == ShrNode::ShrType::Ashr) {
					function.comment(instruction, "LowerAshr(" + location + "): " + end);
					lowerShift<Sar>(function, instruction, shr);
				} else {
					function.comment(instruction, "LowerLshr(" + location + "): " + end);
					lowerShift<Shr>(function, instruction, shr);
				}
			} else {
				continue;
			}

			to_remove.push_back(instruction);
		}

		for (const InstructionPtr &instruction: to_remove)
			function.remove(instruction);

		return to_remove.size();
	}
}
