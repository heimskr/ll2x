#include <algorithm>
#include <climits>
#include <cstdlib>
#include <stdexcept>

#include "util/Util.h"

namespace LL2X::Util {
	int64_t parseLong(const std::string &str, int base) {
		const char *c_str = str.c_str();
		char *end = nullptr;
		int64_t parsed = strtol(c_str, &end, base);
		if (c_str + str.length() != end)
			throw std::invalid_argument("Not an integer: \"" + str + "\"");
		return parsed;
	}

	int64_t parseLong(const std::string *str, int base) {
		return parseLong(*str, base);
	}

	int64_t parseLong(const char *str, int base) {
		return parseLong(std::string(str), base);
	}

	bool isNumeric(std::string_view str) {
		return !str.empty() && std::ranges::all_of(str, [](char c) {
			return '0' <= c && c <= '9';
		});
	}

	bool isNumeric(const std::string *str) {
		return isNumeric(*str);
	}

	bool isHex(const char ch) {
		return ('0' <= ch && ch <= '9') || ('a' <= ch && ch <= 'f') || ('A' <= ch && ch <= 'F');
	}

	bool outOfRange(int64_t value) {
		return value < INT32_MIN || INT32_MAX < value;
	}

	std::string escape(const std::string &str) {
		std::stringstream out;
		for (char ch: str) {
			if (ch == '"' || ch == '\\')
				out << '\\' << ch;
			else if (ch == '\t')
				out << "\\t";
			else if (ch == '\n')
				out << "\\n";
			else if (ch == '\r')
				out << "\\r";
			else
				out << ch;
		}
		return out.str();
	}

	std::vector<std::string> split(const std::string &str, const std::string &delimiter, bool condense) {
		if (str.empty())
			return {};

		size_t next = str.find(delimiter);
		if (next == std::string::npos)
			return {str};

		std::vector<std::string> out {};
		const size_t delimiter_length = delimiter.size();
		size_t last = 0;

		out.push_back(str.substr(0, next));

		while (next != std::string::npos) {
			last = next;
			next = str.find(delimiter, last + delimiter_length);
			std::string sub = str.substr(last + delimiter_length, next - last - delimiter_length);
			if (!sub.empty() || !condense)
				out.push_back(std::move(sub));
		}

		return out;
	}
}
