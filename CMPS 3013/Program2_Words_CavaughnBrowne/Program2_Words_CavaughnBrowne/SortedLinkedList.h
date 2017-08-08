//Cavaughn Browne
//SortedinkedList (Doubley Linked) - stores strings but no more than one string of the same kind.
#pragma once
#include <string>

using namespace std;
struct Node
{
	string word = "";
	int tcount = 0;
	Node* next = NULL;
	Node* prev = NULL;


};

class SortedLinkedList
{
public:
	//constructor
	SortedLinkedList();

	//Purpose:Checks if the list is empty
	//Requires: nothing
	//Returns: nothing
	void isEmpty();

	//Purpose: Checks to see if atEnd of the list
	//Requires: nothing
	//Returns: true if at end of list, false if not
	bool atEnd();

	//Purpose: Inserts a word into the list (sorted)
	//Requires: a word to insert(must be a string)
	//Returns: nothing
	void insertToList(string iword);

	//Purpose: Removes a word from the list(leaves the list sorted)
	//Requires: a word to remove(must be a string and list shouldn't be empty)
	//Returns: nothing
	void removeFromList(string iword);

	//Purpose: Finds an occurence of a word within the list
	//Requires: a word(must be a string)
	//Returns: true if in the list, false otherwise
	bool findWord(string iword);

	//Purpose: adds 1 to the number of times a word occurs
	//Requires: the curr pointer should be on the word which needs this
	//Returns: nothing
	void addWordCount();

	//Purpose: resets the curr pointer the beginning of the list
	//Requires: nothing
	//Returns: nothing
	void resetList();
	
	//Purpose: retrieves the next word and its count from the list
	//Requires: and int passed by reference
	//Returns: the word
	string retrieveNext(int& count);

	//destructor
	~SortedLinkedList();

private:
	Node* curr;
	Node* head;

};

