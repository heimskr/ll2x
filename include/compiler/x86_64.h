#pragma once

#include <set>
#include <stdexcept>
#include <string>
#include <unordered_set>

#include "parser/Enums.h"

namespace LL2X::x86_64 {
	/** Contains constants and functions pertaining to x86_64. */
	enum class Width {Low, High, Two, Four, Eight};

	enum class Condition {
		Unconditional,
		IfEqual,
		IfNotEqual,
		IfNegative,
		IfNonnegative,
		IfGreaterSigned,
		IfGreaterOrEqualSigned,
		IfLessSigned,
		IfLessOrEqualSigned,
		IfGreaterUnsigned,
		IfGreaterOrEqualUnsigned,
		IfLessUnsigned,
		IfLessOrEqualUnsigned,
	};

	constexpr int floatWidth = 4, doubleWidth = 8, pointerWidth = 8; // in bytes

	constexpr int totalRegisters = 17;
	constexpr int generalPurposeRegisters = 14; // %rbp and %rsp aren't counted as general-purpose registers.

	constexpr int rbp =  0;
	constexpr int rsp =  1;
	constexpr int rax =  2;
	constexpr int rbx =  3;
	constexpr int rcx =  4;
	constexpr int rdx =  5;
	constexpr int rsi =  6;
	constexpr int rdi =  7;
	constexpr int r8  =  8;
	constexpr int r9  =  9;
	constexpr int r10 = 10;
	constexpr int r11 = 11;
	constexpr int r12 = 12;
	constexpr int r13 = 13;
	constexpr int r14 = 14;
	constexpr int r15 = 15;
	constexpr int rip = 16;

	extern std::unordered_set<int> calleeSaved;

	std::set<int> makeRegisterPool();
	bool isSpecialPurpose(int);
	std::string registerName(int, Width = Width::Eight);
	std::string conditionSuffix(Condition);
	std::string widthSuffix(Width);
	constexpr Width getWidth(int bits) {
		switch (bits) {
			case 64: return Width::Eight;
			case 32: return Width::Four;
			case 24: return Width::Four;
			case 16: return Width::Two;
			case  8:
			case  1: return Width::Low;
			default:
				throw std::invalid_argument("No width corresponds to bit length " + std::to_string(bits));
		}
	}
	Condition getCondition(IcmpCond);
}
