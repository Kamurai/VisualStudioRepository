/*
	Kemerait, Christopher
	0004 93870
	CS 3402
	Due: 13 Oct 2009
	Exercise 35, Ch 10, Page 579
	
	Description:
	In a program, declare the stree object charTree with initial values from array arr.  
	Display	the tree by the tree by using the member function displayTree().
	
	char arr[] = { 'S', 'J', 'K', 'L' 'X', 'F', 'E', 'Z'};
	
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
	#include "d_stree.h"
	
//procedures
	using namespace::std;

//declare variables
	stree<char> * charTree;
		
//declare functions
	
	int main()
	{
		char arr[] = { 'S', 'J', 'K', 'L', 'X', 'F', 'E', 'Z'};
		
		char * one = &arr[0];
		char * two = &arr[8];

		stree<char> * charTree = new stree<char>(one, two);

		//output results

		cout << "The structure of Tree 0 is:" <<endl;
		charTree->displayTree(2);

		return 0;
	}
	
	
	
	
	

