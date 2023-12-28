#include <cstdint>
#include <cstdio>

#define XSTR(s) #s
#define STR(s) XSTR(s)
#define TEST(cond) do { printf(XSTR(cond) ": "); puts((cond)? "true" : "false"); } while (false)

int main() {
	int big = 1'000'000'000;
	int small = -1'000;

	uint32_t ubig = 3'000'000'000;
	uint32_t usmall = 1;

	TEST(big <  small);
	TEST(big >  small);
	TEST(big >= small);
	TEST(big <= small);
	TEST(big == small);
	TEST(big != small);

	puts("");

	TEST(ubig <  usmall);
	TEST(ubig >  usmall);
	TEST(ubig >= usmall);
	TEST(ubig <= usmall);
	TEST(ubig == usmall);
	TEST(ubig != usmall);

	puts("");

	TEST(big <  big);
	TEST(big >  big);
	TEST(big >= big);
	TEST(big <= big);
	TEST(big == big);
	TEST(big != big);

	puts("");

	TEST(ubig <  ubig);
	TEST(ubig >  ubig);
	TEST(ubig >= ubig);
	TEST(ubig <= ubig);
	TEST(ubig == ubig);
	TEST(ubig != ubig);
}
