#pragma once

namespace LL2X {
	class ASTNode;

	struct LexicalBlock {
		int file, scope;
		LexicalBlock(int file_, int scope_): file(file_), scope(scope_) {}
	};
}
