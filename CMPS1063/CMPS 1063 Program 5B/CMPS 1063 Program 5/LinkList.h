//Cavaughn Browne
#pragma once
#include <string>
#include <fstream>

using namespace std;

struct Node
{
	string title;
	Node * next;

	//default constructor
	Node()
	{
	}

	//Parameterized constructor to initialize title and next when called
	Node(string title1, Node * next1 = NULL)
	{
		title = title1;
		next = next1;
	}
};

class LinkList
{
public:
	//Constructor, initializes list
	LinkList();

	//Purpose: Checks to see if the list is empty
	//Requires: none
	//Returns: emptyList which is, true when the list is empty and false if not
	bool isEmpty();


	//Purpose:Inserts an item into the list in a sorted fashion
	//Requires: string requiredTitle, of which is going to be  placed into 
	//the list
	//Returns: none
	void insertItem(string requiredTitle);

	//Purpose: Removes an item from the list
	//Requires: string requiredTitle, of which is going to be removed
	//Returns: none
	void removeItem(string requiredTitle);

	//Purpose: finds the position of an item in the list
	//Requires: string requiredTitle
	//Returns: pointer to the required place
	Node * findItem(string requiredTitle);

	//Purpose: Prints instructions for where a book is suppose to go
	//to the output file 
	//Requires: string rbTite and outfile stream
	//Returns:none
	void LinkList::placeInstructions(string rbTitle, ofstream& outfile);

	//Purpose: Clear the list
	//Requires: none
	//Returns: none, the head and tail dummy nodes are still intact
	void clearList();

	//Purpose: Reset the position of current in list
	//Requires: none
	//Returns: none
	void resetList();

	//Purpose: Gets a title from the list according to current
	//Requires: none
	//Returns: string title
	string retrieveItem();

	//Purpose: Move the postitiont of the current pointer to the next Node 
	//in the list
	//Requires: none
	//Returns: None
	void advancePosition();

	//Purpose: Checks if the current pointer is pointing to the last item 
	//in the list
	//Requires:none
	//Returns: isEnd, true if at the End and false if not
	bool atEnd();

	//Deletes all the nodes when the instance of the class goes out of scope
	~LinkList();

private:
	Node *head;
	Node *current;

};


