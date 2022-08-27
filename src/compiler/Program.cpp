#include <atomic>
#include <iostream>
#include <sstream>
#include <thread>

// #define COMPILE_MULTITHREADED
// #define SINGLE_FUNCTION "@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm"

#include "allocator/ColoringAllocator.h"
#include "compiler/BasicBlock.h"
#include "compiler/Getelementptr.h"
#include "compiler/PaddedStructs.h"
#include "compiler/Program.h"
#include "parser/ASTNode.h"
#include "parser/Parser.h"
#include "parser/StructNode.h"
#include "parser/Values.h"
#include "util/Util.h"
#include "main.h"
#include "options.h"

namespace LL2X {
	struct GlobalData {
		ConstantPtr constant;
		ValuePtr value;
		ASTLocation location;
		GlobalData(const ConstantPtr &constant_, const ValuePtr &value_, const ASTLocation &location_):
			constant(constant_), value(value_), location(location_) {}
	};

	Program::Program(const ASTNode &root) {
		// Look for all struct definitions.
		StructType::knownStructs.clear();
		for (const ASTNode *node: root) {
			if (node->symbol == LLVM_STRUCTDEF) {
				const StructNode *struct_node = dynamic_cast<const StructNode *>(node);
				if (!struct_node)
					throw std::runtime_error("struct_node is null in Program::Program");
				StructType::knownStructs.emplace(*struct_node->name, std::make_shared<StructType>(struct_node));
			}
		}

		declareBuiltins();

		for (ASTNode *node: root) {
			if (!node)
				continue;
			switch (node->symbol) {
				case LLVM_FUNCTION_DEF:
					functions.emplace(*node->lexerInfo, new Function(*this, *node));
					break;
				case LLVMTOK_DECLARE: {
					ASTNode *header = node->at(0);
					declarations.emplace(header->lexerInfo->substr(1), dynamic_cast<FunctionHeader *>(header));
					break;
				}
				case LLVMTOK_SOURCE_FILENAME:
					sourceFilename = node->extractName();
					break;
				case LLVM_GLOBAL_DEF:
					if (GlobalVarDef *global = dynamic_cast<GlobalVarDef *>(node)) {
						globals.emplace(*node->lexerInfo, global);
					} else throw std::runtime_error("Node with token GLOBAL_DEF isn't an instance of GlobalVarDef");
					break;
				case LLVMTOK_ATTRIBUTES: {
					AttributesNode *attrnode = dynamic_cast<AttributesNode *>(node);
					fnattrs.emplace(attrnode->index, attrnode->functionAttributes);
					parattrs.emplace(attrnode->index, attrnode->parameterAttributes);
					break;
				}
				case LLVM_ALIAS_DEF:
					aliases.emplace(node->lexerInfo, dynamic_cast<AliasDef *>(node));
					break;
				case LLVMTOK_DIFILE: {
					const int index = node->front()->atoi();
					files.try_emplace(index, node->at(1)->unquote(), node->at(2)->unquote());
					highestIndex = std::max(index, highestIndex);
					break;
				}
				case LLVMTOK_DILOCATION: {
					const int index = node->front()->atoi();
					locations.try_emplace(index, *node->at(1));
					highestIndex = std::max(index, highestIndex);
					break;
				}
				case LLVMTOK_DISUBPROGRAM: {
					const int index = node->front()->atoi();
					subprograms.try_emplace(index, *node->at(1));
					highestIndex = std::max(index, highestIndex);
					break;
				}
				case LLVMTOK_DILB:
				case LLVMTOK_DILBF: {
					const int index = node->front()->atoi();
					lexicalBlocks.try_emplace(index, node->at(2)->atoi(), node->at(1)->atoi());
					highestIndex = std::max(index, highestIndex);
					break;
				}
			}
		}

		for (auto &[index, location]: locations)
			if (subprograms.count(location.scope) != 0)
				location.file = subprograms.at(location.scope).file;
			else if (lexicalBlocks.count(location.scope) != 0) {
				location.file = lexicalBlocks.at(location.scope).file;
				do {
					location.scope = lexicalBlocks.at(location.scope).scope;
				} while (lexicalBlocks.count(location.scope) != 0);
			} else
				warn() << "Couldn't find scope " << location.scope << " from location " << index << ".\n";
	}

	Program::~Program() {
		for (const auto &[fname, function]: functions)
			delete function;
	}

	void Program::analyze() {
		for (auto &[name, function]: functions) {
			ValuePtr value;
			long simple_index = -1;
			switch (function->analyze(&value, &simple_index)) {
				case Function::Type::Simple:
					simpleFunctions.emplace(name.substr(1), simple_index);
					break;
				case Function::Type::Useless:
					uselessFunctions.insert(name.substr(1));
					break;
				case Function::Type::Constant:
					constantReturningFunctions.emplace(name.substr(1), value);
					break;
				default:
					break;
			}
		}
	}

	void Program::compile() {
#ifdef COMPILE_MULTITHREADED
		std::vector<std::thread> threads;
		threads.reserve(functions.size());

		for (std::pair<const std::string, Function *> &pair: functions)
			threads.emplace_back(std::thread([&]() {
				pair.second->compile();
			}));

		for (std::thread &thread: threads)
			thread.join();
#else
		for (std::pair<const std::string, Function *> &pair: functions) {
#ifdef SINGLE_FUNCTION
			if (*pair.second->name == SINGLE_FUNCTION) {
#endif
				// std::cerr << "Compiling " << *pair.second->name << "...\n";
				pair.second->compile();
#ifdef SINGLE_FUNCTION
			}
#endif
		}
#endif
	}

	std::string Program::toString() {
		std::stringstream out;
		// debugSection(&out);
		dataSection(out);
		std::vector<Function *> startup;
		for (std::pair<const std::string, Function *> &pair: functions) {
#ifdef SINGLE_FUNCTION
			if (*pair.second->name == SINGLE_FUNCTION)
#endif
			out << pair.second->toString() << "\n";
			if (pair.second->section && *pair.second->section == ".text.startup")
				startup.push_back(pair.second);
		}

		if (!startup.empty()) {
			out << "\n.section .init_array\n.p2align 3\n";
			for (const Function *function: startup) {
#ifdef USE_UNDERSCORE
				out << ".quad _" << function->name->substr(1) << '\n';
#else
				out << ".quad " << function->name->substr(1) << '\n';
#endif
			}
		}

		return out.str();
	}

	void Program::dataSection(std::ostream &out) {
		std::map<std::string, GlobalData> global_data;
		std::map<std::string, std::pair<const char *, std::string>> global_strings;

		for (const std::pair<const std::string, GlobalVarDef *> &pair: globals) {
			const std::string name = pair.first.substr(1);
			GlobalVarDef *global = pair.second;

			if (global->linkage == Linkage::External)
				continue;

			ConstantPtr constant = global->constant;

			if (!constant) {
				warn() << name << " inexplicably lacks a constant: " << global->debugExtra() << "\n";
				continue;
			}

			constant = constant->convert();
			global_data.try_emplace(name, constant, constant->value, global->location);
		}

		if (global_data.count("llvm.global_ctors") != 0) {
			const GlobalData &def = global_data.at("llvm.global_ctors");
			if (auto *array = dynamic_cast<const ArrayType *>(def.constant->type.get())) {
				out << ".section .data.rel\n";
				out << ".align 8\n\n";
				out << "__ctors_start:\n";
				out << ".quad llvm.global_ctors\n\n";
				out << "__ctors_end:\n";
				// TODO: verify for x86_64
				out << ".quad (llvm.global_ctors + " << (24 * array->count) << ")\n\n";
			} else if (!def.constant->type)
				throw std::runtime_error("@llvm.global_ctors was expected to be an array but has no type");
			else
				throw std::runtime_error("@llvm.global_ctors was expected to be an array but is " +
					def.constant->type->toString());
		}

		bool changed;

		do {
			changed = false;
			for (const auto &[name, data]: global_data) {
				if (data.value) {
					const char *section = nullptr;
					const std::string stringified = outputValue(data.constant->type, data.value, section);
					if (!stringified.empty()) {
						global_strings.try_emplace(name, section, stringified);
						changed = true;
					} else if (data.value->valueType() == ValueType::Global) {
						const std::string &target = *dynamic_cast<GlobalValue *>(data.value.get())->name;
						if (global_strings.count(target) != 0) {
							global_strings.emplace(name, global_strings.at(target));
							changed = true;
						}
					}
				} else {
					global_strings.try_emplace(name, ".data", "");
					changed = true;
				}

				if (changed) {
					global_data.erase(name);
					break;
				}
			}
		} while (changed);

		for (const auto &[name, stringified]: global_strings) {
			out << ".section " << stringified.first << '\n';
			out << ".align 8\n";
			if (stringified.second.empty())
				out << name << ":\n.byte 0\n\n";
			else
				out << name << ":\n" << stringified.second << "\n\n";
		}

		if (!global_data.empty()) {
			error() << "Couldn't translate global constants (is there a loop?):\n";
			for (const auto &[name, data]: global_data)
				std::cerr << "- " << name << " @ " << data.location;
			throw std::runtime_error("Global constant translation failed");
		}
	}

	std::string Program::outputStruct(const StructValue &structval) {
		std::string out;
		bool first = true;
		const bool packed = structval.packed;

		std::vector<ConstantPtr> constants;
		std::vector<TypePtr> types;

		for (const ConstantPtr &constant: structval.constants) {
			constants.push_back(constant->convert());
			types.push_back(constants.back()->type);
		}

		const char *dummy = nullptr;
		if (packed) {
			for (const ConstantPtr &constant: constants) {
				if (first)
					first = false;
				else
					out += '\n';
				out += outputValue(constant->type, constant->value, dummy);
			}
		} else {
			auto snode = std::make_shared<StructNode>(types, packed? StructShape::Packed : StructShape::Default);
			auto stype = std::make_shared<StructType>(snode);
			int sum = 0, i = 0;
			for (const ConstantPtr &constant: constants) {
				if (first)
					first = false;
				else
					out += '\n';
				const int offset = PaddedStructs::getOffset(stype, i++) / 8;
				const int difference = offset - sum;
				if (difference < 0) {
					throw std::runtime_error("Difference between struct offset and total width is negative");
				} else if (0 < difference) {
					out += ".fill " + std::to_string(difference) + ", 1, 0\n";
					sum = offset;
				}
				out += outputValue(constant->type, constant->value, dummy);
				sum += constant->type->width() / 8;
			}
		}

		return out;
	}

	std::string Program::valuePrefix(size_t bitwidth) {
		if (bitwidth % 8 != 0)
			throw std::runtime_error("Int width (" + std::to_string(bitwidth) + "b) isn't a multiple of 8");
		switch (bitwidth / 8) {
			case 8: return ".quad ";
			case 4: return ".int ";
			case 2: return ".word ";
			case 1: return ".byte ";
			default:
				throw std::runtime_error("Invalid int width: " + std::to_string(bitwidth / 8) + "B");
		}
	}

	std::string Program::outputValue(const TypePtr &type, const ValuePtr &value, const char * &section) {
		switch (value->valueType()) {
			case ValueType::CString:
				section = ".rodata";
				return ".ascii \"" + dynamic_cast<CStringValue *>(value.get())->reescape() + "\"";
			case ValueType::Array:
				section = ".data";
				return outputArray(*dynamic_cast<ArrayValue *>(value.get()));
			case ValueType::Int: {
				section = ".data";
				const auto int_width = dynamic_cast<IntType *>(type.get())->intWidth;
				const std::string stringified = std::to_string(dynamic_cast<IntValue *>(value.get())->longValue());
				return valuePrefix(int_width) + stringified;
			}
			case ValueType::Null:
			case ValueType::Undef:
			case ValueType::Zeroinitializer:
				section = ".data";
				if (type) {
					const auto width = type->width();
					if (width % 8 != 0)
						throw std::runtime_error("Invalid type width for null/undef/zeroinitializer value: " +
							std::to_string(width) + "b");
					return ".fill " + std::to_string(width / 8) + ", 1, 0";
				}
				return ".byte 0";
			case ValueType::Struct:
				section = ".data";
				return outputStruct(*dynamic_cast<StructValue *>(value.get()));
			case ValueType::Global: {
				section = ".data";
				const std::string *name = dynamic_cast<GlobalValue *>(value.get())->name;
				referencedGlobals.insert(*name);
				return ".quad " + *name;
			}
			case ValueType::Getelementptr: {
				section = ".data";
				GetelementptrValue *gep = dynamic_cast<GetelementptrValue *>(value.get());

				auto validate = [value](GetelementptrValue *gep) {
					for (const auto &[width, decimal]: gep->decimals)
						if (!std::holds_alternative<long>(decimal)) {
							std::cerr << *value << '\n';
							throw std::runtime_error("Found an invalid decimal in a getelementptr expression in "
								"Program::outputValue");
						}
				};

				validate(gep);
				long offset = Getelementptr::compute(gep, nullptr) / 8;
				std::string comment = " // Offsets: " + std::to_string(offset);
				bool comment_changed = false;

				while (gep->variable->valueType() == ValueType::Getelementptr) {
					gep = dynamic_cast<GetelementptrValue *>(gep->variable.get());
					validate(gep);
					const long new_offset = Getelementptr::compute(gep, nullptr) / 8;
					comment += ", " + std::to_string(new_offset);
					comment_changed = true;
					offset += new_offset;
				}

				if (gep->variable->valueType() != ValueType::Global)
					throw std::runtime_error("Expected source of a getelementptr expression to be a global, but got "
						"type " + value_map.at(gep->variable->valueType()) + " instead");

				return ".quad " + *dynamic_cast<GlobalValue *>(gep->variable.get())->name + "+" + std::to_string(offset)
					+ (comment_changed? comment : "");
			}
			default:
				std::cerr << *value << '\n';
				throw std::runtime_error("Unhandled ValueType in Program::outputValue: " +
					value_map.at(value->valueType()));
		}
	}

	std::string Program::outputArray(const ArrayValue &array) {
		std::string out;
		bool first = true;
		const char *dummy = nullptr;
		for (const ConstantPtr &constant: array.constants) {
			if (first)
				first = false;
			else
				out += "\n";
			ConstantPtr converted = constant->convert();
			out += outputValue(converted->type, converted->value, dummy);
		}
		return out;
	}

	void Program::debugSection(std::ostream *out) {
		// TODO: implement debug data
		(void) out;
	}

	int Program::symbolSize(const std::string &name) const {
		GlobalVarDef *def = globals.at(name);
		if (def->type)
			return def->type->width();
		if (def->constant) {
			if (def->constant->type)
				return def->constant->type->width();
			throw std::runtime_error("Type is null in constant of global " + name);
		}
		throw std::runtime_error("Type and constant are both null for global " + name);
	}

	void Program::debug() {
		for (std::pair<const std::string, Function *> &pair: functions) {
#ifdef SINGLE_FUNCTION
			if (*pair.second->name == SINGLE_FUNCTION)
#endif
				pair.second->debug();
		}
	}

	int Program::newDebugIndex() {
		return ++highestIndex;
	}

	void Program::declareBuiltins() {
		auto memcpy_args = std::make_shared<FunctionArgs>(std::vector<FunctionArgument> {
			{PointerType::make(VoidType::make()), "dest"},
			{PointerType::make(VoidType::make()), "src"},
			{IntType::make(64), "n"},
		}, false);

		declarations.emplace("memcpy", new FunctionHeader("memcpy", PointerType::make(VoidType::make()), memcpy_args));

		auto memmove_args = std::make_shared<FunctionArgs>(std::vector<FunctionArgument> {
			{PointerType::make(VoidType::make()), "dest"},
			{PointerType::make(VoidType::make()), "src"},
			{IntType::make(64), "n"},
		}, false);

		declarations.emplace("memmove", new FunctionHeader("memmove", PointerType::make(VoidType::make()),
			memmove_args));

		auto memset_args = std::make_shared<FunctionArgs>(std::vector<FunctionArgument> {
			{PointerType::make(VoidType::make()), "s"},
			{IntType::make(32), "c"},
			{IntType::make(64), "n"},
		}, false);

		declarations.emplace("memset", new FunctionHeader("memset", PointerType::make(VoidType::make()), memset_args));
	}
}
