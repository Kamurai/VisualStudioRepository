//Chris Houser and Chris Kemerait
//Lab 8
//Classes
//Create a class for performing arithmetic with complex #s.  Write a driver program to test your 
//class.  Complex numbers have the form realpart + imaginarypart *i, i = sqrt(-1)


#include <iostream>

using namespace::std;




//define class
	class complex
	{
	public:
				
			void getcomplex(double &real, double &imag);
			void setcomplex(double real, double imag);
			void printcomplex();
	
	private:
		double realn;
		double imagn;
	};

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


//functions
	void addition(complex a, complex b);
	void subtraction(complex a, complex b);
//declare complexes
	complex added, subed, a, b;
//variables
	double realadd = 0;
	double imagadd = 0;
	double realsub = 0;
	double imagsub = 0;
	double real = 0;
	double imag = 0;

int main()
{


//set complexes
	added.setcomplex(0, 0);	
	subed.setcomplex(0, 0);
	a.setcomplex(1, 7);
	b.setcomplex(9, 2);
	
//run given code
	a.printcomplex();
	cout << " + ";
	b.printcomplex();
	cout << " = ";
	addition(a, b);
	added.printcomplex();

	cout << "\n";
	a.setcomplex(10, 1);
	b.setcomplex(11, 5);
	a.printcomplex();
	cout << " - ";
	b.printcomplex();
	cout << " = ";
	subtraction(a, b);
	subed.printcomplex();

	cout << endl;

	return 0;
}

void addition(complex a, complex b)
{
	//get real and imag numbers
		a.getcomplex(real, imag);
		realadd = real;
		imagadd = imag;
		b.getcomplex(real, imag);
	//add real numbers from complexs
		realadd += real;
	//add imag numbers from complexs
		imagadd += imag;
	//set complex
		added.setcomplex(realadd, imagadd);
}

void subtraction(complex a, complex b)
{
	//get real and imag numbers
		a.getcomplex(real, imag);
		realsub = real;
		imagsub = imag;
		b.getcomplex(real, imag);
	//sub real numbers from complexs
		realsub -= real;
	//sub imag numbers from complexs
		imagsub -= imag;
	//set complex
		subed.setcomplex(realsub, imagsub);
}


/*
--------------------Configuration: Lab8s - Win32 Debug--------------------
Compiling...
Lab8s.cpp

Lab8s.obj - 0 error(s), 0 warning(s)


--------------------Configuration: Lab8s - Win32 Debug--------------------
Compiling...
Lab8s.cpp
Linking...

Lab8s.exe - 0 error(s), 0 warning(s)

Output:

(1, 7) + (9, 2) = (10, 9)
(10, 1) - (11, 5) = (-1, -4)
Press any key to continue
*/