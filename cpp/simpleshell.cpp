#include <algorithm>
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

struct LsItem {
	std::string name;
	bool isDirectory;

	LsItem(std::string name_, bool is_directory):
		name(std::move(name_)), isDirectory(is_directory) {}
};

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

	std::vector<LsItem> items;

	for (const auto &entry: std::filesystem::directory_iterator(path))
		items.emplace_back(entry.path().filename().string(), entry.is_directory());

	std::sort(items.begin(), items.end(), [](const LsItem &left, const LsItem &right) {
		if (left.isDirectory != right.isDirectory)
			return left.isDirectory;

		return left.name < right.name;
	});

	for (const auto &[name, is_dir]: items) {
		if (is_dir)
			std::cout << "\e[36m" << name << "\e[39m\n";
		else
			std::cout << name << '\n';
	}

	// for (const auto &entry: std::filesystem::directory_iterator(path))
	// 	std::cout << entry.path().filename().string() << '\n';

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

int cd(const std::vector<std::string_view> &args) {
	if (2 < args.size()) {
		std::cerr << "Invalid number of arguments: " << args.size() << '\n';
		return 1;
	}

	std::filesystem::path path;

	if (args.size() == 2) {
		path = args[1];
	} else if (const char *home = getenv("HOME"); home && home[0]) {
		path = home;
	} else {
		std::cerr << "Couldn't find a home directory to return to.\n";
		return 2;
	}

	if (!std::filesystem::exists(path)) {
		std::cerr << "Couldn't change directory to " << path.string() << ": not found\n";
		return 3;
	}

	if (!std::filesystem::is_directory(path)) {
		std::cerr << "Couldn't change directory to " << path.string() << ": not a directory\n";
		return 4;
	}

	std::filesystem::current_path(path);
	return 0;
}

int quit(const std::vector<std::string_view> &args) {
	std::exit(0);
	return 0;
}

int clear(const std::vector<std::string_view> &args) {
	std::cout << "\e[2J\e[3J\e[H";
	return 0;
}

int main() {
	std::map<std::string, std::function<int(const std::vector<std::string_view> &)>> commands {
		{"ls",    ls   },
		{"pwd",   pwd  },
		{"cd",    cd   },
		{"exit",  quit },
		{"quit",  quit },
		{"clear", clear},
	};

	std::string line;

	std::cout << "\e[32m$\e[39m ";

	while (std::getline(std::cin, line)) {
		std::vector<std::string_view> args = split(line, " ", true);

		if (args.empty())
			continue;

		auto iter = commands.find(std::string(args.front()));
		bool success = false;

		if (iter != commands.end()) {
			success = iter->second(args) == 0;
		} else {
			std::cerr << args.front() << ": command not found\n";
		}

		std::cout << "\e[3" << (success? '2' : '1') << "m$\e[39m ";
	}
}

extern "C" void pr(void *x, void *y) {
	fprintf(stderr, "ptr[%p, %p]\n", x, y);
}
