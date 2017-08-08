//Cavaugh Browne
#include<iostream>
#pragma once



class BalancedBST
{
public:

	struct Node
	{
		long long int item;
		Node* left = NULL;
		Node* right = NULL;
		Node* parent = NULL;
		int bf = 0;
	};

	BalancedBST();


	~BalancedBST();

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

		//Purpose: Calls a function to calculate all the balance factors on the tree
		//Requires: nothing
		//Returns: nothing
		void calculateBalanceFactors();


		//Purpose: Calls a function to destroys the tree
		//Requires: Node* &ptr
		///Returns: nothing
		void destroyTreeC();



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

		//Purpose: Calculates all the balance factors on the tree
		//Requires: nothing
		//Returns: nothing
		void calculateBF(Node* &ptr);

		//Purpose: Destroys the tree
		//Requires: Node* &ptr
		///Returns: nothing
		void destroyTree(Node* &ptr);
		
		//Purpose: Checks to see if the the tree/subtree is left heavy
		//Requires: ptr pointer to the root/subroot
		//Returns: true if left heavy, false if not
		bool leftHeavy(Node* &ptr);

		//Purpose: Checks to see if the the tree/subtree is right heavy
		//Requires: ptr pointer to the root/subroot
		//Returns: true if right heavy, false if not
		bool rightHeavy(Node* &ptr);

		//Purpose: Rotates the tree to the left
		//Requires: Node * &ptr
		//Returns: nothing
		void rotateLeft(Node* &ptr);


		//Purpose: Rotates the tree to the right
		//Requires: Node * &ptr
		//Returns: nothing
		void rotateRight(Node* &ptr);

		//Purpose: Traverses the tree and rebalances if necessary
		//Requires: Node * &ptr
		//Returns: nothing
		void reBalance(Node* &ptr);

		Node* root;
		Node* subRoot;
		int nodeNum;


};

