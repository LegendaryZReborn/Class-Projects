//Cavaghn Browne
//StackType.cpp
//StackType is implemented with a singly linked list using a dummy head node and a dummy tail node
//Only a head pointer is required for member data

#include "StackType.h"
#include <iostream>
using namespace std;

StackType::StackType()
{
	//Sets list structure
	head = new Node;
	head->next = new Node;
	head->next->next = NULL;

}

StackType::StackType(StackType & other)
{

	Coord item;
	Node* temp;
	StackType tempStack;

	//Sets list structure
	head = new Node;
	head->next = new Node;
	head->next->next = NULL;

	//copies orginal stack to tempStack in reverse order
	while(other.head->next->next != NULL)
	{
		//Pops from original stack 
	
			temp = other.head->next->next;
			item = other.head->next->coord;
			delete other.head->next;
			other.head->next = temp;
		
		//Pushes onto temporary stack
		temp = new Node;
		temp->coord = item;
		temp->next = tempStack.head->next;
		tempStack.head->next = temp;
	}

	while (tempStack.head->next->next != NULL)
	{
		//Pop from temp stack
		temp = tempStack.head->next->next;
		item = tempStack.head->next->coord;
		delete tempStack.head->next;
		tempStack.head->next = temp;

		//Pushes onto other
		temp = new Node;
		temp->coord = item;
		temp->next = other.head->next;
		other.head->next = temp;

		//Pushes onto Stack
		temp = new Node;

		temp->coord = item;
		temp->next = head->next;
		head->next = temp;

	}

}

void StackType::MakeEmpty()
{
	Node* temp;
	Node* temp2;
	
	while (head->next->next != NULL)
	{
		temp = head->next;
		temp2 = temp->next;
		delete temp;
		head->next = temp2;
	}
}

bool StackType::IsEmpty() const
{
	bool empty = false;

	if (head->next->next == NULL)
	{
		empty = true;
	}
	
	return empty;

}

bool StackType::IsFull() const
{
	return false;
}

void StackType::Push(Coord item)
{
	
	Node* temp;

	temp = new Node;

	temp->coord = item;
	temp->next = head->next;
	head->next = temp;
} 

void StackType::Pop(Coord& item)
{
	Node* temp;

	if (head->next->next != NULL)
	{
		temp = head->next->next;
		item = head->next->coord;
		delete head->next;
		head->next = temp;
	}
	else
	{
		exit(1);
	}
}

StackType& StackType::operator=(const StackType& other)
{
	return*this;
}

StackType::~StackType()
{
	Node* temp;
	temp = head->next;

	while (temp != NULL)
	{
		delete head;
		head = temp;
		temp = head->next;
	}

}