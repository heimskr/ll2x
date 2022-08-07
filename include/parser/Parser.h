#pragma once

#include <cstdio>
#include <string>

#include "ASTNode.h"

typedef struct yy_buffer_state * YY_BUFFER_STATE;

namespace LL2X {
	class Parser {
		private:
			std::string filename;
			char *buffer = nullptr;
			YY_BUFFER_STATE bufferState = nullptr;
			const char * getNameLLVM(int symbol);

		public:
			enum class Mode {LLVM};

			Mode mode;
			ASTNode *root = nullptr;
			int errorCount = 0;

			Parser(Mode mode_): mode(mode_) {}
			void open(const std::string &filename);
			void in(const std::string &text);
			void debug(bool flex, bool bison);
			void parse();
			void done();

			const char * getName(int symbol);
			std::string getBuffer() const;
	};

	extern Parser llvmParser;
}
