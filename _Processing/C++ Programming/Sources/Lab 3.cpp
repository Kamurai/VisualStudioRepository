#include <iostream.h>
double increase(double amount, double in_rate_pc); //prototype

int main()
{
	double hourly_rate, new_rate, raise;
	// prompt for input of :hourly rate and raise
		cout << "Please enter your current hourly rate and percent increase:" << endl;
		cin >> hourly_rate >> raise;
		new_rate = increase(hourly_rate, raise);
	//display output
		cout << "New rate is: " << new_rate;

			return 0;
}
//function
	double increase(double amount, double in_rate_pc)
	{
		double new_amount:
		new_amount = amount*(1+in_rate_pc/100.0);
		return new_amount;
	}
// results here, for example
/*
Please enter your current hourly rate and percent increase:
22 25
New Rate is 27.5Press any key to continue
Etc>*/


/*Test wrapper, code for testing procedural functions.  purpose: making adaptations and providing test setup for systematic testing; for the CSCI 1301 prepared by Dr Jovanovich */

#include <iostream.h>
#include <iomanip.h>

int main()
{
	//test wrapper starts here:
	//place declarations and prime initial values for the test setup
	// for example:
		char test; int plan_cases, actual_cases = 0, regression_number;
		cout << "Enter a) number of test cases planed and b) regresion report number" <<
	endl;
		cin >> plan_cases >> regression_number;

	//code to be tested
		
		int num1, num2, num3;
		double average;
		do
		{
			cout << "Enter three integers" << endl;
			cin >> num1 >> num2 >> num3;
	//echo: // cout << "You entered:" << num1 << " " << num2 << " " << num3 << enl;
			average - (num1 +num2 + num3)/3.0;
			cout << "Average is:" << average << endl;

	//end of illustrative code to be tested

	//test wrapper continue here:
		actual_cases +-1;
	//control the end of tests here; for example
			cout << "If you wish to end testing enter N here;\n";
			cin >> test;
		}
		while(test !='n' && test !='N');
	//totaling test results here;
		cout << "TEST REPORT" << endl << endl; // for example
		cout << "planned cases: actual cases: regression number: " << endl;
		cout << plan_cases << setw(25) << actual_cases << setw(25) <<
		regression_number;
		cout << endl;
		return 0;
}
//test results here: