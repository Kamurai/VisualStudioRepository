//define header
	#ifdef COMPLEX_H
	#define COMPLEX_H	
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
#endif