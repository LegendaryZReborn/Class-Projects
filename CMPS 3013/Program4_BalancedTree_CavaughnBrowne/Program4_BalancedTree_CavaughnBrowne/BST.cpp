//Cavaugh Browne
//Binary Search Tree - the  nodes on the left are less than the nodes on 
//the right
#include "BST.h"
#include <iostream>

using namespace std;

BST::BST()
{
	root = NULL;
	subRoot = root;
	nodeNum = 0;
	
}

int BST::max(int heightA, int heightB)
{
	if (heightA > heightB)
	{
		return heightA;
	}
	else if (heightA < heightB)
	{
		return heightB;
	}
	else
	{
		return heightA;
	}
}

void BST::insert(Node* &ptr, int item)
{
	if (ptr == NULL)
	{
		ptr = new Node;
		ptr->item = item;
		nodeNum++;
	}
	else if (ptr->item > item)
	{
		insert(ptr->left, item);
		ptr->left->parent = ptr;
	}
	else
	{
		insert(ptr->right, item);
		ptr->right->parent = ptr;
	}
	
}

void BST::insertNode(int item)
{
	insert(root, item);
}

void BST::resetSubRoot()
{
	subRoot = root;
}

int BST::cHeight(Node* &ptr)
{
	if (ptr == NULL)
	{
		return -1;
	}
	else
	{
		return(1 + max(cHeight(ptr->left), cHeight(ptr->right)));
		
	}
}

int BST::cDepth(Node* &ptr)
{
	if (ptr->parent == NULL)
	{
		return 0;
	}
	else
	{
		return 1 + cDepth(ptr->parent);
	}
}


int BST::calculateTreeHeight()
{
	return cHeight(root);
}



int BST::totalHeight(Node* &ptr)
{
	if (ptr == NULL)
	{
		return 0;
	}
	else
	{
		return  cHeight(ptr) + totalHeight(ptr->left) + 
			totalHeight(ptr->right);
	}

}

int BST::totalDepth(Node* &ptr)
{
	if (ptr == NULL)
		return 0;
	else
	{
		return cDepth(ptr) + totalDepth(ptr->left)
			+ totalDepth(ptr->right);
	}
}

double BST::calculateAverageNH()
{
	double averageNodeH;
	averageNodeH = totalHeight(root) / nodeNum;

	return averageNodeH;
}

double BST::calculateAverageND()
{
	double averageNodeD;

	averageNodeD = (double)totalDepth(root) / nodeNum ;

	return averageNodeD;
}


void BST::preorderTraP(Node* &ptr)
{
	if (ptr != NULL)
	{
		cout << ptr->item << " ";
		preorderTraP(ptr->left);
		preorderTraP(ptr->right);
	}
}

void BST::preorderTra()
{
	preorderTraP(root);
}

void BST::destroyTree(Node* &ptr)
{
	if (ptr != NULL)
	{
		destroyTree(ptr->left);
		destroyTree(ptr->right);
		delete ptr;
		ptr = NULL;

	}
}

void BST::destroyTreeC()
{
	destroyTree(root);
}

BST::~BST()
{
	destroyTree(root);
	
}
