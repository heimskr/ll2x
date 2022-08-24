#include "instruction/Sized.h"

namespace LL2X {
	Sized::Sized(int size_):
		size(size_) {}
	
	char Sized::suffix() const {
		switch (x86_64::getWidth(size)) {
			case x86_64::Width::Huge:  return 'H';
			case x86_64::Width::Eight: return 'q';
			case x86_64::Width::Four:  return 'l';
			case x86_64::Width::Two:   return 'w';
			case x86_64::Width::Low:
			case x86_64::Width::High:  return 'b';
			default:
				return '?';
		}
	}
}
