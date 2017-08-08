//Cavaughn Browne

#include "SortedLinkedList.h"
#include <string>

SortedLinkedList::SortedLinkedList()
{
	head = NULL;
	curr = NULL;
}


bool SortedLinkedList::atEnd()
{
	bool end = false;

	if (curr == NULL)
	{
		end = true;
	}
	
	return end;
}

void SortedLinkedList::insertToList(string iword)
{
	Node* p;
	curr = head;

	//traverse until the curr is at a point where iword should be put 
	//directly before it
	while (curr != NULL && curr->next != NULL && iword > curr->word)
	{
		curr = curr->next;
	}

	//move one node back
	if (curr != NULL && curr->prev != NULL && curr->word > iword)
	{
		curr = curr->prev;
	}		


	//insert at the front 
	if (curr == NULL || iword < head->word)
	{
		p = new Node;
		p->word = iword;
		p->tcount += 1;
		p->next = curr;
		curr = p;
		head = p;
		
		if (curr->next != NULL)
		{
			curr = curr->next;
			curr->prev = p;
		}
	}
	else 
	{
		//puts node after curr
		p = new Node;
		p->word = iword;
		p->tcount += 1;
		p->next = curr->next;
		curr->next = p;
		p->prev = curr;

		p = p->next;
		curr = curr->next;
		
		//if it wasn't inserting at the end of the list
		if (p != NULL)
		{
			p->prev = curr;
		}
	}
}

bool SortedLinkedList::findWord(string iword)
{
	bool found = false;

	curr = head;

	while (curr != NULL && !found)
	{
		if (curr->word == iword)
		{
			found = true;
		}
		else
		{
			curr = curr->next;
		}
	}

	return found;
}



void SortedLinkedList::addWordCount()
{
	if (curr != NULL)
		curr->tcount++;
}


void SortedLinkedList::resetList()
{
	curr = head;
}

string SortedLinkedList::retrieveNext(int& count)
{
	string word;

	word = curr->word;
	count = curr->tcount;

	curr = curr->next;

	return word;
}

SortedLinkedList::~SortedLinkedList()
{

	Node* del;

	curr = head;
	del = head;

	while (curr != NULL)
	{
		curr = curr->next;
		delete del;
		del = curr;

	}

	head = NULL;
}
