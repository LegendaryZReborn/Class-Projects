#pragma once
#include <string>

using namespace std;

struct Node
{
	string title;
	Node * next;

	Node()
	{

	}
	Node(string title1, Node * next1 = NULL)
	{
		title = title1;
		next = next1;
	}
};

class LinkList
{
public:
	LinkList();

	bool isEmpty();
	void insertItem(string requiredTitle);
	void removeItem(string requiredTitle);
	Node * findItem(string requiredTitle, Node *& trailItem);
	int provideLength();
	Node *provideHead();
	Node *provideCurrent();
	void clearList();
	void resetList();
	string retrieveItem();
	void advancePosition();
	bool atEnd();

	~LinkList();
	
private:
	int length;
	Node *head;
	Node *current; 

};

