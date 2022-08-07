#include <stdexcept>

namespace LL2X {
	struct NoChoiceError: public std::runtime_error {
		using std::runtime_error::runtime_error;
	};
}
