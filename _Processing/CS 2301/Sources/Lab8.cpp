//Chris Houser and Chris Kemerait
//Lab 8
//Classes
//Create a class for performing arithmetic with Complex #s.  Write a driver program to test your 
//class.  Complex numbers have the form realpart + imaginarypart *i, i = sqrt(-1)


#include <iostream>
#include "COMPLEX.H"

using namespace::std;
//declare functions
	void addition(Complex a(double , double ) Complex b(double , double ));
	void subtraction(Complex a(double , double ) Complex b(double , double ));
//declare Complexes
	Complex added(double 0, double 0), subed(double 0, double 0), a(double 0, double 0), b(double 0, double 0);
//variables
	double realadd = 0;
	double imagadd = 0;
	double realsub = 0;
	double imagsub = 0;
	double real = 0;
	double imag = 0;

int main()
{


//set Complexes
	added.setComplex(0, 0);	
	subed.setComplex(0, 0);
	a.setComplex(1, 7);
	b.setComplex(9, 2);
	
//run given code
	a.printComplex();
	cout << " + ";
	b.printComplex();
	cout << " = ";
	addition(a, b);
	added.printComplex();

	cout << "\n";
	a.setComplex(10, 1);
	b.setComplex(11, 5);
	a.printComplex();
	cout << " - ";
	b.printComplex();
	cout << " = ";
	subtraction(a, b);
	subed.printComplex();

	cout << endl;

	return 0;
}

void addition(Complex a, Complex b)
{
	//get real and imag numbers
	//problem
		a.getComplex(real, imag);
	//not supposed to equal zero instead of variables
		realadd = real;
		imagadd = imag;
	//problem
		b.getComplex(real, imag);
	//add real numbers from Complexs
	//not supposed to equal zero instead of variables
		realadd += real;
	//add imag numbers from Complexs
	//not supposed to equal zero instead of variables
		imagadd += imag;
	//set Complex
		added.setComplex(realadd, imagadd);
}

void subtraction(Complex a, Complex b)
{
	//get real and imag numbers
	//problem
		a.getComplex(real, imag);
	//not supposed to equal zero instead of variables
		realsub = real;
		imagsub = imag;
	//problem
		b.getComplex(real, imag);
	//sub real numbers from Complexs
	//not supposed to equal zero instead of variables
		realsub -= real;
	//sub imag numbers from Complexs
	//not supposed to equal zero instead of variables
		imagsub -= imag;
	//set Complex
		subed.setComplex(realsub, imagsub);
}