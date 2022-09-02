#include <cstdio>

struct Noisy {
	Noisy()  { printf("Noisy::Noisy()\n"); }
	~Noisy() { printf("Noisy::~Noisy()\n"); }
};

Noisy noisy;

int main() {
	printf("Hello, World!\n");
	return 0;
}
