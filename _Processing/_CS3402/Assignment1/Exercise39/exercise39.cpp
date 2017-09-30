/*
	Kemerait, Christopher
	0004 93870
	CS 3402
	Due: 13 Oct 2009
	Exercise 35, Ch 10, Page 579
	
	Description:
	A program prompts the user to enter an integer n specifying the number
	of elements that will be added to a vector v.
	Use the random-number generator to create n integer values in the
	 range from 0 to 99, adding each value to the vector.
	Output the elements by using writeVector().
	Copy the elements from the vector into the binary search tree vtree,
	 and output the ordered list by using writeSTree() from "d_util.h".
	
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
	#include <d_tnodel.h>

//procedures
	using namespace::std;

//declare variables
	stree appletree = new stree();
	string input = "0";
	int index = 0;

//declare functions




	void main() //int main()
	{
		stree appletree = new stree();

		prompt();

		outputResults();
		//return 0;

	}

	void prompt()
	{
		do
		{
			cout << "Enter the number of elements the vector should contain.\n";
			box = false;
			cin  >> input;
			cout << "\n\n";

			if( AnalyzeString(input) == false)
			{
				box = true;
			}

		}
		while( box == false );

		//convert input to int
		index = Convert.ToInt(input);
		vector v = new vector[index];
		//walk through vector adding random numbers
		for(int x = 0; x < v; x++)
		{
			v[x] = randomNumber.random();
		}


		function = 0;
		box = false;
	}


	static bool AnalyzeString(string trash)
	{
		//declare variables
	    bool cherry = false;
	    char tempchar = '0';

	    //check characters in string and identify as a number
	    for (int x = 0; x < trash.Length; x++)
	    {
	    	tempchar = Convert.ToChar(trash.Substring(x, 1));

	                //if there are no violations
	                if (cherry == false)
	                {
	                    cherry = NumberCheck(tempchar);
	                }

	                //escape
	                if (cherry == true)
	                {
	                    return cherry;
	                }
	            }

	            return cherry;

	            /*
	             * Example of use of this method
	             * while (cherry == true)
	            {
	                System.Console.Write("Please enter the height of the cylinder.\n");
	                trash = System.Console.ReadLine();
	                cherry = AnalyzeString(trash);
	            }
	            cherry = true;
	             * */

	        }


