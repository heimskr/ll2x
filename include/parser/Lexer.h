#pragma once

#include <mutex>
#include <optional>
#include <unordered_map>
#include <vector>

#include <stdio.h>

#include "parser/ASTNode.h"

#define LLVMSTYPE_IS_DECLARED
typedef LL2X::ASTNode * LLVMSTYPE;

#ifndef NO_YYPARSE
#include "yyparse.h"
#endif

#ifdef __APPLE__
typedef size_t yysize;
#else
typedef int yysize;
#endif

extern FILE *llvmin;
extern char *llvmtext;
extern yysize llvmleng;
extern int llvm_flex_debug;
extern int llvmdebug;

namespace LL2X {
	class Parser;

	class Lexer {
		private:
			Parser *parser;
			yysize *leng;
			ASTNode **lval;

		public:
			static void init();

			ASTLocation location = {0, 1};
			std::string line;
			yysize lastYylength = 0;
			std::unordered_map<int, std::string> lines;
			bool failed = false;
			std::vector<std::pair<std::string, ASTLocation>> errors;

			Lexer(Parser &, yysize &, ASTNode *&);
			const std::string * filename(int fileno);
			void advance(const char *);
			void newline();
			void badchar(unsigned char);
			int token(const char *, int symbol);
	};

	extern std::optional<Lexer> llvmLexer;
}

int llvmlex();
int llvmlex_destroy();
int llvmparse();
void llvmerror(const char *);
void llvmerror(const std::string &, const LL2X::ASTLocation &);
