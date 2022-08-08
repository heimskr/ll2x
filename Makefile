CHECK			?= none
COMPILER		?= clang++
DEBUGGER		?= lldb
OPTIMIZATION	?= -O0 -g
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

CLOC_OPTIONS	:= --exclude-dir=.vscode --not-match-f='^(yy)(lex|parse)'
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
	./$(OUTPUT) -d ll/fibo.ll

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
