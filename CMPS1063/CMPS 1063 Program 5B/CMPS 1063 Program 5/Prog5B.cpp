//Cavaughn Browne
//CMPS 1063 - Program 
//Purpose -This program reads in some titles from a file and adds them to a 
//linked list while sorting them until the word END in the file. It then 
//reads in various instructions: BORROW, RETURN, SHELVE OR PRINT. The 
//BORROW intructs the program to remove an item from the shelf list;
//RETURN adds items that were borrowed to a different list of returned
//titles; SHELVE adds all those titles in the returned list back to
//the shelf list in their proper positions and outputs the instructions
//to do so to the output file. An END is printed after each SHELVE operation.

#include <iostream>
#include <fstream>
#include <string>
#include "LinkList.h"

using namespace std;



//Purpose: Prints welcome message to the screen
//Requires: none
//Returns: none
void welcomeM();

//Purpose: Prints end message to the screen
//Requires: none
//Returns: none
void endM();

//Purpose: Open input and output files
//Requires: outfile and infile stream
//Returns: none
void openFiles(ofstream& outfile, ifstream& infile);

//Purpose: Prints error if the input file is not opened
//Requires: none
//Returns: none
void errorFile();

//Purpose: To get the title of a books from a file
//Requires: infile stream
//Returns: the book title
string getTitle(ifstream& infile);

//Purpose: To get instruction from a file
//Requires: infile stream
//Returns: the instruction
string getInstruction(ifstream& infile, string& rbTitle);

//Purpose: Print the list of books
//Requires: outfile stream and book list passed by reference
//Returns: none, the list is not changed
void printList(ofstream& outfile, LinkList& shelfBooks);

//Purpose:Print instructions for placing rbTitle in shelfBooks
//Requires: outfile stream, infile stream, string rbTitle,  Linklist shelfBooks
//passed by reference and Linklist returnList passed by reference
//Returns: none, the lists aren't changed
void shelveInstructions(ofstream& outfile, ifstream& infile, string rbTitle,\
	LinkList& shelfBooks, LinkList& returnList);


int main()
{
	ifstream infile;
	ofstream outfile;
	string shelfTitle, instruction, rbTitle;
	LinkList shelfBooks, returnList;

	welcomeM();
	openFiles(outfile, infile);

	if (infile)
	{
		//Get title and insert to list until the word "END" is reached
		shelfTitle = getTitle(infile);
		while (shelfTitle != "END")
		{
			//Inserts title to list
			shelfBooks.insertItem(shelfTitle);
			shelfTitle = getTitle(infile);
		}

		//Get the first instruction from file
		instruction = getInstruction(infile, rbTitle);


		while (!infile.eof())
		{
			//Excecute according to instruction
			if (instruction == "BORROW")
			{
				shelfBooks.removeItem(rbTitle);
			}
			else if (instruction == "RETURN")
			{
				returnList.insertItem(rbTitle);
			}
			else if (instruction == "SHELVE")
			{
				if (!returnList.isEmpty())
				{
					returnList.resetList();

					while (!returnList.atEnd())
					{
						//retrieve title from returnList
						rbTitle = returnList.retrieveItem();

						//Prints instructions for where to put the title in 
						//shelfBooks
						shelveInstructions(outfile, infile, rbTitle, shelfBooks,\
							returnList);

						//Add title from the returnList to the shelfBooks list
						shelfBooks.insertItem(rbTitle);
						returnList.advancePosition();

						//Prints END to the output file after shelving is done
						if (returnList.atEnd())
						{
							shelveInstructions(outfile, infile, rbTitle, shelfBooks,\
								returnList);
						}
					}

					//Clears the returnList when all titles has been returned
					returnList.clearList();

				}
			}
			else if (instruction == "PRINT")
			{
				printList(outfile, shelfBooks);
			}

			instruction = getInstruction(infile, rbTitle);
		}
		
	}
	else
	{
		errorFile();
	}

	endM();

	infile.close();
	outfile.close();
	system("pause");
	return 0;
}


void welcomeM()
{
	cout << "Welcome to Cavaughn's Book Management Program";
	cout << endl << endl;
}

void endM()
{
	cout << "Thank you for using the Book Management Program";
	cout << endl;
}


void openFiles(ofstream& outfile, ifstream& infile)
{
	string inputfile, outputfile;

	cout << "Enter the input file name: ";
	cin >> inputfile;

	infile.open(inputfile);
	
	cout << "Enter the output file name: ";
	cin >> outputfile;

	outfile.open(outputfile);

	cout << endl;
}

void errorFile()
{
	cout << "Error! Input file was not opened." << endl;
}

string getTitle(ifstream& infile)
{
	string s, junk;
	char ch;

	//read the “, then read the string up to the second “, then read and 
	//ignore the rest of the line
	infile >> ch;
	if (!infile.eof() && (ch == '"'))
	{
		getline(infile, s, '"');
		getline(infile, junk);
	}

	if (ch != '"')
	{
		getline(infile, junk);
		return "END";
	}
		

	return s;
}

string getInstruction(ifstream& infile, string& rbTitle)
{
	string instructWord;
	char ch;

	infile >> instructWord;
	if (instructWord == "BORROW" || instructWord == "RETURN")
	{
		//get the " before the title
		infile >> ch;

		//get the title name and stop at the next "
		getline(infile, rbTitle, '"');
	}
	
	return instructWord;
}

void printList(ofstream& outfile, LinkList& shelfBooks)
{
	shelfBooks.resetList();
	string title;
	
	outfile << "SHELF LIST" << endl;
	while (!shelfBooks.atEnd())
	{
		title = shelfBooks.retrieveItem();
		outfile << title << endl;

		shelfBooks.advancePosition();
	}

	outfile << endl;

}

void shelveInstructions(ofstream& outfile, ifstream& infile, string rbTitle, \
	LinkList& shelfBooks, LinkList& returnList)
{
	string instructWord;

	//Print instructions for placing rbTitle in shelfBooks
	if (!returnList.atEnd())
	{
		shelfBooks.placeInstructions(rbTitle, outfile);
	}

	//Only when the pointer in returnList is at the end, read the other line
	//then print "END" if it is the word "END"
	if (returnList.atEnd())
	{
		instructWord = getInstruction(infile, rbTitle);
		if (instructWord == "END")
		{
			outfile << "END" << endl;
		}
	}
}