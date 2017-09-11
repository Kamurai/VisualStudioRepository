/*
	Kemerait, Christopher
	0004 93870
	CS 3402
	Due: 10 Nov 2009
	Exercise 13, Ch 11, Page 638
	
	Description:
	
		Assume that aList is a list of Type T.  
		Implement the function removeDuplicates() by declaring a set of type T 
		and copying the elements from aList into the set.
		Copy the elements from the set back to the list 
		so that the nonduplicate elements appear in descending order.

		template <typename T>
		void removeDuplicates( list<T>& aList);

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

//header files
	//#include "d_tnode.h"
	//#include "d_tnodel.h"
	//#include "d_random.h"
	//#include "d_stree.h"
	//#include "d_util.h"

//procedures
	using namespace::std;

//declare variables
	string input = "0";
	int pence = 0;
	list<int> thelist;
	
//declare functions
	template <typename T>
	void removeDuplicates( list<T>& aList);


	int main()
	{
		//build list
		list<int> thelist;

		thelist.insert(thelist.end(), 5);
		thelist.insert(thelist.end(), 6);
		thelist.insert(thelist.end(), 5);
		thelist.insert(thelist.end(), 7);
		thelist.insert(thelist.end(), 5);
		thelist.insert(thelist.end(), 8);
		thelist.insert(thelist.end(), 5);
		thelist.insert(thelist.end(), 9);
		thelist.insert(thelist.end(), 5);
		thelist.insert(thelist.end(), 4);
		


		//prompt: how list begins
		cout << "The how the list begins:" << endl;

		int goat = 0;

		//output results
		for(list<int>::iterator x = thelist.begin(); x != thelist.end(); x++)
		//for(int x = 0; x != thelist.size(); x++)
		{
			goat = *x;
			cout << goat << "   ";
		}

		//computation
		removeDuplicates(thelist);



		//spacing
		cout << endl;
		cout << endl;

		//prompt: how the list ends
		cout << "This how the list ends:" << endl;

		//output results
		for(list<int>::iterator x = thelist.begin(); x != thelist.end(); x++)
		//for(int x = 0; x != thelist.size(); x++)
		{
			goat = *x;
			cout << goat << "   ";
			//cout << 1 << "   ";
		}
		cout << endl;
		

		return 0;
	}

	template <typename T>
	void removeDuplicates( list<T>& aList)
	{

/*
		Implement the function removeDuplicates() by declaring a set of type T 
		and copying the elements from aList into the set.
		Copy the elements from the set back to the list 
		so that the nonduplicate elements appear in descending order.
*/
		
		//int * one = &v[0];//v.begin();
		list<int>::iterator one = aList.begin();
			
		//int * two = &v[v.size()-1]+1;//v.end();
		list<int>::iterator two = aList.end();
		

		set<int> aset;
		int goat;
		set<int>::iterator three = aset.begin();
		set<int>::iterator four = aset.end();
		//list<int>::reverse_iterator three = aset.rbegin();
		//list<int>::reverse_iterator four = aset.rend();

		//copy alist into aset
		for(list<int>::iterator x = aList.begin(); x != aList.end(); x++)
		{
			
			goat = *x;
			aset.insert(aset.end(), goat);
		}
		

		//clear alist
		aList.clear();

		//copy aset back into alist
		
		//for(; four != three; four--)
		for(three = aset.begin(); three != four; three++)
		{
			goat = *three;
			//goat = *four;
			aList.insert(aList.end(), goat);
			
			//cout << goat << "   ";
		}
		
		aList.reverse();

		

		
	}

