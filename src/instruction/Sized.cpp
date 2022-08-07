#include "instruction/Sized.h"

namespace LL2X {
	Sized::Sized(int size_):
		size(size_) {}
	
	char Sized::suffix() const {
		switch (size) {
			case 8:  return 'q';
			case 4:  return 'l';
			case 2:  return 'w';
			case 1:  return 'b';
			default: return '?';
		}
	}
}
