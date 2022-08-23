#include "compiler/Variable.h"
#include "instruction/Clobber.h"

namespace LL2X {
	ExtractionResult Unclobber::extract(bool) {
		read.clear();
		written.clear();
		written.insert(pvar);
		return {0, 1};
	}
}