#include <iostream>
#include <stdexcept>

#include "graph/Graph.h"
#include "graph/Node.h"

namespace LL2X {
	Node::Node(Graph *owner_, const std::string &_label_): owner(owner_), label_(_label_) {}

	Node & Node::setColorsNeeded(int count) {
		colorsNeeded = count;
		return *this;
	}

	const std::string & Node::label() const {
		return label_;
	}

	Node & Node::rename(const std::string &new_label) {
		return owner->rename(this, new_label);
	}

	bool Node::reflexive() const {
		return out_.count(const_cast<Node *>(this)) == 1;
	}

	bool Node::link(Node &other, bool bidirectional) {
		return link(&other, bidirectional);
	}

	bool Node::link(Node *other, bool bidirectional) {
		bool already_linked = out_.count(other) == 1;
		if (!already_linked) {
			out_.insert(other);
			other->in_.insert(this);
		}

		if (bidirectional && other != this)
			other->link(*this);

		return already_linked;
	}

	bool Node::unlink(Node &other, bool bidirectional) {
		return unlink(&other, bidirectional);
	}

	bool Node::unlink(Node *other, bool bidirectional) {
		bool exists = out_.count(other) == 1;
		out_.erase(other);
		other->in_.erase(this);

		if (reachability)
			reachability->erase(other);

		if (bidirectional && other != this)
			other->unlink(*this, false);

		return exists;
	}

	void Node::unlink() {
		for (Node *other: out_)
			other->in_.erase(this);
		out_.clear();
	}

	bool Node::isolated() const {
		return out_.empty();
	}

	void Node::dirty() {
		index_ = -1;
	}

	int Node::index() {
		if (index_ != -1)
			return index_;

		for (const Node *node: owner->nodes()) {
			++index_;
			if (node == this)
				return index_;
		}

		throw std::runtime_error("Node not found in parent graph");
	}

	const Node::NSet & Node::out() const {
		return out_;
	}

	const Node::NSet & Node::in() const {
		return in_;
	}

	Node::NSet Node::allEdges() const {
		NSet set = out_;
		set.insert(in_.begin(), in_.end());
		return set;
	}

	bool Node::canReach(Node &other) {
		if (other.owner != owner)
			return false;

		if (reachability)
			return reachability->contains(&other);

		reachability.emplace();

		std::unordered_set<Node *> visited;
		std::list<Node *> queue {this};
		while (!queue.empty()) {
			Node *node = queue.front();
			queue.pop_front();
			for (Node *out_node: node->out()) {
				if (out_node == &other) {
					(*reachability)[&other] = true;
					return true;
				}

				if (!visited.contains(out_node)) {
					visited.insert(out_node);
					queue.push_back(out_node);
				}
			}
		}

		(*reachability)[&other] = false;
		return false;
	}

	void Node::clearReachability() {
		reachability.reset();
	}

	size_t Node::degree() const {
		size_t deg = out_.size();
		for (Node *neighbor: in_)
			if (!out_.contains(neighbor))
				++deg;
		return deg;
	}

	Node * Node::parent() const {
		if (in_.size() != 1)
			throw std::runtime_error("Cannot find parent of node with " + std::to_string(in_.size()) + " inward edges");
		return *in_.begin();
	}

	Node & Node::operator+=(Node &neighbor) {
		return *this += &neighbor;
	}

	Node & Node::operator+=(Node *neighbor) {
		out_.insert(neighbor);
		return *this;
	}

	Node & Node::operator-=(Node &neighbor) {
		return *this -= &neighbor;
	}

	Node & Node::operator-=(Node *neighbor) {
		out_.erase(neighbor);
		in_.erase(neighbor);
		return *this;
	}

	Node & Node::operator-=(const std::string &label) {
		for (Node *node: out_)
			if (node->label() == label)
				return *this -= node;
		throw std::out_of_range("Can't remove: no neighbor with label \"" + label + "\" found");
	}

	decltype(Node::out_)::iterator Node::begin() {
		return out_.begin();
	}

	decltype(Node::out_)::iterator Node::end() {
		return out_.end();
	}

	decltype(Node::in_)::iterator Node::ibegin() {
		return in_.begin();
	}

	decltype(Node::in_)::iterator Node::iend() {
		return in_.end();
	}

	std::ostream & operator<<(std::ostream &os, const Node &node) {
		return os << node.label();
	}
}
