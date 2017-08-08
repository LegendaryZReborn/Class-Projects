//Cavaughn Browne

#include "LinkList.h"
#include <fstream>
#include <iostream>
using namespace std;


LinkList::LinkList()
{
	//Have head point to a dummy Node and head next point
	//to a dummy tail Node.
	head = new Node;
	head->next = new Node;

	//dummy tail Node's next will point to NULL
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
		//Place the item at the beginning of the list, between dummy head 
		//node and the first item or the dummy tail node
		if (isEmpty() || requiredTitle < current->next->title)
		{
			head->next = new Node(requiredTitle, head->next);
			placed = true;
		}
		//Place the item at the end of the list, between the last item 
		//and the dummy tail node
		else if (atEnd())
		{
			current->next = new Node(requiredTitle, current->next);
			placed = true;
		}
		//Place between two appropriate items in the list
		else if ((current->next->title < requiredTitle && \
			current->next->next->title > requiredTitle))
		{
			//current->next->next will point to a new Node with the 
			//requiredTitle while that new Node points to what
			//current->next->next was previously pointing to
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

	if (rItem == NULL)
	{
		cout << "Item not found" << endl;
	}
	else
	{
		tItem = rItem->next->next;
		delete rItem->next;
		rItem->next = tItem;
	}
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

//Goes throught the list of books and gives intructions for where the rbTitle 
//should be placed
void LinkList::placeInstructions(string rbTitle, ofstream& outfile)
{
	bool placed = false;

	if (current != head)
	{
		resetList();
	}

	while (!placed)
	{
		//rbTitle would go first in this case
		if (isEmpty() || rbTitle < current->next->title)
		{
			outfile << "Put \"" << rbTitle << "\" first" << endl;
			placed = true;
		}
		//rbTitle would go at the End in this case
		else if (atEnd())
		{
			outfile << "Put \"" << rbTitle << " after \"" << current->title << "\"" << endl;
			placed = true;
		}
		//rbTitle would go in between current->next->title and the one after that
		else if ((current->next->title < rbTitle && current->next->next->title > rbTitle))
		{
			outfile << "Put \"" << rbTitle << "\" after \"" << current->next->title << "\"" << endl;
			placed = true;
		}
		else
		{
			advancePosition();
		}
	}
}

//Clears list but leaves the dummy head node and dummy tail node
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

//Detructor deletes all the nodes when the object goes out of scope
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
