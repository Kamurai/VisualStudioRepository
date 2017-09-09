#include <iostream>

#include "d_tnode.h"

using namespace std;

// build an integer tree with 6 nodes
tnode<int> *buildIntTree();

// return a pointer to a node having the maximum value
// for the nodes in the tree
template <typename T>	
tnode<T> *max(tnode<T> *t);

int main()
{
	tnode<int> *intTree;

	// intTree is the root of an integer tree
	intTree = buildIntTree();

	// output the maximum value in intTree
	cout << "The maximum value in the integer tree is "
		  << max(intTree)->nodeValue << endl;

	return 0;
}

tnode<int> *buildIntTree()
{
	// 6 tnode pointers; points to the 6 items in the tree 
	tnode<int> *root, *b, *c, *d, *e, *f;

	// nodes d, e, and f are leaf nodes
	d = new tnode<int> (5);
	e = new tnode<int> (38);
	f = new tnode<int> (42);
	b = new tnode<int> (15,d,NULL);
	c = new tnode<int> (40,e,f);
	root = new tnode<int> (35,b, c);

	return root;
}

template <typename T>	
tnode<T> *max(tnode<T> *t)
{
	// we will return maxValPtr
	tnode<T> *maxValPtr, *leftMax, *rightMax;

	if (t == NULL)
		// stopping condition
		maxValPtr = NULL;
	else
	{
		// temporarily assume t is pointing to the maximum
		maxValPtr = t;

		// leftMax points to the maximum value on the left subtree
		leftMax = max(maxValPtr->left);
		// if leftMax is not NULL and the value to which it points
		// is larger, change maxValPtr
		if (leftMax != NULL && leftMax->nodeValue > t->nodeValue)
			maxValPtr = leftMax;

		// rightMax points to the maximum value on the right subtree
		rightMax = max(t->right);
		// if rightMax is not NULL and the value to which it points
		// is larger, change maxValPtr
		if (rightMax != NULL && rightMax->nodeValue > maxValPtr->nodeValue)
			maxValPtr = rightMax;
	}

	// maxValPtr points to the node with maximum value for the tree
	// with root t
	return maxValPtr;
}

