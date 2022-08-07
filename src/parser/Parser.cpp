#include <iostream>
#include <cstring>
#include <fstream>
#include <sstream>

#include "parser/Parser.h"
#include "parser/Lexer.h"
#include "parser/StringSet.h"

int llvmwrap() { return 1; }

extern YY_BUFFER_STATE llvm_scan_buffer(char *, size_t);
extern void llvm_delete_buffer(YY_BUFFER_STATE);
void llvm_flush_buffer(YY_BUFFER_STATE);

namespace LL2X {
	void Parser::open(const std::string &filename_) {
		errorCount = 0;
		filename = filename_;
		if (mode == Mode::LLVM)
			llvmin = fopen(filename.c_str(), "r");
	}

	void Parser::in(const std::string &text) {
		errorCount = 0;
		buffer = new char[text.size() + 2];
		std::strncpy(buffer, text.c_str(), text.size() + 1);
		buffer[text.size() + 1] = '\0'; // Input to flex needs two null terminators.
		if (mode == Mode::LLVM)
			bufferState = llvm_scan_buffer(buffer, text.size() + 2);
	}

	void Parser::debug(bool flex, bool bison) {
		if (mode == Mode::LLVM) {
			llvm_flex_debug = flex;
			llvmdebug = bison;
		}
	}

	void Parser::parse() {
		if (mode == Mode::LLVM)
			llvmparse();
	}

	void Parser::done() {
		if (mode == Mode::LLVM)
			llvmlex_destroy();

		if (root) {
			delete root;
			root = nullptr;
		}

		if (buffer) {
			delete[] buffer;
			buffer = nullptr;
		}

		if (bufferState) {
			// Causes a double free—does llvmparse already do this?
			// if (mode == Mode::LLVM)
			// 	llvm_delete_buffer(bufferState);
			// bufferState = nullptr;
		}
	}

	const char * Parser::getName(int symbol) {
		if (mode == Mode::LLVM)
			return getNameLLVM(symbol);
		throw std::runtime_error("Invalid mode: " + std::to_string(static_cast<int>(mode)));
	}

	std::string Parser::getBuffer() const {
		return buffer? buffer : "";
	}

	Parser llvmParser(Parser::Mode::LLVM);
}
