// This is a sample cpp file to show you how to program using C++


#include <iostream>
#include "d_tnodel.h"

using namespace std;


template <typename T>
int countLeaf (tnode<T> *t)
{
   if (t != NULL)
   {
      // check if t is a leaf node (no children).
      // if so, increment count
      int count, countLeftSubTree, countRightSubTree;      
      if (t->left == NULL && t->right == NULL)
         count = 1;
      else
         count = 0;
      
      countLeftSubTree = countLeaf(t->left);		// descend left
      countRightSubTree = countLeaf(t->right);	// descend right
      return count + countLeftSubTree + countRightSubTree;
   }
   else
      return 0;
}

int main()
{
	// roots for two trees
	tnode<char> *tree0, *tree1, *tree2;

	string halt = "0";


	// tree0 is root of Tree 0
	tree0 = buildTree(0);
	// tree1 is root of Tree 1
	tree1 = buildTree(1);
	// tree2 is root of Tree 2
	tree2 = buildTree(2);
	
	// call countLeaf() for each tree
	cout << "The structure of Tree 0 is:" <<endl;
	displayTree(tree0,3);
	cout << "Number of leaf nodes in Tree 0: "
		  << countLeaf(tree0) << endl <<endl <<endl;

	cout << "The structure of Tree 1 is:" <<endl;
	displayTree(tree1,3);
	cout << "Number of leaf nodes in Tree 1: "
		  << countLeaf(tree1) << endl<<endl <<endl;

	cout << "The structure of Tree 2 is:" <<endl;
	displayTree(tree2,3);
	cout << "Number of leaf nodes in Tree 2: "
		  << countLeaf(tree2) << endl<<endl <<endl;


	cin >> halt;

	return 0;
}

