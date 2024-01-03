CHECK			?= none
COMPILER		?= clang++
DEBUGGER		?= lldb
OPTIMIZATION	?= -Ofast -march=native -g
STANDARD		?= c++20
WARNINGS		?= -Wall -Wextra
CFLAGS			:= -std=$(STANDARD) $(OPTIMIZATION) $(WARNINGS) -Iinclude
OUTPUT			?= ll2x
LDFLAGS			?= -pthread

LEXFLAGS		:= -Wno-sign-compare -Wno-register
LLVMLEXCPP		:= src/parser/yylex.cpp
LLVMPARSECPP	:= src/parser/yyparse.cpp
LLVMPARSEHDR	:= include/yyparse.h
LLVMFLEXSRC		:= src/parser/lexer.l
LLVMBISONSRC	:= src/parser/parser.y

CLOC_OPTIONS	:= --exclude-dir=.vscode,asm,ll,cpp --not-match-f='^(yy)(lex|parse)|\.s(vg)?$$'
BISON_OPTIONS	:= --color=always
SOURCES			:= $(shell find src/**/*.cpp src/*.cpp)
OBJECTS			:= $(SOURCES:.cpp=.o) $(LLVMLEXCPP:.cpp=.o) $(LLVMPARSECPP:.cpp=.o)

ifeq ($(CHECK), asan)
	COMPILER := $(COMPILER) -fsanitize=address -fno-common
else ifeq ($(CHECK), msan)
	COMPILER := $(COMPILER) -fsanitize=memory  -fno-common
endif

.PHONY: all clean count countbf declutter

all: $(OUTPUT)

$(OUTPUT): $(OBJECTS)
	$(COMPILER) -o $@ $^ $(LDFLAGS)

$(LLVMLEXCPP): $(LLVMFLEXSRC) $(LLVMPARSEHDR)
	flex --prefix=llvm --outfile=$(LLVMLEXCPP) $(LLVMFLEXSRC)

$(LLVMPARSECPP) $(LLVMPARSEHDR): $(LLVMBISONSRC)
	bison $(BISON_OPTIONS) --defines=$(LLVMPARSEHDR) --output=$(LLVMPARSECPP) $(LLVMBISONSRC)

$(LLVMLEXCPP:.cpp=.o): $(LLVMLEXCPP)
	$(COMPILER) $(CFLAGS) $(LEXFLAGS) -c $< -o $@

$(LLVMPARSECPP:.cpp=.o): $(LLVMPARSECPP) $(LLVMPARSEHDR)
	$(COMPILER) $(CFLAGS) $(LEXFLAGS) -c $< -o $@

%.o: %.cpp include/yyparse.h
	$(COMPILER) $(CFLAGS) -c $< -o $@

test: $(OUTPUT)
	@# ./$(OUTPUT) ll/virtual.ll > virtual.s && clang -g virtual.s -lstdc++ && ./a.out
	@# ./$(OUTPUT) ll/csmith1.ll > csmith1.s && clang -g csmith1.s -lstdc++ && ./a.out
	@# ./$(OUTPUT) ll/yarpgen1.ll > yarpgen1.s && clang -g yarpgen1.s -lstdc++ && ./a.out
	@# clang++ -S -fno-exceptions -emit-llvm -O0 cpp/diriter.cpp -o ll/diriter0.ll && ./$(OUTPUT) ll/diriter0.ll > asm/diriter0.s && clang -g asm/diriter0.s -lstdc++ && ./a.out
	@# clang++ -S -fno-exceptions -emit-llvm -O3 cpp/diriter.cpp -o ll/diriter3.ll && ./$(OUTPUT) ll/diriter3.ll > asm/diriter3.s && clang -g asm/diriter3.s -lstdc++ && ./a.out
	clang++ -S -fno-exceptions -emit-llvm cpp/simpleshell.cpp -o ll/simpleshell.ll && ./$(OUTPUT) ll/simpleshell.ll > asm/simpleshell.s && clang -g asm/simpleshell.s -lstdc++ && ./a.out
	@# clang++ -Wno-c++11-narrowing -S -fno-exceptions -emit-llvm cpp/csmith3.cpp 2>/dev/null -o ll/csmith3.ll && ./$(OUTPUT) ll/csmith3.ll > asm/csmith3.s && clang -g asm/csmith3.s -lstdc++ && ./a.out
	@# clang++ -Wno-c++11-narrowing -S -fno-exceptions -emit-llvm cpp/csmith4.cpp 2>/dev/null -o ll/csmith4.ll && ./$(OUTPUT) ll/csmith4.ll > asm/csmith4.s && clang -g asm/csmith4.s -lstdc++ && ./a.out
	@# clang++ -Wno-c++11-narrowing -S -fno-exceptions -emit-llvm cpp/csmith5.cpp 2>/dev/null -o ll/csmith5.ll && ./$(OUTPUT) ll/csmith5.ll > asm/csmith5.s && clang -g asm/csmith5.s -lstdc++ && ./a.out
	@# clang++ -Wno-c++11-narrowing -S -fno-exceptions -emit-llvm cpp/csmith6.cpp 2>/dev/null -o ll/csmith6.ll && ./$(OUTPUT) ll/csmith6.ll > asm/csmith6.s && clang -g asm/csmith6.s -lstdc++ && ./a.out
	@# clang++ -Wno-c++11-narrowing -S -fno-exceptions -emit-llvm cpp/csmith7.cpp 2>/dev/null -o ll/csmith7.ll && ./$(OUTPUT) ll/csmith7.ll > asm/csmith7.s && clang -g asm/csmith7.s -lstdc++ && ./a.out
	@# clang++ -Wno-c++11-narrowing -S -fno-exceptions -emit-llvm cpp/csmith8.cpp 2>/dev/null -o ll/csmith8.ll && ./$(OUTPUT) ll/csmith8.ll > asm/csmith8.s && clang -g asm/csmith8.s -lstdc++ && ./a.out
	@# ./$(OUTPUT) ll/simpleshell.ll

clean:
	rm -f $(OUTPUT) src/*.o src/**/*.o graph_*.png \
		$(LLVMPARSEHDR) $(LLVMPARSECPP) $(LLVMLEXCPP) $(LLVMPARSECPP:.c=.output) $(LLVMLEXCPP) $(LLVMPARSECPP) \
		PVS-Studio.log report.tasks strace_out

declutter:
	rm -f graph_*.png

grind: $(OUTPUT)
	valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes --show-reachable=no ./$<

count:
	cloc . parser $(CLOC_OPTIONS)

countbf:
	cloc --by-file . parser $(CLOC_OPTIONS)

DEPFILE  = .dep
DEPTOKEN = "\# MAKEDEPENDS"
DEPFLAGS = -f $(DEPFILE) -s $(DEPTOKEN)

depend:
	@ echo $(DEPTOKEN) > $(DEPFILE)
	makedepend $(DEPFLAGS) -- $(COMPILER) $(CFLAGS) -- $(SOURCES) 2>/dev/null
	@ rm $(DEPFILE).bak

sinclude $(DEPFILE)
