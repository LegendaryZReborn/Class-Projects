//Cavaughn Browne
//SmartTree is a Question and answer tree. It holds questions of which
//paths of different questions lead to an answer.
#pragma once
#include <string>

using namespace std;
struct Node
{
	string item;
	Node* left = NULL;
	Node* right = NULL;
};

class SmartTree
{
public:
	SmartTree();

	//Purpose: Loads data into tree from a data file
	//Requires: ifstream& infile
	//Returns: nothing
	void loadData(ifstream& infile);

	//Purpose: Performs a preorder traversal and prints out to
	//a file
	//Requires: ofstream& outfile
	//Returns: nothing
	void preorderTravP(ofstream& outfile);

	//Purpose: Checks to see if current pointer is pointed to a leaf
	//Requires: nothing
	//Returns: bool leaf
	bool isLeaf();

	//Purpose: Shifts the left of the tree
	//Requires: nothing
	//Returns: nothing
	void goLeft();

	//Purpose: Shifts the right of the tree
	//Requires: nothing 
	//Returns: nothing
	void goRight();

	//Purpose: Provides the contents of the node where the current pointer is currently
	//pointing to.
	//Requires: nothing
	//Returns: string item
	string provideContents();

	//Purpose: Resets the current pointer to the root
	//Requires: nothing
	//Returns: nothing
	void resetCurrent();
	
	//Purpose: Updates the tree with a question and answer from the user
	//Requires: string question, string answer
	//Returns: nothing
	void updateTree(string question, string answer);
	
	//Purpose: Calls a function to destroys the tree
	//Requires: Node* &ptr
	///Returns: nothing
	void destroyTreeC();
	

	~SmartTree();

private:

	//Purpose: Loads data into tree from a data file
	//Requires: Node* &ptr, string item, ifstream& infile
	//Returns: nothing
	void loadDataBase(Node* &ptr, string item, ifstream& infile);

	//Purpose: Performs a preorder traversal and prints out to
	//a file
	//Requires: Node* &ptr (the root), and ofstream& outfile
	//Returns: nothing
	void preorderTrav(Node* &ptr, ofstream& outfile);


	//Purpose: Destroys the tree
	//Requires: Node* &ptr
	///Returns: nothing
	void destroyTree(Node* &ptr);

	Node* root;
	Node* current;
};

