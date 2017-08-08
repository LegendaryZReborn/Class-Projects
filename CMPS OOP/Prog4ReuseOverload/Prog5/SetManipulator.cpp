//Programmers: Catherine Stringfellow and ???
//Program 4
//This program prints out a menu of operations set operations. The user can
//initialize 2 sets, clear a set, get the size of a set, add an item to a set,
//remove item from a set, check if an item is in a set,  union set0 + set1,
//Intersect set0 * set1, difference set1 - set0, difference set0-set1, 
//Prints a set, and Quits. 

#include<iostream>
#include<fstream>
#include <stdio.h>
#include "Set.h"
#include <string>

using namespace std;

void openFiles(ofstream &outfile);
//Purpose: Opens file to be written to.
//Requires: nothing.

void printHeading(ofstream& outfile);
//Purpose: Introduces the program.
//Requires: Outfile.

void printMenu();
//Purpose: Prints the input menu to the screen
//Requires: nothing
//Returns: nothing


void printEndMessage();
//Purpose: Thanks the user for running Big Numbers Program.
//Requires: outfile.

int getValidMenu(ofstream &outfile);
//Purpose: Gets a valid menu choice from the user
//Requires: ofstream& outfile
//Returns: int choice

int whichSet();
//Purpose: Get which set number the user wants to process
//Requires: nothing
//Returns: int setNum

void initializeSet(Set& setI, ofstream &outfile, int setNum);
//Purpose: Adds/Initializes a set
//Requires: Set setI, ofstream& outfile, int setNum
//Returns: nothing

int enterItem(int choice, ofstream& outfile);
//Purpose: prompts user to add an item
//Requires: int choice, ofstream& outfile
//Returns: int num

void sizeOf(int size, ofstream& outfile);
//Purpose: Prints size of a set
//Requires: int size, outfile, ofstream& outfile
//Return: nothing

void checkForitem(Set& setC, ofstream &outfile);
//Purpose: check if the item is in the set
//Requires: Set setC, ofstream& outfile
//Returns: nothing

void clearSet(Set& setC, int setNum, ofstream& outfile);
//Purpose: Clears the set
//Requires: setC, setNum
//Returns: nothing

void setUnion(Set sets[], ofstream& outfile);
//Purpose: Unions the two sets
//Requires: Set sets[], ofstream& outfile
//Returns:


void setIntersection(Set sets[], ofstream& outfile);
//Purpose: Intersects ther two sets
//Requires: Set sets[], ofstream& outfile
//Returns: nothing


void setDifference(Set sets[], int kind, ofstream& outfile);
//Purpose: Find the difference of two sets
//Requires: Set sets[], int kind, ofstream& outfile
//Returns: nothing

void printSet(ofstream& outfile, Set& setC, int setNum);
//Purpose: Prints out a set
//Requires: outfile , Set setC,
//Returns: nothing


void main()
{
	ofstream outfile;
	const int MAX = 3;
	Set set[MAX];
	bool enter = true;
	int setNum, choice, terminator = 0;

	openFiles(outfile);
	printHeading(outfile);

	//loop executes until the user chooses option 12
	do
	{
		//print Menu
		printMenu();


		//clear set 2
		set[2].clearSet();

		//get valid menu option (print, union (+), intersection(*), difference(-),
		//getNumberOfElements,isItem in one of the sets, clear set, re-initialize
		//a set

		choice = getValidMenu(outfile);

		switch (choice)
		{
		case 1:
			//Initialize set
			setNum = whichSet();
			initializeSet(set[setNum], outfile, setNum);
		break;

		case 2:
			//Clear set
			setNum = whichSet();
			clearSet(set[setNum], setNum, outfile);

		break;

		case 3:
			//Show size of
			setNum = whichSet();
			sizeOf(set[setNum].sizeOf(), outfile);
		break;

		case 4:
			//Add an item to a set
			setNum = whichSet();
			set[setNum].addItem(enterItem(choice, outfile));

		break;

		case 5:
			//Remove an item from a set
			setNum = whichSet();
			set[setNum].removeItem(enterItem(choice, outfile));

		break;

		case 6:
			//Check if an item is in the set
			setNum = whichSet();
			checkForitem(set[setNum], outfile);

		break;

		case 7:

			//Union the sets
			setUnion(set, outfile);

		break;

		case 8:
			//Intersect the sets
			setIntersection(set, outfile);

		break;

		case 9:
		case 10:

			//Difference the sets
			setDifference(set, choice, outfile);

		break;

		case 11:

			//Prints a set
			setNum = whichSet();
			printSet(outfile, set[setNum], setNum);

		break;

		case 12:

			//sets terminator to -1
			terminator = -1;
		break;

		default:
			cout << "Wrong menu option!" << endl;
			exit(1);
		break;
		}
		
		
	}while(terminator != -1);
	
	
	
	printEndMessage();

	system("pause");
}

void openFiles(ofstream &outfile)
{
	char outfileName[20];

	//opens file to be written to.
	cout << "Please enter name of output file: ";
	cin >> outfileName;
	outfile.open(outfileName);
}

void printMenu()
{

	cout << "1 - Init a set       2 - Clear a set    3 - Get Size of set" \
		<< endl;
	cout << "4 - Add item to set  5 - Remove item    6 - Check item" << endl;
	cout << "7 - Union Set0+Set1            8 - Intersect Set0 * Set1" << endl;
	cout << "9 - Difference Set1 - Set0     10 - Difference Set0-Set1" << endl;
	cout << "11 - Print set                 12 - Quit" << endl;
	
}

void printEndMessage()
{
	cout << "Thank you for using the Set Manipulation Program. \n\n";
	cout << "Goodbye." << endl;
}

void printHeading(ofstream& outfile)
{
	cout <<"Cavaughn Browne" << endl
		<< "Set Manipulation" << endl << endl;;

	outfile << "Cavaughn Browne" << endl
		<< "Set Manipulation" << endl << endl;;
}

int getValidMenu(ofstream &outfile)
{
	int choice;

	cin.clear();
	cin.sync();

	cout << "Choice: ";
	outfile << "Choice: ";
	cin >> choice;

	cout << choice << endl;
	outfile << choice << endl;

	return choice;
}

int whichSet()
{
	int setNum;

	cout << "Which set? ";
	cin >> setNum;

	if (setNum < 0 || setNum > 2)
	{
		exit(1);
	}

	return setNum;
}

void initializeSet(Set& setI, ofstream &outfile, int setNum)
{
	int x;
	bool terminate = false;
	
	outfile << "Initialize Set " << setNum << endl;
	cout << "Enter items to add (followed then by a non integer): ";
	
	while (cin >> x)
	{
		setI.addItem(x);
	}

	cout << endl;
	outfile << endl;
}

int enterItem(int choice, ofstream& outfile)
{
	int num;

	
	if (choice == 5)
	{
		outfile << "Remove item" << endl;
		cout << "Enter item to be removed: ";
		cin >> num;
		outfile << "Item removed: ";
		outfile << num << endl;
			
	}
	else if (choice == 4)
	{

		outfile << "Add item" << endl;
		cout << "Enter item to be added: ";
		cin >> num;
		outfile << "Item added: ";
		outfile << num << endl;
	}

	cout << endl;
	outfile << endl;

	return num;
}


void sizeOf(int size, ofstream& outfile)
{
	outfile << "Check Size " << endl;
	cout << "Set size: " << size << endl;
	outfile << "Set size: " << size << endl;
	cout << endl;
	outfile << endl;

}



void checkForitem(Set& setC, ofstream &outfile)
{
	int item;

	outfile << "Checks for item" << endl;
	cout << "Check for what item? ";
	cin >> item;

	if (setC.isElementOf(item))
	{
		cout << "Item " << item << " is in the set." << endl;
		outfile << "Item " << item << "is in the set." << endl;
	}
	else
	{
		cout << "Item " << item << " is not in the set." << endl;
		outfile << "Item " << item << " is not in the set." << endl;
	}

	cout << endl;
	outfile << endl;
}

void clearSet(Set& setC, int setNum, ofstream& outfile)
{
	setC.clearSet();
	cout << "Set" << setNum << " was cleared" << endl;
	outfile << "Set" << setNum << " was cleared" << endl;
	outfile << endl;
}

void setUnion(Set sets[], ofstream& outfile)
{
	outfile << "Unions the two sets" << endl;
	sets[2].Union(sets[0], sets[1]);
	cout << "Result of Union: Set 2 = {" << sets[2].toString() << "}" << endl;
	outfile << "Result of Union: Set 2 = {" << sets[2].toString() << "}" << endl;

	cout << endl;
	outfile << endl;

}


void setIntersection(Set sets[], ofstream& outfile)
{
	outfile << "Intersects the two sets" << endl;
	sets[2].Intersection(sets[0], sets[1]);
	cout << "Result of Intersection: Set 2 = {" << sets[2].toString() \
		<< "}" << endl;
	outfile << "Result of Intersection: Set 2 = {" << sets[2].toString() \
		<< "}" << endl;

	cout << endl;
	outfile << endl;
}


void setDifference(Set sets[], int kind, ofstream& outfile)
{
	outfile << "Finds the difference of the two sets" << endl;
	if (kind == 9)
	{
		sets[2].Difference(sets[1], sets[0]);

		cout << "Result of Difference: Set 2 = {" << sets[2].toString() << "}" \
			<< endl;
		outfile << "Result of Difference: Set 2 = {" << sets[2].toString() << "}" \
			<< endl;
	}
	else
	{
		sets[2].Difference(sets[0], sets[1]);

		cout << "Result of Difference: Set 2 = {" << sets[2].toString() \
			<< "}" << endl;

		outfile << "Result of Difference: Set 2 = {" << sets[2].toString() \
			<< "}" << endl;
	}

	cout << endl;
	outfile << endl;
}


void printSet(ofstream& outfile, Set& setC, int setNum)
{
	outfile << "Prints a sets" << endl;
	if (!setC.isEmpty())
	{
		cout << "Set" << setNum << " = {" << setC.toString() << "}" << endl;
		outfile << "Set" << setNum << " = {" << setC.toString() << "}" << endl;
	}
	else
	{
		cout << "Set is empty!" << endl;
		outfile << "Set is empty!" << endl;
	}

	cout << endl;
	outfile << endl;
}