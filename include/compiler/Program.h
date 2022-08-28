#pragma once

#include <list>
#include <mutex>
#include <unordered_map>
#include <unordered_set>

#include "compiler/File.h"
#include "compiler/Function.h"
#include "compiler/LexicalBlock.h"
#include "compiler/Location.h"
#include "compiler/Subprogram.h"
#include "parser/AliasDef.h"
#include "parser/FunctionHeader.h"

namespace LL2X {
	struct ArrayValue;
	class  ASTNode;
	struct StructValue;
	struct Value;

	class Program {
		private:
			int64_t highestIndex = -1;
			std::mutex mutex;

			std::string outputStruct(const StructValue &);
			std::string outputValue(const TypePtr &type, const ValuePtr &value, const char * &section);
			std::string outputArray(const ArrayValue &);

			static std::string valuePrefix(size_t bitwidth);

		public:
			std::unordered_map<std::string, Function *> functions;
			std::string sourceFilename;
			std::unordered_map<std::string, FunctionHeader *> declarations;
			std::map<std::string, GlobalVarDef *> globals; // keys include the '@'
			/** A set of all globals to which references were emitted while outputting the data section. Doesn't include
			 *  the '@'. */
			std::set<std::string> referencedGlobals;
			std::map<int64_t, std::unordered_set<FnAttr>> fnattrs;
			std::map<int64_t, std::unordered_set<ParAttr>> parattrs;
			std::unordered_map<const std::string *, AliasDef *> aliases;
			std::map<int64_t, File> files;
			std::map<int64_t, Location> locations;
			std::map<int64_t, Subprogram> subprograms;
			std::map<int64_t, LexicalBlock> lexicalBlocks;
			/** A set of all LLVM debug indices found in the program. */
			std::set<int64_t> debugIndices;
			/** A map of names of functions that do nothing except return an argument to the index of the argument they
			 *  return. Names don't contain a leading @. */
			std::map<std::string, int64_t> simpleFunctions;
			/** A set of names of functions that do nothing but return void. Names don't contain a leading @. */
			std::set<std::string> uselessFunctions;
			/** A map of names of functions that do nothing but return a constant to the constant they return.
			 *  Names don't contain a leading @. */
			std::map<std::string, std::shared_ptr<Value>> constantReturningFunctions;

			Program(const ASTNode &);
			~Program();

			/** Populates simpleFunctions. */
			void analyze();

			/** Compiles all the functions in the program. */
			void compile();

			/** Returns the source code of the program. */
			std::string toString();

			/** Outputs the data section to a stream. */
			void dataSection(std::ostream &);

			/** Returns the size (in bits) of the global variable with a given name.
			 *  The name should include an initial "@". */
			int symbolSize(const std::string &) const;

			/** Prints debug information for all the functions in the program. */
			void debug();

			int64_t newDebugIndex();

			void declareBuiltins();

			std::unique_lock<std::mutex> getLock() { return std::unique_lock(mutex); }
	};
}
