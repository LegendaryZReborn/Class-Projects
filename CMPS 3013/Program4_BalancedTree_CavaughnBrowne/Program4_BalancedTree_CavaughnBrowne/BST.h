//Cavaugh Browne
//Binary Search Tree - the  nodes on the left are less than the nodes on 
//the right
#include<iostream>
#pragma once

class BST
{
public:

	struct Node
	{
		int item;
		Node* left = NULL;
		Node* right = NULL;
		Node* parent = NULL;
	};

	BST();

	//Purpose: Checks if the tree is empty
	//Requires: nothing
	//Returns: true if the tree is empty, false if it isn't
	bool isEmpty();

	//Purpose: Calls another funcntion to inserts an item into the tree
	//Requires: int item
	//Returns: nothing
	void insertNode(int item);

	//Purpose: Calculates the height of the tree
	//(height in the # of edges)
	//Requires: nothing
	//Returns: the tree height, if -1 the tree is empty;
	int calculateTreeHeight();

	//Purpose: Calculate the average node height of the 
	//tree
	//Requires: nothing
	//Returns: the average node height
	double calculateAverageNH();

	//Purpose: calculates the average node height of the tree
	//Requires: nothing
	//Returns: the average node depth
	double calculateAverageND(); 

	//Purpose: Have the subroot point to the root
	//Requires: nothing
	//Returns: nothing
	void resetSubRoot();

	// Purpose: Finds the greater of two values
	//Requires: nothing
	//Returns: the greatest value
	int max(int heightA, int heightB);

	//Purpose: Calls a function to print the tree in a preorder traversal
	//Requires: nothing
	//Returns: nothing
	void preorderTra();

	//Purpose: Calls a function to destroys the tree
	//Requires: Node* &ptr
	///Returns: nothing
	void destroyTreeC();


	~BST();

private:
	//Purpose: Inserts an item into the tree
	//Requires: int item
	//Returns: nothing
	void insert(Node* &ptr, int item);

	//Purpose: calculates the height of the tree (height in the # of edges)
	//Requires: nothing
	//Returns: the tree height, if -1 the tree is empty;
	int cHeight(Node* &ptr);

	//Purpose: calculates the depth of a node in the tree (depth in the # of edges)
	//Requires: Node* &ptr
	//Returns: the depth
	int cDepth(Node* &ptr);

	//Purpose: calculates the total node height of the tree
	//Requires: Node* &ptr
	//Returns: the total node height
	int totalHeight(Node* &ptr);

	//Purpose: calculates the total node depth of the tree
	//Requires: Node* &ptr
	//Returns: the total node depth
	int totalDepth(Node* &ptr);

	//Purpose: Prints the tree in a preorder traversal
	//Requires: nothing
	//Returns: nothing
	void preorderTraP(Node* &ptr);

	//Purpose: Destroys the tree
	//Requires: Node* &ptr
	///Returns: nothing
	void destroyTree(Node* &ptr);

	Node* root;
	Node* subRoot;
	int nodeNum;

};

