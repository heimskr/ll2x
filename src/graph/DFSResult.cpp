#include "graph/DFSResult.h"
#include "graph/Graph.h"

namespace LL2X {
	DFSResult::DFSResult(const Graph &graph_,
	                     DFSResult::ParentMap parents_,
	                     DFSResult::TimeMap discovered_,
	                     DFSResult::TimeMap finished_):
		graph(&graph_),
		parents(std::move(parents_)),
		discovered(std::move(discovered_)),
		finished(std::move(finished_)) {}

	DFSResult::DFSResult(const Graph &graph_,
	                     const std::vector<Node *> &parents_,
	                     const std::vector<size_t> &discovered_,
	                     const std::vector<size_t> &finished_): graph(&graph_) {
		for (size_t i = 0, len = parents_.size(); i < len; ++i)
			parents[&(*graph)[i]] = parents_[i];
		for (size_t i = 0, len = discovered_.size(); i < len; ++i)
			discovered[&(*graph)[i]] = discovered_[i];
		for (size_t i = 0, len = finished_.size(); i < len; ++i)
			finished[&(*graph)[i]] = finished_[i];
	}

	std::ostream & operator<<(std::ostream &os, const DFSResult &result) {
		os << "Parents    [";
		for (const auto &pair: result.parents)
			os << " " << pair.first->label() << "<-" << pair.second->label();
		os << " ]\nDiscovered [";
		for (const auto &pair: result.discovered)
			os << " " << pair.first->label() << ":" << pair.second;
		os << " ]\nFinished   [";
		for (const auto &pair: result.finished)
			os << " " << pair.first->label() << ":" << pair.second;
		return os << "]\n";
	}
}
