#pragma once

#include <unordered_set>

#include "Graph.h"

namespace LL2X {
	class DJGraph: public Graph {
		private:
			bool hasCachedMergeSets = false;
			Node::Map jMap, cachedMergeSets;
			bool isJEdge(const Node &, const Node &) const;
			std::unordered_set<Node *> allInNodes(const Node &) const;
			static size_t level(const Node &, const Node &start);

		public:
			Node *startNode = nullptr;
			std::vector<std::pair<Node *, Node *>> jEdges;

			DJGraph(Graph &, Node &start);
			DJGraph(Graph &, const std::string &start_label);

			std::string toDot(const std::string &direction) override;

			Node::Map mergeSets(Node &start, const Node &exit);
			static Node * parent(const Node &, const Node &start);
			const Node::Map & getMergeSets();
	};

	struct MergeSet {
		Node *node;
		std::unordered_set<Node *> nodes;
		std::unordered_set<MergeSet *> references;
		MergeSet(Node *node_): node(node_) {};

		void insert(MergeSet &);
		void insert(MergeSet *);
		void insert(Node *);
		void flatten(Node::Set &out, std::unordered_set<MergeSet *> &processed);
		Node::Set flatten();
	};
}
