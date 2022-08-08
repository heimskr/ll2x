#include <cstring>
#include <fstream>
#include <iostream>

#include "main.h"

#include "compiler/Program.h"
#include "parser/Parser.h"
#include "util/Timer.h"

#define DEBUGMODE

int global_argc = -1;
char **global_argv = nullptr;

void compile(const std::string &filename, bool show_debug);

int main(int argc, char **argv) {
	global_argc = argc;
	global_argv = argv;
	auto usage = [] { std::cerr << "Usage: ll2x [-d] <input>\n"; exit(1); };
	if (argc < 2)
		usage();
#ifdef CATCH
	try {
#endif
		if (argc == 3) {
			LL2X::Timer timer("Compile");
			if (strcmp(argv[1], "-d") == 0)
				compile(argv[2], true);
			else
				compile(argv[1], false);
		} else if (argc == 2) {
			LL2X::Timer timer("Compile");
			compile(argv[1], false);
		} else
			usage();
#ifdef CATCH
	} catch (...) {
		LL2X::Timer::summary();
		throw;
	}
#endif

	LL2X::Timer::summary(0.1);
	LL2X::StructType::knownStructs.clear();
}

bool hasArg(const char *arg) {
	if (global_argv)
		for (int i = 0; i < global_argc; ++i)
			if (strcmp(global_argv[i], arg) == 0)
				return true;
	return false;
}

void compile(const std::string &filename, bool show_debug) {
	std::ifstream file(filename);
	if (!file.is_open())
		throw std::runtime_error("Couldn't open file for reading");
	std::string text;
	file.seekg(0, std::ios::end);
	text.reserve(file.tellg());
	file.seekg(0, std::ios::beg);
	text.assign((std::istreambuf_iterator<char>(file)), std::istreambuf_iterator<char>());

	LL2X::llvmParser.in(text);
	LL2X::llvmParser.debug(false, false);
	LL2X::llvmParser.parse();
	LL2X::Program prog(*LL2X::llvmParser.root);
#ifdef INTERACTIVE
	LL2X::interactive(*prog);
	std::cout << "Done.\n";
#else
	prog.analyze();
	prog.compile();
#ifdef DEBUGMODE
	prog.debug();
#else
	if (show_debug) {
		prog.debugSection(nullptr);
		for (const int index: prog.debugIndices) {
			const auto &location = prog.locations.at(index);
			std::cout << "\e[33m" << index << " \e[39;2m->\e[22m \e[32m" << location.index << " \e[39;2m->\e[22m "
			          << prog.files.at(location.file).filename << "\e[2m:\e[22m" << location.line << "\e[2m:\e[22m"
			          << location.column;
			if (prog.subprograms.count(location.scope) != 0)
				std::cout << " \e[2m(\e[22m" << prog.subprograms.at(location.scope).name << "\e[2m)\e[22m";
			std::cout << '\n';
		}
	} else
		std::cout << prog.toString();
#endif
#endif

	LL2X::llvmParser.done();
}
