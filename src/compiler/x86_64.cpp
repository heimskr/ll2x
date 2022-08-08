#include <tuple>

#include "compiler/x86_64.h"
#include "util/Util.h"

namespace LL2X::x86_64 {
	std::set<int> makeRegisterPool() {
		return {rax, rbx, rcx, rdx, rsi, rdi, r8, r9, r10, r11, r12, r13, r14, r15};
	}

	bool isSpecialPurpose(int reg) {
		return reg == rsp || reg == rbp;
	}

	static std::string baseName(int reg) {
		switch (reg) {
			case rax: return "a";
			case rbx: return "b";
			case rcx: return "c";
			case rdx: return "d";
			case rbp: return "bp";
			case rsp: return "sp";
			case rsi: return "si";
			case rdi: return "di";
			case r8:  return "r8";
			case r9:  return "r9";
			case r10: return "r10";
			case r11: return "r11";
			case r12: return "r12";
			case r13: return "r13";
			case r14: return "r14";
			case r15: return "r15";
			default:
				throw std::invalid_argument("Invalid register: " + std::to_string(reg));
		}
	}

	std::string registerName(int reg, Width width) {
		switch (width) {
			case Width::Low:
				switch (reg) {
					case rax:
					case rbx:
					case rcx:
					case rdx:
					case rbp:
					case rsp:
					case rsi:
					case rdi:
						return baseName(reg) + 'l';
					default:
						return baseName(reg) + 'b';
				}
			case Width::High:
				switch (reg) {
					case rax:
					case rbx:
					case rcx:
					case rdx:
						return baseName(reg) + 'h';
					default:
						throw std::runtime_error("Invalid register: " + baseName(reg) + 'h');
				}
			case Width::Two:
				switch (reg) {
					case rax:
					case rbx:
					case rcx:
					case rdx:
						return baseName(reg) + 'x';
					case rbp:
					case rsp:
					case rsi:
					case rdi:
						return baseName(reg);
					default:
						return baseName(reg) + 'w';
				}
			case Width::Four:
				switch (reg) {
					case rax:
					case rbx:
					case rcx:
					case rdx:
						return {'e', static_cast<char>('a' + reg), 'x'};
					case rbp:
					case rsp:
					case rsi:
					case rdi:
						return 'e' + baseName(reg);
					default:
						return baseName(reg) + 'd';
				}
			case Width::Eight:
				switch (reg) {
					case rax:
					case rbx:
					case rcx:
					case rdx:
						return {'r', static_cast<char>('a' + reg), 'x'};
					case rbp:
					case rsp:
					case rsi:
					case rdi:
						return 'r' + baseName(reg);
					default:
						return baseName(reg);
				}
			default:
				throw std::runtime_error("Invalid width: " + std::to_string(static_cast<int>(width)));
		}
	}

	std::string conditionSuffix(Condition condition) {
		switch (condition) {
			case Condition::IfEqual:
				return "e";
			case Condition::IfNotEqual:
				return "ne";
			case Condition::IfNegative:
				return "s";
			case Condition::IfNonnegative:
				return "ns";
			case Condition::IfGreaterSigned:
				return "g";
			case Condition::IfGreaterOrEqualSigned:
				return "ge";
			case Condition::IfLessSigned:
				return "l";
			case Condition::IfLessOrEqualSigned:
				return "le";
			case Condition::IfGreaterUnsigned:
				return "a";
			case Condition::IfGreaterOrEqualUnsigned:
				return "ae";
			case Condition::IfLessUnsigned:
				return "b";
			case Condition::IfLessOrEqualUnsigned:
				return "be";
			default:
				return "???";
		}
	}

	std::string widthSuffix(Width width) {
		switch (width) {
			case Width::Eight: return "q";
			case Width::Four:  return "l";
			case Width::Two:   return "w";
			case Width::Low:
			case Width::High:  return "b";
			default:
				return "???";
		}
	}
}