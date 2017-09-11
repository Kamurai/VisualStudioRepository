/*
	Kemerait, Christopher
	0004 93870
	CS 3402
	Due: 13 Oct 2009
	Exercise 35, Ch 10, Page 579
	
	Description:
	Implement the functino max(), which returns the maximum value in the tree.
	Hint:  Use a design similar to the depth() algorithm of Section 10-4.

		//return a pointer to a node having the maximum value
		//for the nodes in the tree
		template <typename T>
		tnode<T> *max(tnode<T> *t)

	Write a program that calls max() to display the maximum value in the
	integer tree created by the function buildIntTree() from Written Exercise 10-24.

	10-24

	Uses bulidTree() to make buildIntTree() to build the following tree:

				35
				/\
			  15 40
			 /   /\
		    5   38 42
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
	#include "d_tnode.h"
	#include "d_tnodel.h"
	
//procedures
	using namespace::std;

//declare variables
	string halt = "0";
	tnode<char> * tree0 = buildIntTree(0);
	tnode<char> * tree1 = buildIntTree(1);
	tnode<char> * tree2 = buildIntTree(2);
	
		
//declare functions
	template <typename T>
	int * max(tnode<T> *t);

	
	
	
	
	void main()
	{
		int max0 = max(buildIntTree(0));
		int max1 = max(buildIntTree(1));
		int max2 = max(buildIntTree(2));
		
		
		//output
		
		cout << "The structure of Tree 0 is:" <<endl;
		displayTree(tree0,3);
		cout << "Number of nodes with one child in Tree 0: "
		  << max0 << endl <<endl <<endl;

		cout << "The structure of Tree 1 is:" <<endl;
		displayTree(tree1,3);
		cout << "Number of nodes with one child in Tree 1: "
		  << max1 << endl<<endl <<endl;

		cout << "The structure of Tree 2 is:" <<endl;
		displayTree(tree2,3);
		cout << "Number of nodes with one child in Tree 2: "
		  << max2 << endl<<endl <<endl;

		cin >> halt;
	}
	
	template <typename T>
	int max(tnode<T> *t)
	{
	/*
		Given a Node inside a Tree.
		determine which nodes have only one child (not the root, and not the leaves
		increment a number for each one found
	*/
	
		int num = 0;
		tnode<char> * current = new tnode<char>();
		
		
		//Given the root
		current = t;
		
		//analyze the current node
			//determine if root or leaf
		if( current != NULL && (current->left != NULL || current->right != NULL ) )
		{

		//traverse the rest of the tree
			//determine single child parent
			if( (current->left != NULL && current->right == NULL) || (current->left == NULL && current->right != NULL) )
			{
				num++;
			}	
		//traverse left
			if( current->left != NULL)
			{
				num += countOneChild(current->left);
			}	
		//traverse right
			if( current->right != NULL)
			{
				num += countOneChild(current->right);
			}
		
		}		
	
		return num;
	}
	
	tnode<int> *buildIntTree(int n)
{
	/*
	Uses bulidTree() to make buildIntTree() to build the following tree:

				35
				/\
			  15 40
			 /   /\
		    5   38 42
	*/
	// 9 tnode pointers; points to the 9 items in the tree
	tnode<int> *root, *b, *c, *d, *e, *f, *g, *h, *i;

	// parameter n specifies a tree in the range 0 - 2
	switch(n)
	{
		// nodes d and e are leaf nodes
		case 0:
			f = new tnode<int> (42);
			d = new tnode<int> (5);
			e = new tnode<int> (38);
			b = new tnode<int> (15, d, (tnode<int> *)NULL);
			c = new tnode<int> (40,e, f);
			root = new tnode<int> (35, b, c);
			break;

		// nodes g, h, i, and d are leaf nodes
		case 1:
			g = new tnode<int> (7);
			h = new tnode<int> (8);
			i = new tnode<int> (9);
			d = new tnode<int> (4);
			e = new tnode<int> (5,g);
			f = new tnode<int> (6,h, i);
			b = new tnode<int> (2,d, e);
			c = new tnode<int> (3,(tnode<int> *)NULL, f);
			root = new tnode<int> (1,b, c);
			break;

		// nodes g, h, i and f are leaf nodes
		case 2:
			g = new tnode<int> (3);
			h = new tnode<int> (2);
			i = new tnode<int> (1);
			d = new tnode<int> (6,(tnode<int> *)NULL, g);
			e = new tnode<int> (5,h, i);
			f = new tnode<int> (4);
			b = new tnode<int> (7,d, (tnode<int> *)NULL);
			c = new tnode<int> (8,e, f);
			root = new tnode<int> (9,b, c);
			break;
	}

	return root;
}
	
	
	