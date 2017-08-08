//Cavaughn Browne
//CMPS 3013 - Words
//Professor Tina Johnson
//Purpose: This program reads in words from a file and stores each unique word
//within a doubly linked list and keeps count of how many of each word occurs
//throughout the given input file of words.

#include <iostream>
#include "SortedLinkedList.h"
#include <string>
#include <cstdio>
#include <fstream>

using namespace std;
//Purpose: To open files
//Requires: ofstream outfile and ifstream infile
//Returns: nothing
void openFiles(ofstream& outfile, ifstream& infile);

//Purpose: Prints heading to a file
//Requres: ofstream& fout
//Returns: nothing
void printHeading(ofstream& fout);

//Purpose: removes punction from the end of a word
//Requires: a word which has a punctuation at the end
//Returns: nothing (but the word is changed by reference)
void removePunct(string &word);

//Purpose: Prints a list to a file
//Requres: a SortedLinkedList, ofstream& outfile
//Returns: nothing
void printList(SortedLinkedList& wordList, ofstream& outfile);

int main()
{
	SortedLinkedList wordList;
	string word = "";
	ofstream outfile;
	ifstream infile;
	int count;
	
	//openFiles
	openFiles(outfile, infile);

	//Heading to file
	printHeading(outfile);

	if (infile)
	{

		infile >> word;
		removePunct(word);

		//keep reading until eof
		while (infile)
		{
			//if the word isnt in the list, add it. If it is, just increase
			//its word count in the appropriate node
			if (!wordList.findWord(word))
			{
				wordList.insertToList(word);
			}
			else
			{
				wordList.addWordCount();
			}

			infile >> word;
			//remove a punctiation from the end of a word
			removePunct(word);
		}
		
		//prints out the list
		printList(wordList, outfile);
	}


	return 0;
}

void openFiles(ofstream& outfile, ifstream& infile)
{
	string inputFile, outputFile;

	cout << "Enter the name of the input file: " << endl;
	cin >> inputFile;

	cout << "Enter the name of the output file: " << endl;
	cin >> outputFile;

	infile.open(inputFile);
	outfile.open(outputFile);
}

void printHeading(ofstream& fout)
{
	fout << "Word Counter by Cavaughn Browne. " << endl;
	fout << "Word Counter is a program that reads words and turns em" << endl;
	fout << "into numbers! Ok not really. It just counts how many" << endl;
	fout << "of each word occurs in a given file of well...words." << endl;
	fout << "Sorry. Couldn't come up with any interesting scenarios." << endl;
	fout << "The End." << endl << endl;
}

void removePunct(string &word)
{
	if (ispunct(word[word.length() - 1]))
	{
		word = word.substr(0, word.length() - 1);
	}

	for (int c = 0; c < word.length(); c++)
	{
		if (isupper(word[c]))
		{
			word[c] = tolower(word[c]);
		}
	}
}

void printList(SortedLinkedList& wordList, ofstream &outfile)
{
	string word = "";
	int count;

	wordList.resetList();
	while (!wordList.atEnd())
	{
		word = wordList.retrieveNext(count);
		outfile << word << " " << count << endl;
	}
}