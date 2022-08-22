#include <iostream>

struct Foo {
	int x = 0;
	Foo(int x_): x(x_) { std::cout << "Foo::Foo(int)\n"; }

	virtual int foo() = 0;
};

struct Bar: Foo {
	using Foo::Foo;
	int foo() override { std::cout << "Bar {" << x << "}::foo()\n"; return -x; }
};

int main() {
	Bar bar(42);
	Foo &foo = bar;
	int x = foo.foo();
	std::cout << "x == " << x << '\n';
	return x;
}
