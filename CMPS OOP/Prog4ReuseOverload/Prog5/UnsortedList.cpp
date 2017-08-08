//Programmer: Catherine Stringfellow
//Cavaughn Browne
//File UnsortedList.cpp  - implements the UnsortedList ADT

#include<iostream>
#include "UnsortedList.h"

UnsortedList::UnsortedList ( )
{   length = 0;
    currentNodePtr = NULL;
	head = NULL;
}

UnsortedList::UnsortedList(UnsortedList& other)
{
	ListNode *newNode;
	ItemType item;

	length = 0;
	currentNodePtr = NULL;
	head = NULL;

	other.resetList();

	item = other.currentNodePtr->item;
	newNode = new ListNode(item, head);
	head = newNode;
	currentNodePtr = head;
	other.currentNodePtr = other.currentNodePtr->next;
	length++;

	while (other.currentNodePtr != NULL)
	{
		item = other.currentNodePtr->item;
		newNode = new ListNode(item, currentNodePtr->next);
		currentNodePtr->next = newNode;
		other.currentNodePtr = other.currentNodePtr->next;
		currentNodePtr = currentNodePtr->next;
		length++;

		
	}

	
}

void UnsortedList::clearList ( )
{   	
	ListNode *nextNodePtr;
	
	currentNodePtr = head;
	while (currentNodePtr != NULL)
	{
		nextNodePtr = currentNodePtr -> next;
		delete currentNodePtr;
		length--;
		currentNodePtr = nextNodePtr;
	}

	head = NULL;
}

bool UnsortedList::isFull ( ) const
{  
	return false;
}

bool UnsortedList::isEmpty ( ) const
{  
   if(length == 0)
	   return true;
   else
	   return false;
}

ItemType UnsortedList::getLength ( ) const
{  
	return length;
}

void UnsortedList::insertFirst (const ItemType& item)
{	
	ListNode *newNode;

	currentNodePtr = head;
	newNode = new ListNode(item, head);
	newNode->next = currentNodePtr;
	head = newNode;
	length++;
}

bool UnsortedList::searchItem (const ItemType & item)
{
	bool found = false;
	currentNodePtr = head;
	
	while(!found && !atEnd())
	{
		if(currentNodePtr->item == item)
			found = true;
		else
			currentNodePtr = currentNodePtr->next;
	}

	return found;
}

void UnsortedList::removeItem (const ItemType& item)
{
   ListNode *previousNodePtr;

   //if the list is empty, do nothing
   if (!head)
	   return;

   //Determine if the first node is the one to delete
   if (head->item == item)
   {
      currentNodePtr = head;
	  head = head->next;
	  delete currentNodePtr;
	  currentNodePtr = head;
   }
   else
   {
     currentNodePtr = head;
	   

	  //skip all nodes whose item member is not equal to item
	   while (currentNodePtr != NULL && currentNodePtr->item != item)
	   {
          previousNodePtr = currentNodePtr;
		  currentNodePtr = currentNodePtr-> next;
	   }
	   //link the previous node to the node after currentNodePtr, 
	   //then delete currrentNodePtr
	   if (currentNodePtr)
	   {
		   previousNodePtr->next = currentNodePtr->next;
           //update next field of previous node ???
		   delete currentNodePtr;
		   //delete the current node ???
		   currentNodePtr = previousNodePtr;
		   //update the currentNodePtr ???
	   }
   }


   length --;
}

void UnsortedList::resetList ( )
{   
	currentNodePtr = head;
}


void UnsortedList::retrieveNextItem (ItemType & item)
{ 
    if(currentNodePtr == NULL)
		cout << "ERROR: You are at the end of the list.";
	else
	{
		item = currentNodePtr->item;
		currentNodePtr = currentNodePtr->next;
	}
}

	
bool UnsortedList::atEnd ()
{
	if(currentNodePtr == NULL)
		return true;
	else 
		return false;
}

UnsortedList::~UnsortedList ( )
{   
	clearList ();
	length = -1;
}


string UnsortedList::toString()
{
	string s = "";
	ItemType item;

	//get to beginning of list
	resetList();

	//get first item, if one
	if (!atEnd()) {
		retrieveNextItem(item);
		s = s + std::to_string(item) + " ";
	}

	//get next item, convert it to a string and append it to s
	while (!atEnd()) {
		retrieveNextItem(item);
		s = s + ", " +std::to_string(item) + " ";
	}

	return s;
}
