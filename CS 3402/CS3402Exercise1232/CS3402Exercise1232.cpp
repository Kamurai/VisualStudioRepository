/*
	Kemerait, Christopher
	0004 93870
	CS 3402
	Due: Nov 2009
	Exercise 32, Ch 12, Page 723
	
	Description:
	
		This exercise develops a simple spelling checker.  
		The file "dict.dat" in the directory Ch12 of the program supplement contains
		25, 025 frequently used words, each on a seperateline in lowercase.
		Read the file, and insert the words into a hash table with 1373 buckets.
		Prompt for the name of a document.
		Read the document, 
		and separate it into a sequence of words converted to lowercase, 
		where a word is defined by the function:


		//extract a word from fin
		ifstream& getWord(ifstream& fin, string& w)
		{
			char c;

			w = " ";	//clear the string of characters

			while( fin.get(c) && !isalpha(c) )
				;	//do nothing.  just ignore c

			//return on end-of-file
			if( fin.eof() )
				return fin;

			//record first letter of the word
			w += tolower( c );

			//collect letters and digits
			while( fin.get(c) && ( isalpha(c) || isdigit(c) ) )
				w += tolower( c );

			return fin;

		}

		Using the hash table, output a list of words that appear to be misspelled.

*/

#include <iostream>
#include <fstream>
#include <vector>

#include "d_stree.h"
#include "d_hash.h"
#include "d_hashf.h"
//#include "d_timer.h"
#include "d_search.h"

using namespace std;

int main()
{
	// declare a hash table with elements
	// from vrand. the hash table has 1373 buckets.
	hash<string, hFstring> ht(1373);
	
	// objects used in the search tests
	ifstream dictionaryStrings, fileStrings;
	string word;
	int len, method, i;

	// open 25000+ word dictionaries
	dictionaryStrings.open("dict.dat");
	

	//input dictionary words to hash table
	while(true)
	{
		// input a word from the randomly ordered dictionary
		dictionaryStrings >> word;
		if (!dictionaryStrings)
			break;

		// insert word into the hash table
		ht.insert(word);
	}


	// output the number of words
	cout << "Number of words is " << 5 << endl << endl;

	


	return 0;
}

/*
Run:

Number of words is 25025

Sequential search time is 126.642 seconds
Binary search time is 0.21 seconds
Binary tree search time is 0.2 seconds
Hash search time is 0.121 seconds
*/
