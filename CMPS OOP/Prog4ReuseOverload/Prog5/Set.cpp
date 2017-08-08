//Cavaughn Browne
//File: set.cpp A set is an unordered collection of unique items

#include "Set.h"

Set::Set() :UnsortedList()
{

}

Set::Set(Set & other) : UnsortedList(other)
{
	
}

Set::~Set() 
{
}

void Set::addItem(const ItemType & item)
{
	if (!(UnsortedList::searchItem(item)) && !UnsortedList::isFull())
	{
		UnsortedList::insertFirst(item);
	}

}

void Set::removeItem(const ItemType & item)
{
	if (UnsortedList::searchItem(item))
	{
		UnsortedList::removeItem(item);
	}
}

ItemType Set::getNextItem()
{
	ItemType item;
	UnsortedList::retrieveNextItem(item);
	return item;
}

bool Set::isElementOf(const ItemType & item)
{
	bool isElement = false;

	if (UnsortedList::searchItem(item))
	{
		isElement = true;
	}

	return isElement;
}

int Set::sizeOf()
{
	int size = UnsortedList::getLength();
	return size;
}

void Set::resetSet()
{
	UnsortedList::resetList();
}

void Set::clearSet()
{
	UnsortedList::clearList();
}

void Set::Union(Set & A, Set & B)
{
	ItemType item;
	

	A.UnsortedList::resetList();
	B.UnsortedList::resetList();


	while (!B.UnsortedList::atEnd())
	{
		B.UnsortedList::retrieveNextItem(item);

		if (!UnsortedList::searchItem(item) && !UnsortedList::isFull())
		{
			UnsortedList::insertFirst(item);
		}
	}

	while (!A.UnsortedList::atEnd())
	{
		A.UnsortedList::retrieveNextItem(item);

		if (!UnsortedList::searchItem(item) && !UnsortedList::isFull())
		{
			UnsortedList::insertFirst(item);
		}

	}

	
}


void Set::Intersection(Set & A, Set & B)
{
	ItemType item;
	

	A.UnsortedList::resetList();
	B.UnsortedList::resetList();

	while (!A.UnsortedList::atEnd())
	{
		A.UnsortedList::retrieveNextItem(item);

		if (B.UnsortedList::searchItem(item) && !UnsortedList::isFull())
		{
			UnsortedList::insertFirst(item);
			B.UnsortedList::resetList();
		}

	}


}

void Set::Difference(Set & A, Set & B)
{
	ItemType item;
	

	A.UnsortedList::resetList();
	B.UnsortedList::resetList();

	while (!A.UnsortedList::atEnd())
	{
		A.UnsortedList::retrieveNextItem(item);

		if (!B.UnsortedList::searchItem(item) && !UnsortedList::isFull())
		{
			UnsortedList::insertFirst(item);
			B.UnsortedList::resetList();
		}

	}
	
}

Set Set::operator+(Set& B)
{
	Set temp;

	ItemType item;

	UnsortedList::resetList();
	B.UnsortedList::resetList();


	while (!B.UnsortedList::atEnd())
	{
		B.UnsortedList::retrieveNextItem(item);

		if (!temp.UnsortedList::searchItem(item) && !temp.UnsortedList::isFull())
		{
			temp.UnsortedList::insertFirst(item);
		}
	}

	while (!UnsortedList::atEnd())
	{
		UnsortedList::retrieveNextItem(item);

		if (!temp.UnsortedList::searchItem(item) && !temp.UnsortedList::isFull())
		{
			temp.UnsortedList::insertFirst(item);
		}

	}

	return temp;
}

Set Set::operator*(Set& B)
{
	ItemType item;
	Set temp;

	UnsortedList::resetList();
	B.UnsortedList::resetList();

	while (!UnsortedList::atEnd())
	{
		UnsortedList::retrieveNextItem(item);

		if (B.UnsortedList::searchItem(item) && !temp.UnsortedList::isFull())
		{
			temp.UnsortedList::insertFirst(item);
			B.UnsortedList::resetList();
		}

	}

	return temp;
}

Set Set::operator-(Set& B)
{
	ItemType item;
	Set temp;

	UnsortedList::resetList();
	B.UnsortedList::resetList();

	while (!UnsortedList::atEnd())
	{
		UnsortedList::retrieveNextItem(item);

		if (!B.UnsortedList::searchItem(item) && !temp.UnsortedList::isFull())
		{
			temp.UnsortedList::insertFirst(item);
			B.UnsortedList::resetList();
		}

	}

	return temp;
}

void Set::operator=(Set& B)
{
	ItemType item;

	B.UnsortedList::resetList();

	while (!B.UnsortedList::atEnd())
	{
		B.UnsortedList::retrieveNextItem(item);

		UnsortedList::insertFirst(item);
	}

}




