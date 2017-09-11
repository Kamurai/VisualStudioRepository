#include <iostream>
#include <vector>

#include "d_stree.h"
#include "d_random.h"
#include "d_util.h"		// for writeSTree()

using namespace std;

int main()
{
	vector<int> v;
	randomNumber rnd;
	// vtree is an integer binary search tree
	stree<int> vtree;
	int i, n;

	cout << "Enter an integer n: ";
	cin >> n;
	cout << endl;

	// initialize v with n random integers in
	// the range 0 to 99
	for (i=0;i < n;i++)
		v.push_back(rnd.random(100));

	// output the vector
	cout << "The " << n << " random integers in the vector:"
		  << endl;
	writeVector(v);

	// insert each value in v into vtree. note that
	// duplicates will be discarded
	for (i=0;i < n;i++)
		vtree.insert(v[i]);

	// output the values in the search tree inorder
	cout << "The unique integers in order: "
		  << endl;
	writeSTree(vtree," ");
	cout << endl;

	return 0;
}

/*
Run:

Enter an integer n: 15

The 15 random integers in the vector:
11  64  88  33  29  15  83  7  36  63  53  73  73  74  33
The unique integers in order:
7  11  15  29  33  36  53  63  64  73  74  83  88
*/
