//define file (???)
	#include <iostream>
	#include "COMPLEX.H"
	
//define methods


	void Complex::getComplex(double &rreal, double &rimag)
	{
		rreal = realn;
		rimag = imagn;
	}
	
	void Complex::setComplex(double real, double imag)
	{
		realn = real;
		imagn = imag;
	}
	
	void Complex::printComplex()
	{
		cout << "(" << realn << ", " << imagn << ")";
	}
