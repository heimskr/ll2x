#pragma once

namespace LL2X {
	class Function;
}

namespace LL2X::Passes {
	/** Transforms the labels of any operand with labelNeedsTransformation == true.. */
	size_t transformLabels(Function &);
}
