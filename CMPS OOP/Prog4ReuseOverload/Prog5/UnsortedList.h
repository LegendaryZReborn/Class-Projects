//Catherine Stringfellow
//Cavaughn Browne
//File : UnsortedList.h
//This file describes the class UnsortedList - an unordered sequence of items 
//used to store big numbers

#ifndef UnsortedList_h
#define UnsortedList_h

#include <iostream>
#include <string>
using namespace std;

typedef int ItemType;

class UnsortedList
{

  private:
	class ListNode
	{
		friend UnsortedList;
		ItemType item;
        ListNode *next;
		ListNode (ItemType item1, ListNode *next1 = NULL)
		{
			item = item1;
			next = next1;
		}		
	};
	
	int length;
	ListNode *currentNodePtr;
	ListNode *head;

  public:
    UnsortedList ( );

	UnsortedList(UnsortedList& other);

	void clearList ( );
	//Purpose:Make the list empty
	
	bool isFull ( ) const;
	//Returns: False as dynamic list is never full
	
	bool isEmpty ( ) const;
	//Returns: True if the list is empty and false otherwise
	
	int getLength ( ) const;
	//Returns: the number of items in the list
		
	void insertFirst (const ItemType & item);
	//Purpose: Inserts the item in the Unsorted list in the proper place
	//         current position will be at the item inserted
	//Requires: nothing
		
	bool searchItem(const ItemType & item);
	//Returns: True if item found in Unsorted list or false otherwise
	//         current position will be at the item if found
	
	void removeItem(const ItemType & item);
	//Purpose: Removes the first occurrence of the item from the Unsorted list 
	//current position will be at the item after the item removed, otherwise 
	//it will be at the end
		
	void resetList ( );
	//set the current position to the first item in the list if there is one
		
	bool atEnd ();
	//Returns: True if current position is at the end of the list

	void retrieveNextItem(ItemType & item);
	//Returns: The item that the current position is at, if current position
	//         is at a item AND  the current position is advanced to the next item

	~UnsortedList ( );
	//Destructs the list

	
	virtual string toString();
	//returns the string representation of the items in the list
};

#endif
