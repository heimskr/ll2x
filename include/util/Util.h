#pragma once

#include <algorithm>
#include <initializer_list>
#include <iostream>
#include <set>
#include <signal.h>
#include <sstream>
#include <stdlib.h>
#include <string>
#include <type_traits>
#include <unordered_set>
#include <vector>

#include "util/strnatcmp.h"
#include "util/WeakCompare.h"

namespace LL2X::Util {
	int64_t parseLong(const std::string &, int base = 10);
	int64_t parseLong(const std::string *, int base = 10);
	int64_t parseLong(const char *, int base = 10);

	template <typename T>
	inline T upalign(T num, long alignment) {
		return num + ((alignment - (num % alignment)) % alignment);
	}

	template <typename T>
	inline T alignToPower(T num) {
		--num;
		for (size_t i = 1; i < 8 * sizeof(T); ++i)
			num |= num >> i;
		return num + 1;
	}

	bool isNumeric(std::string_view);
	bool isNumeric(const std::string *);

	bool isHex(const char);

	/** Returns true if the argument is lower than INT32_MIN or higher than INT32_MAX. */
	bool outOfRange(int64_t);

	std::vector<std::string> split(const std::string &str, const std::string &delimiter, bool condense = true);

	std::string escape(const std::string &);

	template <template <typename...> typename C, typename T, typename D>
	std::string join(const C<T> &container, D &&delimiter) {
		std::stringstream ss;
		bool first = true;
		for (const T &item: container) {
			if (first)
				first = false;
			else
				ss << delimiter;
			ss << item;
		}
		return ss.str();
	}

	template <typename T>
	std::string hex(T n) {
		std::stringstream ss;
		ss << std::hex << n;
		return ss.str();
	}

	template <typename T>
	inline T updiv(T n, T d) {
		return n / d + (n % d? 1 : 0);
	}

	template <typename T, typename S>
	bool isAny(const T &thing, std::initializer_list<S> list) {
		for (const S &other: list)
			if (thing == other)
				return true;
		return false;
	}

	/** Merges two sets. */
	template <typename S>
	S merge(const S &first, const S &second) {
		S out = first;
		out.insert(second.cbegin(), second.cend());
		return out;
	}

	/** Returns a copy of a container with an item pushed to the back. */
	template <typename T, template <typename...> typename C>
	C<T> with(const C<T> &base, T &&item) {
		C<T> copy = base;
		copy.push_back(std::forward<T>(item));
		return copy;
	}

	/** Returns a copy of a container with all items of another container pushed to the back. */
	template <typename T, template <typename...> typename C>
	C<T> combine(const C<T> &left, const C<T> &right) {
		C<T> copy = left;
		copy.insert(copy.end(), right.cbegin(), right.cend());
		return copy;
	}

	/** Returns whether two sets have any items in common. */
	template <typename S>
	bool hasOverlap(const S &first, const S &second) {
		for (const auto &item: first)
			if (second.count(item) != 0)
				return true;
		return false;
	}

	/** Adds all items from one set into another. */
	template <typename D, typename S>
	void absorb(D &destination, const S &source) {
		for (const auto &item: source)
			destination.insert(item);
	}

	template <typename T, template <typename...> typename C>
	bool equal(const C<T> &first, const C<T> &second) {
		if (first.size() != second.size())
			return false;
		for (const T &item: first)
			if (second.count(item) == 0)
				return false;
		return true;
	}

	template <typename C>
	std::vector<std::string> nsort(const C &container, const bool sensitive = true) {
		std::vector<std::string> out(container.begin(), container.end());
		if (sensitive)
			std::sort(out.begin(), out.end(), [](const std::string &a, const std::string &b) {
				return strnatcmp(a.c_str(), b.c_str()) == -1;
			});
		else
			std::sort(out.begin(), out.end(), [](const std::string &a, const std::string &b) {
				return strnatcasecmp(a.c_str(), b.c_str()) == -1;
			});

		return out;
	}

	template <typename C, typename F, std::enable_if_t<!std::is_same<F, bool>::value, int> = 0>
	auto nsort(const C &container, F get, const bool sensitive = true) {
		std::vector<typename C::value_type> out(container.begin(), container.end());
		if (sensitive)
			std::sort(out.begin(), out.end(), [get](const auto &a, const auto &b) {
				return strnatcmp(get(a).c_str(), get(b).c_str()) == -1;
			});
		else
			std::sort(out.begin(), out.end(), [get](const auto &a, const auto &b) {
				return strnatcasecmp(get(a).c_str(), get(b).c_str()) == -1;
			});

		return out;
	}

	template <typename M>
	std::vector<typename M::value_type> mapnsort(const M &map, const bool sensitive = true) {
		using pair_type = std::pair<std::string, typename M::mapped_type>;
		std::vector<pair_type> vec(map.begin(), map.end());
		if (sensitive)
			std::sort(vec.begin(), vec.end(), [](const pair_type &a, const pair_type &b) {
				return strnatcmp(a.first.c_str(), b.first.c_str()) == -1;
			});
		else
			std::sort(vec.begin(), vec.end(), [](const pair_type &a, const pair_type &b) {
				return strnatcasecmp(a.first.c_str(), b.first.c_str()) == -1;
			});

		// I don't think there's any other way to cast A<B<C, D>> to A<B<const C, D>>.
		return *reinterpret_cast<std::vector<typename M::value_type> *>(&vec);
	}

	template <typename C, typename N>
	bool contains(const C &container, const N &needle) {
		for (const auto &item: container)
			if (item == needle)
				return true;
		return false;
	}

	template <typename T>
	std::ostream & out(std::ostream &os, const std::unordered_set<T> &set) {
		bool first = true;
		for (auto &&item: set) {
			if (first)
				first = false;
			else
				os << ' ';
			os << item;
		}
		return os;
	}

	template <typename T>
	std::ostream & out(std::ostream &os, const std::set<T> &set) {
		bool first = true;
		for (auto &&item: set) {
			if (first)
				first = false;
			else
				os << ' ';
			os << item;
		}
		return os;
	}

	template <typename T>
	bool isPowerOfTwo(T num) {
		return (num & (num - 1)) == 0;
	}
}

namespace LL2X {
	inline std::ostream & warn(bool cout = false) {
		return (cout? std::cout : std::cerr) << "\e[2m[\e[22;33m!\e[39;2m]\e[22;33m Warning: \e[39m";
	}

	inline std::ostream & error(bool cout = false) {
		return (cout? std::cout : std::cerr) << "\e[2m[\e[22;31m!\e[39;2m]\e[22;31m Error: \e[39m";
	}

	inline std::ostream & info(bool cout = false) {
		return (cout? std::cout : std::cerr) << "\e[2m[\e[22;36mi\e[39;2m]\e[22m ";
	}

	inline std::ostream & success(bool cout = false) {
		return (cout? std::cout : std::cerr) << "\e[2m[\e[22;32m????\e[39;2m]\e[22m ";
	}

	inline void debugger() {
		raise(SIGTRAP);
	}
}
