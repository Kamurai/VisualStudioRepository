/*
	Kemerait, Christopher
	0004 93870
	CS 3402
	Due: 13 Oct 2009
	Exercise 35, Ch 10, Page 579
	
	Description:
	Write a function
	
		template <typename T>
		int countOneChild(tnode<T> *t)
		
		that counts the number of interior nodes in a binary tree having one child.
		Test the function in a program that uses buildTree() from "d_tnodel.h"
		to allocate Tree 1 and Tree 2.
		Call countOneChild() for each tree, and output the results.
	
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
//	#include "d_tnode.h"
	#include "d_tnodel.h"
	
//procedures
	using namespace::std;

//declare variables
	tnode<char> * tree0 = buildTree(0);
	tnode<char> * tree1 = buildTree(1);
	tnode<char> * tree2 = buildTree(2);
	
		
//declare functions
	template <typename T>
	int countOneChild(tnode<T> *t);

	/*
	Write a function
		that counts the number of interior nodes in a binary tree which each have only one child.
		Test the function in a program that uses buildTree() from "d_tnodel.h"
		to allocate Tree 1 and Tree 2.
		Call countOneChild() for each tree, and output the results.
	*/
	
	
	
	int main()
	{
		int count0 = countOneChild(buildTree(0));
		int count1 = countOneChild(buildTree(1));
		int count2 = countOneChild(buildTree(2));
		
		
		//output
		
		cout << "The structure of Tree 0 is:" <<endl;
		displayTree(tree0,3);
		cout << "Number of nodes with one child in Tree 0: "
		  << count0 << endl <<endl <<endl;

		cout << "The structure of Tree 1 is:" <<endl;
		displayTree(tree1,3);
		cout << "Number of nodes with one child in Tree 1: "
		  << count1 << endl<<endl <<endl;

		cout << "The structure of Tree 2 is:" <<endl;
		displayTree(tree2,3);
		cout << "Number of nodes with one child in Tree 2: "
		  << count2 << endl<<endl <<endl;

		return 0;
	}
	
	template <typename T>
	int countOneChild(tnode<T> *t)
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
	
	
	
	

