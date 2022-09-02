#include <cstdio>
#include <filesystem>
#include <iostream>

int main() {
	const std::filesystem::path root("/");
	int i = 0;
	for (const auto &entry: std::filesystem::directory_iterator(root)) {
		fprintf(stderr, "%d: %s\n", i++, entry.path().c_str());
	}
}
