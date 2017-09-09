/*
	Kemerait, Christopher
	
	GA Southern Lab 3
*/


//libraries
	#include <iostream>
	#include <iomanip>
	#include <cmath>
	#include <string>
	#include <cstring>
	#include <iostream>
	#include <fstream>
	#include <cassert>
	#include <cstdlib>

//header files
//	#include "d_tnode.h"
	#include "d_tnode1.h"
	
//procedures
	using namespace::std;

//declare variables
	tnode<char> * tree0 = buildTree(0);
	tnode<char> * tree1 = buildTree(1);
	tnode<char> * tree2 = buildTree(2);
	
		
//declare functions
	template <typename T>
	int countOneChild(tnode<T> *t);
	
	//gsu
	double increase(double amount, double in_rate_pc);



	// results here, for example
		/*
		Please enter your current hourly rate and percent increase:
		22 25
		New Rate is 27.5Press any key to continue
		Etc>*/


/*Test wrapper, code for testing procedural functions.  purpose: making adaptations and providing test setup for systematic testing; for the CSCI 1301 prepared by Dr Jovanovich */

	
	
	
	int main()
	{
		
		double hourly_rate, new_rate, raise;
		// prompt for input of :hourly rate and raise
			cout << "Please enter your current hourly rate and percent increase:" << endl;
			cin >> hourly_rate >> raise;
			new_rate = increase(hourly_rate, raise);
		//display output
			cout << "New rate is: " << new_rate;

		//spacing
			cout << "\n\n";
			
		
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
			average = (num1 +num2 + num3)/3.0;
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

		

		/**/
		
		/*
		int count0 = countOneChild(buildTree(0));
		int count1 = countOneChild(buildTree(1));
		int count2 = countOneChild(buildTree(2));
		
		
		//output
		
		cout << "The structure of Tree 0 is:" <<endl;
		displayTree(tree0,3);
		cout << "Number of nodes with one child in Tree 0: "
		  << count0 << endl <<endl <<endl;

		cout << "The structure of Tree 1 is:" <<endl;
		displayTree(tree1,3);
		cout << "Number of nodes with one child in Tree 1: "
		  << count1 << endl<<endl <<endl;

		cout << "The structure of Tree 2 is:" <<endl;
		displayTree(tree2,3);
		cout << "Number of nodes with one child in Tree 2: "
		  << count2 << endl<<endl <<endl;

		return 0;
		*/
	}
	
	//function
	double increase(double amount, double in_rate_pc)
	{
		double new_amount;
		new_amount = amount*(1+in_rate_pc/100.0);
		return new_amount;
	}


	template <typename T>
	int countOneChild(tnode<T> *t)
	{
	/*
		Given a Node inside a Tree.
		determine which nodes have only one child (not the root, and not the leaves
		increment a number for each one found
	*/
	
		int num = 0;
		tnode<char> * current = new tnode<char>();
		
		
		//Given the root
		current = t;
		
		//analyze the current node
			//determine if root or leaf
		if( current != NULL && (current->left != NULL || current->right != NULL ) )
		{

		//traverse the rest of the tree
			//determine single child parent
			if( (current->left != NULL && current->right == NULL) || (current->left == NULL && current->right != NULL) )
			{
				num++;
			}	
		//traverse left
			if( current->left != NULL)
			{
				num += countOneChild(current->left);
			}	
		//traverse right
			if( current->right != NULL)
			{
				num += countOneChild(current->right);
			}
		
		}		
	
		return num;
	}
	
	
	
	
	

