//define file (???)
	
	#include "classcomplex.h"
//define methods
	void complex::getcomplex(double &rreal, double &rimag)
	{
		rreal = realn;
		rimag = imagn;
	}
	
	void complex::setcomplex(double real, double imag)
	{
		realn = real;
		imagn = imag;
	}
	
	void complex::printcomplex()
	{
		cout << "(" << realn << ", " << imagn << ")";
	}
