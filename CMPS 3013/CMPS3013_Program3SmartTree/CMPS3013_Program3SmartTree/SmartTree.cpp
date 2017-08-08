//Cavaughn Browne
//SmartTree is a Question and answer tree. It holds questions of which
//paths of different questions lead to an answer.
#include "SmartTree.h"
#include <iostream>
#include <fstream>

using namespace std;

SmartTree::SmartTree()
{
	root = NULL;
	current = root;
}

bool SmartTree::isLeaf()
{
	bool leaf = false;

	if (root != NULL)
	{
		if (current->left == NULL && current->right == NULL)
		{
			leaf = true;
		}
	}
	return leaf;
}

void SmartTree::preorderTrav(Node* &ptr, ofstream& outfile)
{
	if (ptr != NULL)
	{
		outfile << ptr->item << endl;
		preorderTrav(ptr->left, outfile);
		preorderTrav(ptr->right, outfile);
	}
}

void SmartTree::preorderTravP(ofstream& outfile)
{
	preorderTrav(root, outfile);
}

void SmartTree::goLeft()
{
	current = current->left;
}

void SmartTree::goRight()
{
	current = current->right;

}

string SmartTree::provideContents()
{
	return current->item;
}

void SmartTree::resetCurrent()
{
	current = root;
}

void SmartTree::updateTree(string question, string answer)
{
	string temp;

	//make the current node the question user gave
	//and the correct answer the user gave to the left
	//and the old answer goes to the right
	temp = current->item;
	current->item = question;

	current->left = new Node;
	current->left->item = answer;
	current->right = new Node;
	current->right->item = temp;
	
}


void SmartTree::loadDataBase(Node* &ptr, string item, ifstream& infile)
{
	if (infile)
	{

		//if its not a question create a node and store
		//the item
		if (item[item.length() - 1] != '?')
		{
			ptr = new Node;
			ptr->item = item;
	
		}
		else
		{
			//if it is a question,  create a new node and 
			//put the item in it. Then read in and go to the left, 
			//then read in and go to the right.
			ptr = new Node;
			ptr->item = item;

			getline(infile, item);
			loadDataBase(ptr->left, item, infile);
			getline(infile, item);
			loadDataBase(ptr->right, item, infile);
		}
	}
}

void SmartTree::loadData(ifstream& infile)
{
	string item;
	getline(infile, item);
	loadDataBase(root, item, infile);
}

void SmartTree::destroyTree(Node* &ptr)
{
	if (ptr != NULL)
	{
		destroyTree(ptr->left);
		destroyTree(ptr->right);
		delete ptr;
		ptr = NULL;

	}
}

void SmartTree::destroyTreeC()
{
	destroyTree(root);
}



SmartTree::~SmartTree()
{
	destroyTree(root);
}
