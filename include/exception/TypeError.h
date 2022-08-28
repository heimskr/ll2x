#pragma once

#include <stdexcept>

#include "parser/Types.h"

namespace LL2X {
	class TypeError: public std::exception {
		private:
			std::string whatStr;

		public:
			TypePtr type;
			TypeError(const std::string &what_str, const TypePtr &type_ = nullptr);
			const char * what() const noexcept;
	};
}
