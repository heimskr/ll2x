#include <filesystem>
#include <functional>
#include <iostream>
#include <map>
#include <string>
#include <vector>

std::vector<std::string_view> split(std::string_view str, std::string_view delimiter, bool condense) {
	if (str.empty())
		return {};

	size_t next = str.find(delimiter);
	if (next == std::string::npos)
		return {str};

	std::vector<std::string_view> out;
	const size_t delimiter_length = delimiter.size();
	size_t last = 0;

	out.push_back(str.substr(0, next));

	while (next != std::string::npos) {
		last = next;
		next = str.find(delimiter, last + delimiter_length);
		std::string_view sub = str.substr(last + delimiter_length, next - last - delimiter_length);
		if (!sub.empty() || !condense)
			out.push_back(sub);
	}

	return out;
}

int ls(const std::vector<std::string_view> &args) {
	std::filesystem::path path;

	if (args.size() == 1) {
		path = ".";
	} else if (args.size() == 2) {
		path = args[1];
	} else {
		std::cerr << "Invalid number of arguments: " << args.size() << '\n';
		return 1;
	}

	if (!std::filesystem::exists(path)) {
		std::cerr << "Not found: " << path << '\n';
		return 2;
	}

	for (const auto &entry: std::filesystem::directory_iterator(path))
		std::cout << entry.path().filename().string() << '\n';

	return 0;
}

int pwd(const std::vector<std::string_view> &args) {
	if (args.size() != 1) {
		std::cerr << "Invalid number of arguments: " << args.size() << '\n';
		return 1;
	}

	std::cout << std::filesystem::current_path().string() << '\n';
	return 0;
}

int main() {
	std::map<std::string, std::function<int(const std::vector<std::string_view> &)>> commands {
		{"ls",  ls },
		{"pwd", pwd},
	};

	std::string line;

	std::cout << "$ ";

	while (std::getline(std::cin, line)) {
		std::vector<std::string_view> args = split(line, " ", true);

		if (args.empty())
			continue;

		auto iter = commands.find(std::string(args.front()));

		bool success = false;

		if (iter != commands.end()) {
			success = iter->second(args) == 0;
		}

		std::cout << "\e[3" << (success? '2' : '1') << "m$\e[39m ";
	}
}
