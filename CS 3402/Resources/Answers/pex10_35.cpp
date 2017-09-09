#include <iostream>

#include "d_tnodel.h"

using namespace std;

// counts the number of interior nodes in a binary
// tree having 1 child
template <typename T>
int countOneChild(tnode<T> *t);

int main()
{
	// roots for two trees
	tnode<char> *tree1, *tree2;

	// tree1 is root of Tree 1
	tree1 = buildTree(1);
	// tree2 is root of Tree 2
	tree2 = buildTree(2);
	
	displayTree(tree1,1);

	// call countOneChild() for each tree
	cout << "Number of interior nodes in tree1 with 1 child: "
		  << countOneChild(tree1) << endl;

	cout << "Number of interior nodes in tree2 with 1 child: "
		  << countOneChild(tree2) << endl;

	return 0;
}

template <typename T>
int countOneChild(tnode<T> *t)
{
	int oneChildCount;

	if (t == NULL)
		// NULL subtree is the stopping condition
		oneChildCount = 0;
	else
	{	// call the function for each subtree and add the results
		oneChildCount = countOneChild(t->left) + countOneChild(t->right);

		// increment oneChildCount is node t is an interior node with
		// one child
		if (t->left != NULL && t->right == NULL ||
			 t->right != NULL && t->left == NULL)
			oneChildCount++;
	}

	return oneChildCount;
}
