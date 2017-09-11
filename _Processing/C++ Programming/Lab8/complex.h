//define header
	#ifdef COMPLEX_H
	#define COMPLEX_H	
//define class
	class Complex
	{
	public:
			Complex();
			void getComplex(double &real, double &imag);
			void setComplex(double real, double imag);
			void printComplex();
			~Complex();
	
	private:
		double realn;
		double imagn;
	};
#endif