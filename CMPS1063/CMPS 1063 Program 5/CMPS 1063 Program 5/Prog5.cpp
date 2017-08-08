//Cavaughn Browne

#include <iostream>
#include <fstream>
#include <string>
#include "LinkList.h"

using namespace std;

//Purpose:
//Requires:
//Returns:
void openFiles(ofstream& outfile, ifstream& infile);

//Purpose:
//Requires:
//Returns:
void errorFile();

//Purpose: To get the title of a books from a file
//Requires: infile stream
//Returns: the book title
string getTitle(ifstream& infile);

//Purpose:
//Requires:
//Returns:
void printList(ofstream& outfile, LinkList& shelfBooks);

int main()
{
	ifstream infile;
	ofstream outfile;
	string shelfTitle;
	LinkList shelfBooks;

	openFiles(outfile, infile);

	if (infile)
	{
		shelfTitle = getTitle(infile);
		while (shelfTitle != "END")
		{
			shelfBooks.insertItem(shelfTitle);
			shelfTitle = getTitle(infile);
		}

		printList(outfile, shelfBooks);
	}
	else
	{
		errorFile();
	}

	system("pause");
	return 0;
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

	//read the “, then read the string up to the second “, then read and ignore the rest of the line
	infile >> ch;
	if (!infile.eof())
	{
		getline(infile, s, '"');
		getline(infile, junk);
	}

	if (ch != '"')
		return "END";

	return s;
}

void printList(ofstream& outfile, LinkList& shelfBooks)
{
	shelfBooks.resetList();
	string title;
	
	outfile << "SHELF LIST";
	while (!shelfBooks.atEnd())
	{
		title = shelfBooks.retrieveItem();
		outfile << title << endl;

		shelfBooks.advancePosition();
	}

	if (shelfBooks.atEnd())
	{
		title = shelfBooks.retrieveItem();
		outfile << title << endl;
	}
}