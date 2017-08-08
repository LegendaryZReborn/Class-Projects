//Programmer: Catherine Stringfellow and ???
//File: Set.h   A set is an unordered collection of unique items

#pragma once
#include "UnsortedList.h"
class Set :
	public UnsortedList
{
public:
	//Add comments for each method
	Set();

	Set(Set & other);

	~Set();

	//Purpose: adds item to set
	//Precond: item is not already in the set
	//Postcond: item is added to the set, set is unchanged otherwise
	void addItem(const ItemType & item);

	//Purpose: removes item from set
	//Requires: item is in set
	//Returns: item is removed from set, set is unchanged otherwise
	void removeItem(const ItemType & item);

	//Purpose: gets next item in the set
	//Precond: an item exists in the set
	//Postcond: returns next item in the set, set is unchanged otherwise
	ItemType getNextItem();

	//Purpose: gets next item in the set
	//Precond: an item exists in the set
	//Postcond: returns next item in the set, set is unchanged otherwise
	bool isElementOf(const ItemType & item);

	//Purpose: returns the size of set
	//Precond: the set exists
	//Postcond: returns the size of the set
	int sizeOf();

	//Purpose: Resets the currentNodePtr in the set
	//Precond: 
	//Postcond: currentNodePtr = head
	void resetSet();

	//Purpose: Clears set
	//Precond: There are items in the set
	//Postcond: the set is cleared
	void clearSet();

	//Purpose: Unions the two sets
	//Precond: two sets are initialized
	//Postcond: the two sets are Unioned
	void Union(Set & A, Set & B);

	//Purpose: Intersects the two sets
	//Precond: the two sets are initialized
	//Postcond: results in the intersection of the two sets
	void Intersection(Set & A, Set & B);

	//Purpose: Finds the difference of the two sets
	//Precond: the two sets are initialized
	//Postcond: results in the difference of the two sets
	void Difference(Set & A, Set & B);

	//Purpose: overloads the + operator to Union the sets
	//Precond: sets are initialized
	//Postcond: returns the union of the sets
	Set operator+(Set& B);

	//Purpose: overloads the * operator to intersect the sets
	//Precond:  the two sets are initialized
	//Postcond: returns the intersection of the sets
	Set operator*(Set& B);

	//Purpose: overloads the - operator to find the difference of the sets
	//Precond: the two sets are initialized
	//Postcond: returns the difference of the sets
	Set operator-(Set& B);

	//Purpose: overloads the = operator to assign a set 
	//Precond: setB is initialized
	//Postcond: Set B is assigned to whats on the left of the =
	void operator=(Set& B);

};