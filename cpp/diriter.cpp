#include <filesystem>
#include <iostream>

int main() {
	const std::filesystem::path root("/");
	int i = 0;
	for (const auto &entry: std::filesystem::directory_iterator(root)) {
		std::cerr << i++ << ": " << entry.path() << '\n';
	}
}
