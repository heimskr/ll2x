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

	bool isHex(char ch) {
		return ('0' <= ch && ch <= '9') || ('a' <= ch && ch <= 'f') || ('A' <= ch && ch <= 'F');
	}

	uint8_t fromHex(char ch) {
		if ('0' <= ch && ch <= '9')
			return ch - '0';

		if ('a' <= ch && ch <= 'f')
			return ch - 'a' + 10;

		if ('A' <= ch && ch <= 'F')
			return ch - 'A' + 10;

		throw std::invalid_argument("Not a hex char: " + std::string{ch});
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

	static std::string toHex(uint8_t ch) {
		std::string out;

		for (char nybble: {ch >> 4, ch & 0xf}) {
			if (nybble < 0xa)
				out += '0' + nybble;
			else
				out += 'a' + (nybble - 0xa);
		}

		return out;
	}

	std::string unquote(std::string_view str) {
		if (str.size() < 2 || (str[0] != '"' && !(str[0] == '.' && str[1] == '"')))
			return std::string(str);

		std::string out;
		out.reserve(str.size());

		for (const char ch: str) {
			if (std::isalnum(ch) || ch == '_' || ch == '$' || ch == '.') {
				out += ch;
			} else if (ch != '"') {
				out += "_0x";
				out += toHex(ch);
				out += '_';
			}
		}

		return out;
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
