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
	void lowerDiv(Function &function, InstructionPtr &instruction, DivNode *node) {
		for (int reg: {x86_64::rax, x86_64::rdx})
			function.insertBefore(instruction, Clobber::make(reg))->setDebug(*instruction, true);

		OperandPtr left  = node->left->makeOperand();
		OperandPtr right = node->right->makeOperand();
		OperandPtr rax   = Operand::make(function.makePrecoloredVariable(x86_64::rax, instruction->parent.lock()));
		OperandPtr rdx   = Operand::make(function.makePrecoloredVariable(x86_64::rdx, instruction->parent.lock()));

		function.insertBefore(instruction, std::make_shared<Mov>(Operand8(0),  rdx, x86_64::Width::Eight))
			->setDebug(*instruction, true);
		function.insertBefore(instruction, std::make_shared<Mov>(left, rax, x86_64::Width::Eight))
			->setDebug(*instruction, true);
		function.insertBefore(instruction, std::make_shared<Ins>(right))->setDebug(*instruction, true);
		function.insertBefore(instruction, std::make_shared<Mov>(Rem? rdx : rax, node->operand, x86_64::Width::Eight))
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
	void lowerCommutative(Function &function, InstructionPtr &instruction, N *node) {
		const auto values = node->allValues();
		OperandPtr left  = values.at(0)->makeOperand();
		OperandPtr right = values.at(0)->makeOperand();
		OperandPtr destination = node->operand;

		function.insertBefore(instruction, std::make_shared<Mov>(left, destination, x86_64::Width::Eight))
			->setDebug(*node)->extract();
		function.insertBefore(instruction, std::make_shared<Ins>(destination, right, destination->width))
			->setDebug(*node)->extract();
	}

	template <typename Ins, typename N>
	void lowerNoncommutative(Function &function, InstructionPtr &instruction, N *node) {
		OperandPtr left  = node->left->makeOperand();
		OperandPtr right = node->right->makeOperand();
		OperandPtr destination = node->operand;

		function.insertBefore(instruction, std::make_shared<Mov>(left, destination))->setDebug(*node)->extract();
		function.insertBefore(instruction, std::make_shared<Ins>(left, destination))->setDebug(*node)->extract();
	}

	static InstructionPtr insertCarefully(Function &function, InstructionPtr &instruction, OperandPtr &operand,
	                                      long value) {
		if (value < INT_MIN || INT_MAX < value) {
			auto mov = std::make_shared<Mov>(Operand4((value >> 32) & 0xffffffff), operand, x86_64::Width::Eight);
			auto shl = std::make_shared<Shl>(operand, Operand4(32), x86_64::Width::Eight);
			auto or_ = std::make_shared<Or>(operand, Operand4(value & 0xffffffff), x86_64::Width::Eight);
			function.insertBefore(instruction, mov, false)->setDebug(*instruction, true);
			function.insertBefore(instruction, shl, false)->setDebug(*instruction, true);
			function.insertBefore(instruction, or_, true)->setDebug(*instruction, true);
			return or_;
		}

		auto mov = std::make_shared<Mov>(Operand4(value), operand, x86_64::Width::Eight);
		function.insertBefore(instruction, mov)->setDebug(*instruction, true);
		return mov;
	}

	static InstructionPtr lowerNoncommutativeOrInverseBothIntlike(Function &function, InstructionPtr &instruction,
	                                                              ShrNode *node) {
		const long left  = node->left->longValue();
		const long right = node->right->longValue();

		long shifted;
		if (node->shrType == ShrNode::ShrType::Ashr)
			shifted = left >> right;
		else
			shifted = (unsigned long) left >> (unsigned long) right;

		return insertCarefully(function, instruction, node->operand, shifted);
	}

	static InstructionPtr lowerNoncommutativeOrInverseBothIntlike(Function &function, InstructionPtr &instruction,
	                                                              BasicMathNode *node) {
		const long left  = node->left->longValue();
		const long right = node->right->longValue();
		long computed = 0;

		switch (node->operSymbol) {
			case LLVMTOK_SHL:
				computed = left << right;
				break;
			default:
				throw std::runtime_error("lowerNoncommutativeOrInverseBothIntlike not implemented for " + *node->oper +
					".");
		}

		return insertCarefully(function, instruction, node->operand, computed);
	}

	template <typename R, typename I, typename II, typename N>
	InstructionPtr lowerNoncommutativeOrInverse(Function &function, InstructionPtr &instruction, N *node) {
		ValuePtr left  = node->left;
		ValuePtr right = node->right;
		if (left->isLocal()) {
			VariablePtr left_var = dynamic_cast<LocalValue *>(left.get())->variable;
			if (right->isLocal()) {
				VariablePtr right_var = dynamic_cast<LocalValue *>(right.get())->variable;
				auto new_instruction = std::make_shared<R>(left_var, right_var, node->variable);
				function.insertBefore(instruction, new_instruction)->setDebug(node)->extract();
				return new_instruction;
			} else if (right->isIntLike()) {
				InstructionPtr new_instruction;
				if (right->overflows()) {
					new_instruction = std::make_shared<R>(left_var, function.get64(instruction, right->longValue()),
						node->variable);
				} else {
					auto new_i = std::make_shared<I>(left_var, right->intValue(), node->variable);
					new_i->setOriginalValue(right);
					new_instruction = new_i;
				}
				function.insertBefore(instruction, new_instruction)->setDebug(node)->extract();
				return new_instruction;
			} else
				throw std::runtime_error("Unexpected value type in " + getName(node) + " instruction: " +
					value_map.at(right->valueType()));
		} else if (left->isIntLike()) {
			if (right->isLocal()) {
				VariablePtr right_var = dynamic_cast<LocalValue *>(right.get())->variable;
				InstructionPtr new_instruction;
				if (left->overflows()) {
					VariablePtr left_var = function.get64(instruction, left->longValue());
					new_instruction = std::make_shared<R>(left_var, right_var, node->variable);
				} else {
					auto new_ii = std::make_shared<II>(right_var, left->intValue(false), node->variable);
					new_ii->setOriginalValue(left);
					new_instruction = new_ii;
				}
				function.insertBefore(instruction, new_instruction)->setDebug(node)->extract();
				return new_instruction;
			}

			if (right->isIntLike())
				return lowerNoncommutativeOrInverseBothIntlike(function, instruction, node);

			node->debug();
			throw std::runtime_error("RHS must be a pvar or intlike when the LHS is intlike in a " + getName(node) +
				" instruction.");
		} else {
			node->debug();
			throw std::runtime_error("Only pvars and intlikes are unsupported on the LHS of a " + getName(node) +
				" instruction");
		}
	}

	static void truncate(Function &function, InstructionPtr &last, BasicMathNode *node) {
		switch (node->type->width()) {
			case 64:
				break;
			case 32:
				function.insertAfter(last, std::make_shared<LuiInstruction>(node->variable, 0))
					->setDebug(node)->extract();
				break;
			case 24:
				function.insertAfter(last, std::make_shared<AndIInstruction>(node->variable, 0xffffff, node->variable))
					->setDebug(node)->extract();
				break;
			case 16:
				function.insertAfter(last, std::make_shared<AndIInstruction>(node->variable, 0xffff, node->variable))
					->setDebug(node)->extract();
				break;
			case 8:
				function.insertAfter(last, std::make_shared<AndIInstruction>(node->variable, 0xff, node->variable))
					->setDebug(node)->extract();
				break;
			default:
				node->debug();
				throw std::runtime_error("Unsupported bit width: " + std::to_string(node->type->width()));
		}
	}

	void lowerMath(Function &function, InstructionPtr &instruction, BasicMathNode *node) {
		if (*node->oper == "add") {
			lowerCommutative<AddRInstruction, AddIInstruction>(function, instruction, node);
		} else if (*node->oper == "sub") {
			lowerSub(function, instruction, node);
		} else if (*node->oper == "mul") {
			lowerMult(function, instruction, node);
		} else if (*node->oper == "shl") {
			auto last = lowerNoncommutativeOrInverse<ShiftLeftLogicalRInstruction, ShiftLeftLogicalIInstruction,
				ShiftLeftLogicalInverseIInstruction>(function, instruction, node);
			// It's necessary to truncate the value if the operand's bit width is smaller than a register's capacity.
			truncate(function, last, node);
		} else
			throw std::runtime_error("Unknown math operation: " + *node->oper);
	}

	void lowerMult(Function &function, InstructionPtr &instruction, BasicMathNode *node) {
		ValuePtr left = node->left, right = node->right;

		if (!left->isLocal()) {
			if (right->isLocal()) {
				// The operation is commutative, so we can get away with this.
				std::swap(left, right);
			} else {
				std::cerr << instruction->debugExtra() << "\n";
				throw std::runtime_error("Left value of mult instruction expected to be a pvar");
			}
		}

		VariablePtr left_var = dynamic_cast<LocalValue *>(left.get())->variable;
		VariablePtr lo = function.makePrecoloredVariable(WhyInfo::loOffset, instruction->parent.lock());
		if (right->isLocal()) {
			VariablePtr right_var = dynamic_cast<LocalValue *>(right.get())->variable;
			auto mult = std::make_shared<MultRInstruction>(left_var, right_var);
			auto movelo = std::make_shared<MoveInstruction>(lo, node->variable);
			function.insertBefore(instruction, mult)->setDebug(node)->extract();
			function.insertBefore(instruction, movelo)->setDebug(node)->extract();
		} else if (right->isIntLike()) {
			std::shared_ptr<WhyInstruction> mult;
			if (right->overflows()) {
				mult = std::make_shared<MultRInstruction>(left_var, function.get64(instruction, right->longValue()));
			} else {
				auto imult = std::make_shared<MultIInstruction>(left_var, right->intValue());
				imult->setOriginalValue(right);
				mult = imult;
			}

			auto movelo = std::make_shared<MoveInstruction>(lo, node->variable);
			function.insertBefore(instruction, mult)->setDebug(node)->extract();
			function.insertBefore(instruction, movelo)->setDebug(node)->extract();
		} else
			throw std::runtime_error("Unexpected value type in mult instruction: " + value_map.at(right->valueType()));
	}

	void lowerSub(Function &function, InstructionPtr &instruction, BasicMathNode *node) {
		ValuePtr left = node->left, right = node->right;

		if (left->isLocal()) {
			// If the LHS is a pvar, we can lower the instruction into one Why instruction.
			VariablePtr left_var = dynamic_cast<LocalValue *>(left.get())->variable;
			if (right->isLocal()) {
				VariablePtr right_var = dynamic_cast<LocalValue *>(right.get())->variable;
				auto sub = std::make_shared<SubRInstruction>(left_var, right_var, node->variable);
				function.insertBefore(instruction, sub)->setDebug(node)->extract();
			} else if (right->isIntLike()) {
				std::shared_ptr<WhyInstruction> sub;
				if (right->overflows()) {
					VariablePtr overflow_var = function.get64(instruction, right->longValue());
					sub = std::make_shared<SubRInstruction>(left_var, overflow_var, node->variable);
				} else {
					auto isub = std::make_shared<SubIInstruction>(left_var, right->intValue(), node->variable);
					isub->setOriginalValue(right);
					sub = std::move(isub);
				}
				function.insertBefore(instruction, sub)->setDebug(node)->extract();
			} else if (right->isGlobal()) {
				VariablePtr right_var = function.newVariable(node->type);
				auto set = std::make_shared<SetInstruction>(right_var, dynamic_cast<GlobalValue *>(right.get())->name);
				function.insertBefore(instruction, set)->setDebug(node)->extract();
				auto sub = std::make_shared<SubRInstruction>(left_var, right_var, node->variable);
				function.insertBefore(instruction, sub)->setDebug(node)->extract();
			} else
				throw std::runtime_error("Unexpected value type in sub instruction: " +
					value_map.at(right->valueType()));
		} else if (right->isLocal()) {
			// If the LHS is intlike, we can't usually lower the instruction directly into one Why instruction because
			// there are no subtraction instructions that support immediate values in the LHS.
			if (!left->isIntLike())
				throw std::runtime_error("Unexpected value type in sub instruction: " +
					value_map.at(left->valueType()));

			VariablePtr right_var = dynamic_cast<LocalValue *>(right.get())->variable;
			VariablePtr zero	  = function.makePrecoloredVariable(WhyInfo::zeroOffset, instruction->parent.lock());
			if (left->longValue() == 0) {
				// In cases where the LHS is zero, we can use the convenient zero register and use just one instruction.
				auto sub = std::make_shared<SubRInstruction>(zero, right_var, node->variable);
				function.insertBefore(instruction, sub)->setDebug(node)->extract();
			} else {
				// If the LHS is a non-zero integer, we need to use the property a-b = -(b-a) and then subtract the
				// result from the zero register to fix the sign.
				auto m0 = function.m0(instruction);
				InstructionPtr reverse;
				if (left->overflows()) {
					reverse = std::make_shared<SubRInstruction>(right_var,
						function.get64(instruction, left->longValue()), m0);
				} else {
					auto subi = std::make_shared<SubIInstruction>(right_var, left->intValue(false), m0);
					subi->setOriginalValue(left);
					reverse = subi;
				}
				auto fix = std::make_shared<SubRInstruction>(zero, m0, node->variable);
				function.insertBefore(instruction, reverse)->setDebug(node)->extract();
				function.insertBefore(instruction, fix)->setDebug(node)->extract();
			}
		} else if (left->isIntLike() && right->isIntLike()) {
			// Sometimes I've seen things like
			//     %13 = sub i64 23, 1
			// after running mem2reg.
			insertCarefully(function, instruction, node->variable, left->longValue() - right->longValue());
		} else {
			std::cerr << instruction->debugExtra() << '\n';
			throw std::runtime_error("At least one operand of sub instruction expected to be a local variable");
		}
	}

	void lowerLogic(Function &function, InstructionPtr &instruction, LogicNode *node) {
		switch (node->logicType) {
			case LogicType::And:
				lowerCommutative<AndRInstruction, AndIInstruction>(function, instruction, node);
				break;
			case LogicType::Or:
				lowerCommutative<OrRInstruction, OrIInstruction>(function, instruction, node);
				break;
			case LogicType::Xor:
				lowerCommutative<XorRInstruction, XorIInstruction>(function, instruction, node);
				break;
			default:
				throw std::runtime_error("Unknown logic type: " + std::to_string(static_cast<int>(node->logicType)));
		}
	}

	template <typename R, typename I>
	void lowerRem(Function &function, InstructionPtr &instruction, RemNode *node) {
		ValuePtr left  = node->left;
		ValuePtr right = node->right;

		if (left->isLocal()) {
			VariablePtr left_var = dynamic_cast<LocalValue *>(left.get())->variable;
			if (right->isLocal()) {
				VariablePtr right_var = dynamic_cast<LocalValue *>(right.get())->variable;
				auto mod = std::make_shared<R>(left_var, right_var, node->variable);
				function.insertBefore(instruction, mod)->setDebug(node)->extract();
			} else if (right->isIntLike()) {
				std::shared_ptr<WhyInstruction> mod;
				if (right->overflows()) {
					VariablePtr overflow_var = function.get64(instruction, right->longValue(), false);
					mod = std::make_shared<R>(left_var, overflow_var, node->variable);
				} else {
					auto imod = std::make_shared<I>(left_var, right->intValue(), node->variable);
					imod->setOriginalValue(right);
					mod = std::move(imod);
				}
				function.insertBefore(instruction, mod)->setDebug(node)->extract();
			} else
				throw std::runtime_error("Unexpected RHS value type in remainder instruction: " +
					value_map.at(right->valueType()));
		} else if (left->isIntLike()) {
			if (right->isLocal()) {
				// Instead of making a backwards immediate modulo instruction, we can just put the immediate value into
				// $m0 and use the R-type modulo instruction.
				VariablePtr right_var = dynamic_cast<LocalValue *>(right.get())->variable;
				VariablePtr m0 = function.m0(instruction);
				auto set = std::make_shared<SetInstruction>(m0, left->intValue(false));
				set->setOriginalValue(left);
				auto mod = std::make_shared<R>(m0, right_var, node->variable);
				function.insertBefore(instruction, set)->setDebug(node)->extract();
				function.insertBefore(instruction, mod)->setDebug(node)->extract();
			} else
				throw std::runtime_error("Invalid RHS value type with constant LHS in remainder instruction: " +
					std::string(*right));
		} else
			throw std::runtime_error("Unrecognized LHS value type in remainder instruction: " + std::string(*left));
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
					lowerDiv<Div>(function, instruction, div);
				else if (div->divType == DivNode::DivType::Sdiv)
					lowerDiv<Idiv>(function, instruction, div);
			} else if (type == NodeType::Rem) {
				RemNode *rem = dynamic_cast<RemNode *>(llvm->node);
				if (rem->remType == RemNode::RemType::Srem)
					lowerRem<ModRInstruction, ModIInstruction>(function, instruction, rem);
				else
					lowerRem<ModuRInstruction, ModuIInstruction>(function, instruction, rem);
			} else if (type == NodeType::Shr) {
				ShrNode *shr = dynamic_cast<ShrNode *>(llvm->node);
				if (shr->shrType == ShrNode::ShrType::Ashr) {
					// If we're arithmetic-shifting a smaller value to the right, we need to sign extend it.
					const int  width	  = shr->type->width();
					const bool left_local = shr->left->isLocal();
					if (width == 32 && left_local) {
						VariablePtr left = dynamic_cast<LocalValue *>(shr->left.get())->getVariable(function);
						function.insertBefore(instruction, std::make_shared<Sext32RInstruction>(left, left))
							->setDebug(shr)
							->extract();
					} else if (width == 16 && left_local) {
						VariablePtr left = dynamic_cast<LocalValue *>(shr->left.get())->getVariable(function);
						function.insertBefore(instruction, std::make_shared<Sext16RInstruction>(left, left))
							->setDebug(shr)->extract();
					} else if (width == 8 && left_local) {
						VariablePtr left = dynamic_cast<LocalValue *>(shr->left.get())->getVariable(function);
						function.insertBefore(instruction, std::make_shared<Sext8RInstruction>(left, left))
							->setDebug(shr)->extract();
					} else if (width < 64 && left_local)
						warn() << "Arithmetic shift right at " << shr->location << " needs to be sign extended from "
								  "width " << width << " to 64, but sign extension from that width is currently "
								  "unsupported.\n";
					lowerNoncommutativeOrInverse<ShiftRightArithmeticRInstruction, ShiftRightArithmeticIInstruction,
						ShiftRightArithmeticInverseIInstruction>(function, instruction, shr);
				} else
					lowerNoncommutativeOrInverse<ShiftRightLogicalRInstruction, ShiftRightLogicalIInstruction,
						ShiftRightLogicalInverseIInstruction>(function, instruction, shr);
			} else
				continue;

			to_remove.push_back(instruction);
		}

		for (InstructionPtr &instruction: to_remove)
			function.remove(instruction);

		return to_remove.size();
	}
}
