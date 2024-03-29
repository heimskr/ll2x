#pragma once

#include <memory>
#include <string>
#include <unordered_set>

namespace LL2X {
	class Function;
	class Variable;

	class Allocator {
		protected:
			Function *function = nullptr;
			int spillCount = 0;
			int attempts = 0;

		public:
			enum class Result: int {Invalid = 0, Spilled = 1, NotSpilled = 2, Success = 3};

			std::shared_ptr<Variable> lastSpill;
			std::unordered_set<std::shared_ptr<Variable>> recentSpillAttempts;

			Allocator(Function &function_):
				function(&function_) {}

			virtual ~Allocator() = default;

			virtual Result attempt() = 0;
			int getAttempts() const { return attempts; }
			int getSpillCount() const { return spillCount; }

			static std::string stringify(Result result) {
				return result == Result::Spilled? "Spilled" : (result == Result::NotSpilled? "NotSpilled" :
					(result == Result::Success? "Success" : "?"));
			}
	};
}
