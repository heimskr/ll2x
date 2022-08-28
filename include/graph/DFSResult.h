#pragma once

#include <ostream>
#include <unordered_map>
#include <vector>

namespace LL2X {
	class Graph;
	class Node;

	struct DFSResult {
		using ParentMap = std::unordered_map<Node *, Node *>;
		using TimeMap   = std::unordered_map<Node *, size_t>;

		const Graph *graph;
		ParentMap parents;
		TimeMap discovered, finished;

		DFSResult(const Graph &graph_, ParentMap parents_, TimeMap discovered_, TimeMap finished_);

		DFSResult(const Graph &graph_,
		          const std::vector<Node *> &parents_,
		          const std::vector<size_t> &discovered_,
		          const std::vector<size_t> &finished_);
	};

	std::ostream & operator<<(std::ostream &, const DFSResult &);
}
