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

		if (isEmpty() || requiredTitle < current->next->title)
		{
			head->next = new Node(requiredTitle, head->next);
			placed = true;
		}
		else if (atEnd())
		{
			current->next = new Node(requiredTitle, current->next);
			placed = true;
		}
		else if ((current->next->title < requiredTitle && current->next->next->title > requiredTitle))
		{
			current->next->next = new Node(requiredTitle, current->next->next);
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

	rItem = findItem(requiredTitle);

	tItem = rItem->next->next;
	delete rItem->next;
	rItem->next = tItem;

}

Node * LinkList::findItem(string requiredTitle)
{
	bool found = false;
	Node *place = NULL;


	if (current != head)
	{
		resetList();
	}

	while (!found && !atEnd())
	{

		if (current->next->title == requiredTitle)
		{
			found = true;
			place = current;
		}
		else
		{

			advancePosition();
		}
	}


	return place;
}


int LinkList::provideLength()
{
	return length;
}


void LinkList::clearList()
{
	Node * tmp;
	if (current != head)
	{
		resetList();
	}

	advancePosition();
	while (current->next != NULL)
	{
		tmp = current->next;
		delete current;
		current = tmp;
	}

	head->next = current;
}

void LinkList::resetList()
{
	current = head;
}

string LinkList::retrieveItem()
{
	string title;

	title = current->next->title;

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
	Node * tmp;
	if (current != head)
	{
		resetList();
	}

	while (current != NULL)
	{
		tmp = current->next;
		delete current;
		current = tmp;
	}

}
