#pragma once

namespace LL2X {
	class ASTNode;

	struct Location {
		long line, column, scope;
		long file = -1;
		/** The index of the location within the debug data section, not within the LLVM IR. */
		long index = -1;
		Location(long line_, long column_, long scope_): line(line_), column(column_), scope(scope_) {}
		Location(const ASTNode &);
	};
}
