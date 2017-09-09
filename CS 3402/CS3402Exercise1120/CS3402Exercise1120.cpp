/*
	Kemerait, Christopher
	0004 93870
	CS 3402
	Due: 10 Nov 2009
	Exercise 20, Ch 11, Page 640
	
	Description:
	
		Implement the function randMap(),
		which takes an integer n as its argument and returns a map<int, int> container.
		
		After declaring a local map object,
		the function uses the random-number generator to produce n integers in the range 0-9.
		For each random integer, create or update an entry in the map,
		where k is the key and the value maintains a frequency count
		on the number of times k is generated.
		The local map is the return value.

		map<int, int> randMap(int n);

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
	#include <vector>
	#include <list>
	#include <set>
	#include <map>

//header files
	//#include "d_tnode.h"
	//#include "d_tnodel.h"
	#include "d_random.h"
	//#include "d_stree.h"
	//#include "d_util.h"

//procedures
	using namespace::std;

//declare variables
	string input = "0";
	int pence = 0;
	list<int> thelist;
	
//declare functions
	map<int, int> randMap(int n);
	static bool DetermineIfNumber(string trash);
	static bool NumberCheck(char tempchar);

	int main()
	{
		bool box = false;
		map<int, int> longmap;


		while( box == false )
		{
			cout << "Enter the number of elements the randomly-generated map should contain.\n";
			box = false;
			cin  >> input;
			cout << "\n\n";

			box = DetermineIfNumber(input);
		}


		//generation
		longmap = randMap( atoi( input.c_str() ) );

/*
		cout << "Key" << "  " << "Value" << endl;
		//output results
		for(int x = 0; x < longmap.size(); x++)
		{
			cout << x << "      " << longmap[x] << endl;
		}
		
		//writeMap(longmap, " ");
		
		cout << endl;

*/

		pair<int, int> goat;
		cout << "Key" << "  " << "Value" << endl;
		for(map<int, int>::iterator first = longmap.begin(); first != longmap.end(); first++)
		{
			goat = *first;
			cout << goat.first << "     " << goat.second << endl;
		}


		
		return 0;
	}

	map<int, int> randMap(int n)
	{

/*
		After declaring a local map object,
		the function uses the random-number generator to produce n integers in the range 0-9.
		For each random integer, create or update an entry in the map,
		where k is the key and the value maintains a frequency count
		on the number of times k is generated.
		The local map is the return value.
*/
		
		map<int, int> shortmap;
		randomNumber  generator;
		int k = 0;
		//pair<int, int> * nova  = new pair<int, int>();
		pair<int, int> nova;


//the following was added post-assignment
		//add random integers into map
		for(int x = 0; x < 10; x++)
		{
			//update pair
			nova.first = x;
			nova.second = 0;
			//insert each random number
			shortmap.insert( nova );
		}
//end post-assignmetn add-on

		//add random integers into map
		for(int x = 0; x < n; x++)
		{
			//update pair
			nova.first = generator.random(10);
			k = shortmap[nova.first]++;
			nova.second = k;
			//insert each random number
			shortmap.insert( nova );
		}

		
		return shortmap;
		
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
