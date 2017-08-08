#include "LinkList.h"


LinkList::LinkList()
{
	length = 0;
	head = new Node;
	head->next = new Node;
	head->next->next = NULL;

}

bool LinkList::isEmpty()
{
	bool emptyList = false;
	if (head->next->next == NULL)
	{
		emptyList = true;
	}

	return emptyList;
}


void LinkList::insertItem(string requiredTitle)
{
	bool placed = false;

	if (current != head)
	{
		resetList();
	}

	while (!placed)
	{
		if ((current->title < requiredTitle && current->next->title > requiredTitle) || (atEnd()))
		{
			current->next = new Node(requiredTitle, current->next);
			placed = true;
		}
		else if (current->title > requiredTitle)
		{
			head = new Node(requiredTitle, head->next);
			placed = true;
		}
		else if (isEmpty())
		{
			head->next = new Node(requiredTitle, head->next);
			placed = true;
		}
		else 
		{
			advancePosition();
		}
		
	}
}

void LinkList::removeItem(string requiredTitle)
{
	Node *rItem;
	Node* tItem;

	rItem = findItem(requiredTitle, tItem);

	tItem->next = rItem->next;
	delete rItem;
	
}

Node * LinkList::findItem(string requiredTitle, Node *& trailItem)
{
	bool found = false;
	Node *place = NULL;
	trailItem = head;

	if (current != head)
	{
		resetList();
	}

	while (!found && !atEnd())
	{ 
		
		if (current->title == requiredTitle)
		{
			found = true;
			place = current;
		}
		else
		{
			advancePosition();

			if (trailItem != current)
			{
				trailItem = trailItem->next;
			}
		}
	}

	
	return place;
}


int LinkList::provideLength()
{
	return length;
}

Node * LinkList::provideHead()
{
	return head;
}

Node *LinkList::provideCurrent()
{
	return current;
}

void LinkList::clearList()
{

}

void LinkList::resetList()
{
	current = head;
}

string LinkList::retrieveItem()
{
	string title;

	title = current->title;

	return title;
}

void LinkList::advancePosition()
{
	current = current->next;
}

bool LinkList::atEnd()
{
	bool isEnd = false;

	if (current->next->next == NULL)
	{
		 isEnd = true;
	}

	return isEnd;
}

LinkList::~LinkList()
{
	Node * garbage;
	if (current != head)
	{
		resetList();
	}
	
	while (!atEnd())
	{
		garbage = current;
		advancePosition();
		delete garbage;
	}
}
