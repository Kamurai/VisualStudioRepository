/*
	Kemerait, Christopher
	0004 93870
	CS 3402
	Due: 10 Nov 2009
	Exercise 14, Ch 11, Page 638
	
	Description:
	
		Set A is a subset of set B provided that each element of A is also an element of B.
		Implement the set relation as a function subset() that takes sets lhs and rhs
		as arguments and returns true if lhs is a subset of rhs.
		In the review exercises, the implementation uses set operations.
		Your implementation should use iterators lhsIter and rhsIter to scan the two ordered sets.

		template <typename T>
		bool subset( const set<T>& lhs, const set<T>& rhs);

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
	bool subset( const set<T>& lhs, const set<T>& rhs);


	int main()
	{
		//build sets
		set<int> seta;

		seta.insert(seta.end(), 1); 
		seta.insert(seta.end(), 2); 
		seta.insert(seta.end(), 3); 
		seta.insert(seta.end(), 6); 
		seta.insert(seta.end(), 7); 
		seta.insert(seta.end(), 8); 
		seta.insert(seta.end(), 9); 
		seta.insert(seta.end(), 10); 
		

		set<int> setb;

		setb.insert(setb.end(), 1); 
		setb.insert(setb.end(), 2); 
		setb.insert(setb.end(), 3); 
		setb.insert(setb.end(), 6); 
		setb.insert(setb.end(), 7);

		set<int> setc;

		setc.insert(setc.end(), 1); 
		setc.insert(setc.end(), 2); 
		setc.insert(setc.end(), 3); 
		setc.insert(setc.end(), 4); 
		setc.insert(setc.end(), 11);

		set<int> setd;

		setd.insert(setd.end(), 0); 
		setd.insert(setd.end(), 1); 
		setd.insert(setd.end(), 2); 
		setd.insert(setd.end(), 3); 
		setd.insert(setd.end(), 4);

		set<int> sete;

		sete.insert(sete.end(), 1); 
		sete.insert(sete.end(), 2); 
		sete.insert(sete.end(), 3); 
		sete.insert(sete.end(), 4); 

		set<int> setf;

		setf.insert(setf.end(), 3); 
		setf.insert(setf.end(), 6); 
		setf.insert(setf.end(), 8); 
		

		set<int> setg;

		setg.insert(setg.end(), 8); 
		setg.insert(setg.end(), 9); 
		setg.insert(setg.end(), 10); 

		int goat = 0;

		//prompt: how list begins
		cout << "The initial sets:" << endl;
		cout << "Set A:" << "    ";
		
		//output results
		for(set<int>::iterator x = seta.begin(); x != seta.end(); x++)
		{
			goat = *x;
			cout << goat << "   ";
		}
		
		cout << endl;
		cout << "Set B:" << "    ";

		for(set<int>::iterator x = setb.begin(); x != setb.end(); x++)
		{
			goat = *x;
			cout << goat << "   ";
		}

		cout << endl;
		cout << "Set C:" << "    ";

		for(set<int>::iterator x = setc.begin(); x != setc.end(); x++)
		{
			goat = *x;
			cout << goat << "   ";
		}

		cout << endl;
		cout << "Set D:" << "    ";

		for(set<int>::iterator x = setd.begin(); x != setd.end(); x++)
		{
			goat = *x;
			cout << goat << "   ";
		}

		cout << endl;
		cout << "Set E:" << "    ";

		for(set<int>::iterator x = sete.begin(); x != sete.end(); x++)
		{
			goat = *x;
			cout << goat << "   ";
		}

		cout << endl;
		cout << "Set F:" << "    ";

		for(set<int>::iterator x = setf.begin(); x != setf.end(); x++)
		{
			goat = *x;
			cout << goat << "   ";
		}

		cout << endl;
		cout << "Set G:" << "    ";

		for(set<int>::iterator x = setg.begin(); x != setg.end(); x++)
		{
			goat = *x;
			cout << goat << "   ";
		}

		cout << endl;

		//spacing
		cout << endl;
		cout << endl;
		

		//computation
		if( subset( seta, setb) == true)
		{
			//prompt: set b is subset of a
			cout << "Set B is a subset of set A." << endl;

		}
		else
		{
			//prompt: set b is not subset of a
			cout << "Set B is a not subset of set A." << endl;
		}

		//computation
		if( subset( seta, setc) == true)
		{
			//prompt: set c is subset of a
			cout << "Set C is a subset of set A." << endl;

		}
		else
		{
			//prompt: set c is not subset of a
			cout << "Set C is a not subset of set A." << endl;
		}

		//computation
		if( subset( seta, setd) == true)
		{
			//prompt: set d is subset of a
			cout << "Set D is a subset of set A." << endl;

		}
		else
		{
			//prompt: set d is not subset of a
			cout << "Set D is a not subset of set A." << endl;
		}

		//computation
		if( subset( seta, sete) == true)
		{
			//prompt: set e is subset of a
			cout << "Set E is a subset of set A." << endl;

		}
		else
		{
			//prompt: set e is not subset of a
			cout << "Set E is a not subset of set A." << endl;
		}

		//computation
		if( subset( seta, setf) == true)
		{
			//prompt: set f is subset of a
			cout << "Set F is a subset of set A." << endl;

		}
		else
		{
			//prompt: set f is not subset of a
			cout << "Set F is a not subset of set A." << endl;
		}

		//computation
		if( subset( seta, setg) == true)
		{
			//prompt: set g is subset of a
			cout << "Set G is a subset of set A." << endl;

		}
		else
		{
			//prompt: set g is not subset of a
			cout << "Set G is a not subset of set A." << endl;
		}

		return 0;
	}

	template <typename T>
	bool subset( const set<T>& lhs, const set<T>& rhs)
	{

/*
		Set A is a subset of set B provided that each element of A is also an element of B.
		Implement the set relation as a function subset() that takes sets lhs and rhs
		as arguments and returns true if lhs is a subset of rhs.
		In the review exercises, the implementation uses set operations.
		Your implementation should use iterators lhsIter and rhsIter to scan the two ordered sets.

*/

		bool flag = true;
		//bool cherry = false;
		set<int>::const_iterator lhsIter = lhs.begin();
		set<int>::const_iterator rhsIter = rhs.begin();
		//set<int>::reverse_iterator lhsRever = lhs.rbegin();
		//set<int>::reverse_iterator rhsRever = rhs.rbegin();

		//	1	2	3	4	5	6	7	8	9	10
		//	1	3	5
		//	3	5	11


		//if the first element of the second set is lower than the first element of the first set or
		if( ( *rhs.begin() < *lhs.begin() ) || ( *rhs.rbegin() > *lhs.rbegin() ) )
		{
		//	1	2	3	4	5	6	7	8	9	10
		//	0	1	2	3	4
		

		//if the last element of the second set is greater than the last element of the first set

		//	1	2	3	4	5	6	7	8	9	10
		//	0	1	2	3	11
		
			//second set is not a subset of the first set
				//return flag = false;
			return false;
		}

		//use iterators to compare the sets
		while( lhsIter != lhs.end() && rhsIter != rhs.end() )
		{
			//if the current element (first element) of the first set is greater than the current element (second element) of the second set
			if( *lhsIter > *rhsIter )
			{
			//	1	2	3	6	7	8	9	10
			//	1	2	3	4
		
				//then the second element is not in the first set
					//second set is not a subset of the first set
						//return flag = false;
				return false;
			}

			//if the current element of the first set is less than the current element of the second set
			if( *lhsIter < *rhsIter )
			{
			//	1	2	3	6	7	8	9	10
			//	3	6	8
		
				//then the second element may be in the first set
					//then check the next first element
				lhsIter++;
			}
			//if the current element of the first set is equal to the current element of the second set
			if( *lhsIter == *rhsIter)
			{
			//	1	2	3	6	7	8	9	10
			//	1	2	3
		
				//then check the next first and second elements
				lhsIter++;
				rhsIter++;
			}

			
		}
		
		
		

		return flag;
	}

