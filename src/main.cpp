#include <iostream>

#include "main.h"

int global_argc = -1;
char **global_argv = nullptr;

int main(int argc, char **argv) {
	global_argc = argc;
	global_argv = argv;
	std::cout << "Hello, World!\n";
}

bool hasArg(const char *arg) {
	if (global_argv)
		for (int i = 0; i < global_argc; ++i)
			if (strcmp(global_argv[i], arg) == 0)
				return true;
	return false;
}
