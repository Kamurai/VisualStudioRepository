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
	#include <d_stree.h>
	
//procedures
	using namespace::std;

//declare variables
	stree appletree = new stree();
	
	
		
//declare functions

	
	
	
	void main() //int main()
	{
		stree appletree = new stree();
	
		for(int x = 0; x < arr.size; x++)
		{
			appletree.insert(arr[x]);
		}
		
		
		appletree.displayTree(arr.size);
		//return 0;

	}
	
	
	
	
	

