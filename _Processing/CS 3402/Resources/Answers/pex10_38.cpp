#include <iostream>

#include "d_stree.h"

using namespace std;

int main()
{
	// create a character binary search tree from the
	// insertion sequence defined by arr
	char arr[] = { 'S', 'J', 'K', 'L', 'X', 'F', 'E', 'Z' };
	int arrSize = sizeof(arr)/sizeof(char);
	stree<char> charTree(arr, arr+arrSize);

	// display the binary search tree
	cout << "The binary search tree is:" << endl << endl;
	charTree.displayTree(1);

	return 0;
}

/*
Run:

The binary search tree is:

           S
     J       X
   F   K       Z
 E       L
*/
