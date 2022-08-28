#include "exception/TypeError.h"

namespace LL2X {
	TypeError::TypeError(const std::string &what_str, const TypePtr &type_):
		whatStr(what_str), type(type_? type_->copy() : nullptr) {}

	const char * TypeError::what() const noexcept {
		return whatStr.c_str();
	}
}