#pragma once

#include <string>

namespace LL2X {
	class ASTNode;

	class Subprogram {
		public:
			std::string name, linkageName;
			int64_t scope;
			int64_t file;
			int64_t line;
			int64_t type;
			int64_t scopeLine;
			int64_t unit;
			int64_t declaration;
			int64_t retainedNodes;
			/** The index of the subprogram within the debug data section, not within the LLVM IR. */
			int64_t index = -1;

			Subprogram(const ASTNode &);

			/** This function returns the regular name if it isn't empty or the linkage name otherwise.
			 *  Removes quotes. */
			std::string getName() const;

		private:
			static int64_t parseBang(const ASTNode &);
	};
}
