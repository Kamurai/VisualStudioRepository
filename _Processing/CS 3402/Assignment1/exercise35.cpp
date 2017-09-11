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
	#include <d_tnodel.h>
	
//procedures
	using namespace::std;

//declare variables
	tree appletree = buildTree(0);
	tree orangetree = buildTree(1);
	tree bananatree = buildTree(2)
	
		
//declare functions
	template <typename T>;
	int countOneChild(tnode<T> *t);
	void outputResults();
	
	/*
	Write a function
		that counts the number of interior nodes in a binary tree which each have only one child.
		Test the function in a program that uses buildTree() from "d_tnodel.h"
		to allocate Tree 1 and Tree 2.
		Call countOneChild() for each tree, and output the results.
	*/
	
	
	
	void main() //int main()
	{
		int apples = countOneChild(buildTree(0));
		int oranges = countOneChild(buildTree(1));
		int bananas = countOneChild(buildTree(2));
		
		
		outputResults();
		//return 0;

	}
	
	template <typename T>;
	int countOneChild(tnode<T> *t);
	{
	/*
		Given a Node inside a Tree.
		determine which nodes have only one child (not the root, and not the leaves
		increment a number for each one found
	*/
	
		int num = 0;
		node current = new node();
		
		
		//Given the root
		current = t;
		
		//do not analyze the current node
		
		//traverse the entire tree
		//analyze left
			if( (node.left != NULL && node.right = NULL) || (node.left = NULL && node.right != NULL) )
			{
				num++;
			}	
		//traverse left
			num += countOneChild(current.left);
		//analyze right
			if( (node.left != NULL && node.right = NULL) || (node.left = NULL && node.right != NULL) )
			{
				num++;
			}
		//traverse right
			num += countOneChild(current.right);
			
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		//use an array
		
		
		//Given the root
		//place each node into the array
		
		
		//walk through the array
		//determine if any node past the root node only has one child
		
		//if( (node.left != NULL && node.right = NULL) || (node.left = NULL && node.right != NULL) )
		//{
			//num++;
		//} 	
		
		
		
		
		
		
	
		return num;
	}
	
	
	
	

