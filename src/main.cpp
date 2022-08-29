#include <cstring>
#include <fstream>
#include <iostream>

#include "main.h"

#include "compiler/PaddedStructs.h"
#include "compiler/Program.h"
#include "parser/Nodes.h"
#include "parser/Parser.h"
#include "parser/StructNode.h"
#include "parser/Types.h"
#include "util/Timer.h"

// #define DEBUGMODE

int global_argc = -1;
char **global_argv = nullptr;

void paddingtest();
void compile(const std::string &filename, bool show_debug);

int main(int argc, char **argv) {
	// paddingtest(); return 0;
	global_argc = argc;
	global_argv = argv;
	auto usage = [] { std::cerr << "Usage: ll2x [-d] <input>\n"; return 1; };
	if (argc < 2)
		return usage();
	LL2X::Lexer::init();
#ifdef CATCH
	try {
#endif
		if (argc == 3) {
			LL2X::Timer timer("Compile");
			if (strcmp(argv[1], "-d") == 0)
				compile(argv[2], true);
			else
				compile(argv[1], false);
		} else if (argc == 2) {
			LL2X::Timer timer("Compile");
			compile(argv[1], false);
		} else
			return usage();
#ifdef CATCH
	} catch (...) {
		LL2X::Timer::summary();
		throw;
	}
#endif

	LL2X::Timer::summary();
	LL2X::StructType::knownStructs.clear();
}

bool hasArg(const char *arg) {
	if (global_argv != nullptr)
		for (int i = 0; i < global_argc; ++i)
			if (strcmp(global_argv[i], arg) == 0)
				return true;
	return false;
}

void compile(const std::string &filename, bool show_debug) {
	std::ifstream file(filename);
	if (!file.is_open())
		throw std::runtime_error("Couldn't open file for reading");
	std::string text;
	file.seekg(0, std::ios::end);
	text.reserve(file.tellg());
	file.seekg(0, std::ios::beg);
	text.assign((std::istreambuf_iterator<char>(file)), std::istreambuf_iterator<char>());

	LL2X::llvmParser.in(text);
	LL2X::llvmParser.debug(false, false);
	LL2X::llvmParser.parse();
	LL2X::Program prog(*LL2X::llvmParser.root);
#ifdef INTERACTIVE
	LL2X::interactive(*prog);
	std::cout << "Done.\n";
#else
	prog.analyze();
	prog.compile();
#ifdef DEBUGMODE
	prog.debug();
#else
	if (show_debug) {
		prog.debug();
		// prog.debugSection(nullptr);
		// for (const int index: prog.debugIndices) {
		// 	const auto &location = prog.locations.at(index);
		// 	std::cout << "\e[33m" << index << " \e[39;2m->\e[22m \e[32m" << location.index << " \e[39;2m->\e[22m "
		// 	          << prog.files.at(location.file).filename << "\e[2m:\e[22m" << location.line << "\e[2m:\e[22m"
		// 	          << location.column;
		// 	if (prog.subprograms.count(location.scope) != 0)
		// 		std::cout << " \e[2m(\e[22m" << prog.subprograms.at(location.scope).name << "\e[2m)\e[22m";
		// 	std::cout << '\n';
		// }
	} else
		std::cout << prog.toString();
#endif
#endif

	LL2X::llvmParser.done();
}

void paddingtest() {
	using namespace LL2X;

	auto print_struct = [&](const char *name, const std::shared_ptr<StructType> &stype) {
		std::cerr << "\n\e[1m" << name << "\e[22m:\n\n  hasPadding: unimplemented\n";
		int i = 0;
		for (const auto &type: stype->node->types) {
			const int offset = PaddedStructs::getOffset(*stype, i);
			std::cerr << "  " << i++ << ": " << std::string(*type) << "\n    offset = " << offset / 8 << ", width = "
			          << (type->width() / 8) << ", alignment = " << type->alignment() << '\n';
		}
		std::cerr << "  Size: " << (stype->width() / 8) << "\n\n";
	};

	auto i1  = IntType::make(1);
	auto i8  = IntType::make(8);
	auto i16 = IntType::make(16);
	auto i24 = IntType::make(24);
	auto i32 = IntType::make(32);
	auto i64 = IntType::make(64);

	auto i32e = FunctionType::make(i32, std::vector<TypePtr> {}, true);
	auto i32ep = PointerType::make(i32e);
	auto i32epp = PointerType::make(i32ep);

	auto i8p = PointerType::make(i8);
	auto i8pp = PointerType::make(i8p);

	auto i8x4 = ArrayType::make(4, i8);
	auto i8x8 = ArrayType::make(8, i8);

	auto make_struct = [](std::initializer_list<TypePtr> list, StructShape shape = StructShape::Default) {
		return StructType::make(StructNode::make(list, shape));
	};

	// %"class.std::basic_ostream.base" = type { i32 (...)** }
	auto basic_ostream_base = make_struct({i32epp});
	print_struct("class.std::basic_ostream.base", basic_ostream_base);

	// %"class.std::locale::facet" = type <{
	//     i32 (...)**,
	//     i32,
	//     [4 x i8]
	// }>
	auto locale_facet = make_struct({i32epp, i32, i8x4}, StructShape::Packed);
	print_struct("class.std::locale::facet", locale_facet);
	auto locale_facetp = PointerType::make(locale_facet);
	auto locale_facetpp = PointerType::make(locale_facetp);

	// %"class.std::locale::_Impl" = type {
	//     i32,
	//     %"class.std::locale::facet"**,
	//     i64,
	//     %"class.std::locale::facet"**,
	//     i8**
	// }
	auto locale_impl = make_struct({i32, locale_facetpp, i64, locale_facetpp, i8pp});
	print_struct("class.std::locale::_Impl", locale_impl);
	auto locale_implp = PointerType::make(locale_impl);

	// %"class.std::locale" = type { %"class.std::locale::_Impl"* }
	auto locale = make_struct({locale_implp});
	print_struct("class.std::locale", locale);

	// %"class.std::basic_streambuf" = type {
	//     i32 (...)**,
	//     i8*,
	//     i8*,
	//     i8*,
	//     i8*,
	//     i8*,
	//     i8*,
	//     %"class.std::locale"
	// }
	auto basic_streambuf = make_struct({i32epp, i8p, i8p, i8p, i8p, i8p, i8p, locale});
	print_struct("class.std::basic_streambuf", basic_streambuf);

	// %union.anon = type { i64, [8 x i8] }
	auto union_anon = make_struct({i64, i8x8});
	print_struct("union.anon", union_anon);

	// %"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
	auto alloc_hider = make_struct({i8p});
	print_struct("struct.std::__cxx11::basic_string<char>::_Alloc_hider", alloc_hider);

	// %"class.std::__cxx11::basic_string" = type {
	//     %"struct.std::__cxx11::basic_string<char>::_Alloc_hider",
	//     i64,
	//     %union.anon
	// }
	auto basic_string = make_struct({alloc_hider, i64, union_anon});
	print_struct("class.std::__cxx11::basic_string", basic_string);

	// %"class.std::__cxx11::basic_stringbuf" = type {
	//     %"class.std::basic_streambuf",
	//     i32,
	//     %"class.std::__cxx11::basic_string"
	// }
	auto basic_stringbuf = make_struct({basic_streambuf, i32, basic_string});
	print_struct("class.std::__cxx11::basic_stringbuf", basic_stringbuf);

	auto void_type = VoidType::make();
	auto vp = PointerType::make(void_type);
	auto vi32vpi32 = FunctionType::make(void_type, std::vector<TypePtr> {i32, vp, i32}, false);
	auto vi32vpi32p = PointerType::make(vi32vpi32);

	// %"struct.std::ios_base::_Callback_list" = type {
	//     %"struct.std::ios_base::_Callback_list"*,
	//     void (i32, %"class.std::ios_base"*, i32)*,
	//     i32,
	//     i32
	// }
	auto callback_list = make_struct({vp, vi32vpi32p, i32, i32});
	print_struct("struct.std::ios_base::_Callback_list", callback_list);
	auto callback_listp = PointerType::make(callback_list);

	// %"struct.std::ios_base::_Words" = type {
	//     i8*,
	//     i64
	// }
	auto words = make_struct({i8p, i64});
	print_struct("struct.std::ios_base::_Words", words);
	auto wordsx8 = ArrayType::make(8, words);
	auto wordsp = PointerType::make(words);

	// %"class.std::ios_base" = type {
	//     i32 (...)**,
	//     i64,
	//     i64,
	//     i32,
	//     i32,
	//     i32,
	//     %"struct.std::ios_base::_Callback_list"*,
	//     %"struct.std::ios_base::_Words",
	//     [8 x %"struct.std::ios_base::_Words"],
	//     i32,
	//     %"struct.std::ios_base::_Words"*,
	//     %"class.std::locale"
	// }
	auto ios_base = make_struct({i32epp, i64, i64, i32, i32, i32, callback_listp, words, wordsx8, i32, wordsp, locale});
	print_struct("class.std::ios_base", ios_base);

	// %"class.std::basic_ios" = type {
	//     %"class.std::ios_base",
	//     %"class.std::basic_ostream"*,
	//     i8,
	//     i8,
	//     %"class.std::basic_streambuf"*,
	//     %"class.std::ctype"*,
	//     %"class.std::num_put"*,
	//     %"class.std::num_get"*
	// }
	auto basic_ios = make_struct({ios_base, vp, i8, i8, vp, vp, vp, vp});
	print_struct("class.std::basic_ios", basic_ios);

	// %"class.std::__cxx11::basic_ostringstream" = type {
	//     %"class.std::basic_ostream.base",
	//     %"class.std::__cxx11::basic_stringbuf",
	//     %"class.std::basic_ios"
	// }
	auto basic_ostringstream = make_struct({basic_ostream_base, basic_stringbuf, basic_ios});
	print_struct("class.std::__cxx11::basic_ostringstream", basic_ostringstream);
}
