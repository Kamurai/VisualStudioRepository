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

//header files
	#include "d_tnode.h"
	//#include "d_tnodel.h"
	#include "d_random.h"
	#include "d_stree.h"
	#include "d_util.h"

//procedures
	using namespace::std;

//declare variables
	string input = "0";
	vector<int> v;
	stree<int> * vtree;
	

//declare functions
	vector<int> promptforvector();
	static bool DetermineIfNumber(string trash);
	static bool NumberCheck(char tempchar);
	

	int main()
	{
		//prompt and build vector
		vector<int> v = promptforvector();

		cout << "The randomly generated vector is displayed as follows:" << endl;

		//output results
		writeVector(v);
		cout << endl;
		cout << endl;

		//int * one = &v[0];//v.begin();
//v.size()-1 does not allow the last value in v to be inserted into vtree
		//int * two = &v[v.size()-1]+1;//v.end();

		//copy vector into a search tree
			//stree<int> vtree  = new stree<int>(one, two);
		
		stree<int> vtree;
       for (int i=0;i < v.size();i++)
	   {
               vtree.insert(v[i]);
	   }

		cout << "The written stree based on the vector is displayed as follows:" << endl;


       writeSTree(vtree," ");
       cout << endl;
		
//displaytree		This works
		//vtree.displayTree(4);
//output results	This does not work at all
		//writeSTree( (const stree<int>&) vtree, "     ");
		
		
		return 0;
	}

	vector<int> promptforvector()
	{
		bool box = false;
		randomNumber * generator = new randomNumber();


		while( box == false )
		{
			cout << "Enter the number of elements the vector should contain.\n";
			box = false;
			cin  >> input;
			cout << "\n\n";

			box = DetermineIfNumber(input);

		}
		

		//convert input to int
		//index = Convert.ToInt(input);
		int pence = atoi( input.c_str() ); 

		
		//declare vector v
		vector<int> v(pence);
		std::vector<int>::iterator it;

		
		//walk through vector adding random numbers
		//for(it = v.begin(); it != v.end(); it++)
		for(int x = 0; x < v.size(); x++)
		{
			//insert each random number using iterators
				//v.insert( it, 1, generator->random(100) );
			v[x] = generator->random(100);
		}


		box = false;

		return v;
	}


	static bool DetermineIfNumber(string trash)
	{
		//declare variables
	    bool cherry = true;
	    char tempchar;

	    //check characters in string and identify as a number
		for (int x = 0; x < trash.length(); x++)
	    {
			//p=&l[0];
			tempchar = trash[x];  //atoi( trash.substr(x, 1) );

	                //if there are no violations
	                if (cherry == true)
	                {
						//determine if number
	                    cherry = NumberCheck(tempchar);
	                }

	                //escape
					//if string contains a character is not a number
	                if (cherry == false)
	                {
						//if false
	                    return cherry;
	                }
		}
				
				//if true (if a number)
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

		static bool NumberCheck(char tempchar)
        {
            bool cherry = false;
			int tempnum = int(tempchar); //atoi( tempchar );
			
			
			//check for type
            //if a number
            if (tempnum >= 48 && tempnum <= 57)
            {
                //violation
                cherry = true;
                return cherry;
            }

			//if false
            return cherry;
        }
