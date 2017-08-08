//Cavaugh Browne
//Binary Search Tree - the  nodes on the left are less than the nodes on 
//the right
#include "BalancedBST.h"
#include <iostream>

using namespace std;

BalancedBST::BalancedBST()
{
	root = NULL;
	subRoot = root;
	nodeNum = 0;

}

int BalancedBST::max(int heightA, int heightB)
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


void BalancedBST::resetSubRoot()
{
	subRoot = root;
}

int BalancedBST::cHeight(Node* &ptr)
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

int BalancedBST::cDepth(Node* &ptr)
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


int BalancedBST::calculateTreeHeight()
{
	return cHeight(root);
}



int BalancedBST::totalHeight(Node* &ptr)
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

int BalancedBST::totalDepth(Node* &ptr)
{
	if (ptr == NULL)
		return 0;
	else
	{
		return cDepth(ptr) + totalDepth(ptr->left)
			+ totalDepth(ptr->right);
	}
}

double BalancedBST::calculateAverageNH()
{
	double averageNodeH;
	averageNodeH = (double)totalHeight(root) / nodeNum;

	return averageNodeH;
}

double BalancedBST::calculateAverageND()
{
	double averageNodeD;

	averageNodeD = (double)totalDepth(root) / nodeNum;

	return averageNodeD;
}


void BalancedBST::preorderTraP(Node* &ptr)
{
	if (ptr != NULL)
	{
		cout << ptr->item << " " << ptr->bf << " ";
		cout << endl;
		preorderTraP(ptr->left);
		preorderTraP(ptr->right);
	}
}

void BalancedBST::preorderTra()
{
	preorderTraP(root);
}
void BalancedBST::calculateBF(Node* &ptr)
{
	if (ptr != NULL)
	{
		calculateBF(ptr->left);
		ptr->bf = (1 + cHeight(ptr->left)) - (1 + cHeight(ptr->right));
		calculateBF(ptr->right);
	}
	
}


void BalancedBST::calculateBalanceFactors()
{
	calculateBF(root);
}


bool BalancedBST::leftHeavy(Node* &ptr)
{
	return (cHeight(ptr->left) > cHeight(ptr->right));
}


bool  BalancedBST::rightHeavy(Node* &ptr)
{
	return (cHeight(ptr->right) > cHeight(ptr->left));
}



void  BalancedBST::rotateLeft(Node* &ptr)
{
	if (leftHeavy(ptr->right))
	{
		rotateRight(ptr->right);
	}

	Node* temp;
	temp = ptr->right;
	ptr->right = temp->left;

	//
	if (temp->left != NULL)
		temp->left->parent = ptr;

	temp->left = ptr;
	//
	temp->parent = ptr->parent;
	ptr->parent = temp;

	ptr = temp;

	calculateBF(ptr);
}



void  BalancedBST::rotateRight(Node* &ptr)
{
	if (rightHeavy(ptr->left))
	{
		rotateLeft(ptr->left);
	}

	Node* temp;
	temp = ptr->left;
	ptr->left = temp->right;

	//
	if (temp->right != NULL)
		temp->right->parent = ptr;

	temp->right = ptr;
	//
	temp->parent = ptr->parent;
	ptr->parent = temp;

	ptr = temp;

	calculateBF(ptr);
}


void BalancedBST::reBalance(Node* &ptr)
{
	if (ptr != NULL)
	{
		reBalance(ptr->left);
		reBalance(ptr->right);

		if (ptr->bf < -1)
		{
			rotateLeft(ptr);
		}
		else if (ptr->bf > 1)
		{
			rotateRight(ptr);
		}
	}
}

void BalancedBST::insert(Node* &ptr, int item)
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

void BalancedBST::insertNode(int item)
{
	insert(root, item);

	calculateBalanceFactors();

	reBalance(root);

}


void BalancedBST::destroyTree(Node* &ptr)
{
	if (ptr != NULL)
	{
		destroyTree(ptr->left);
		destroyTree(ptr->right);
		delete ptr;
		ptr = NULL;

	}
}

void BalancedBST::destroyTreeC()
{
	destroyTree(root);
}

BalancedBST::~BalancedBST()
{
	destroyTree(root);

}
