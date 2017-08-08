//Cavaughn Browne
//Programmer: Catherine Stringfellow
//File: StackType.h
// This file declares a StackType that contains Coordinate pairs

/*
-DataType
StackType

-Domain
A homogeneous list of Nodes (containing coordinates) where only the first item
can be freely accessed, and the list can contain from 0 to as many until said 
list is full.

-Operations
MakeEmpty
IsFull
IsEmpty
Pop
Push
*/

struct Coord
{
	int x;
	int y;
};

struct Node
{
	Coord coord;
	Node * next;
};

class StackType
{
public:

	//Constructors
    StackType();
  
	//Copy Constructor
	StackType(StackType & other);

	//Destructor
	~StackType();

    void MakeEmpty();
    // Purpose:  Sets stack to an empty state.
    // Post: Stack is empty.

    bool IsFull() const;
    // Purpose: Determines whether the stack is full.
    // Pre:  Stack has been initialized.
    // Post: returns true iff stack is full and stack is unchanged

    bool IsEmpty() const;
    // Purpose: Determines whether the stack is empty.
    // Pre:  Stack has been initialized.
    // Post: returns true iff stack is empty and stack is unchanged

    void Push(Coord item);
    // Purpose: Adds newItem to the top of the stack.
    // Pre:  Stack has been initialized.
    // Post: newItem is at the top of the stack and stack is unchanged otherwise

    void Pop(Coord & item);
    // Purpose: Removes top item from the stack and returns it in item.
    // Pre:  Stack has been initialized.
    // Post: If (stack is empty), write error message;
    //       otherwise, top element has been removed from stack and stack is unchanged otherwise
    //       item is a copy of the removed item.

	//overload operator =
	StackType& operator=(const StackType& other);
	

private:

	Node * head;
    		
};

