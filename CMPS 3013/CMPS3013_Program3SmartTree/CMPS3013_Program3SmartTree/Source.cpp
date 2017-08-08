//Cavaughn Browne
//CMPS 3013 Program 3 - Professor Johnson
//Purpose: This program attempts to guess what the user is thinking of. 
//If it fails to get a correct guess, it askes the user to input a 
//question that would correctly differentiate the users answer from
//the answer it gave.

#include<iostream>
#include <fstream>
#include <string>
#include "SmartTree.h"

using namespace std;

//Purpose: Opens input database file
//Requires:ifstream infile
//Returns: input file name
string openFile(ifstream& infile);

//Purpose: Prompts the user to think of something
//Requires: nothing
//Returns: nothing
void thinkPrompt();

//Purpose: Asks user a question, where the user should respond 'Y'/ 'N'
//Requires: a SmartTree
//Reuturns: char userAns
char askUser(SmartTree &tree);

//Purpose: celebrates victory against the player
//Requires: nothing
//Returns: nothing
void victoryDance();

//Purpose: Takes a question and answer from the player to add to its database
//for a future encounter
//Requires: nothing
//Returns: nothing
void learnPlayerAnswer(SmartTree& tree);

//Purpose: Celebrates win by slighty upping itself and mocking player
//Requires: nothing
//Returns: nothing
void mockPlayer();

//Purpose: Ask user if they want to go again
//Requires: nothing
//Returns: the users choice: Y or N (Anything other than Y is treated as N)
char doAgain(); 

//Purpose::Overwrite existing file with updated database.
//Requires:: SmartTree tree , ofstream outfile, string file
//Returns:: nothing
void overwriteFile(SmartTree& tree, ofstream& outfile, string file);

int main()
{
	ifstream infile;
	ofstream outfile;
	string item;
	SmartTree tree;
	char userAns, choice;
	bool done, again;
	string file;

	file = openFile(infile);

	if (infile)
	{
		//Loads the data from the data file and then close the input file
		tree.loadData(infile);
		infile.close();

		//Repeat while the user wants to continue playing
		again = true;
		while (again)
		{
			//Tells the user to think of something
			thinkPrompt();
			//resets current pointer
			tree.resetCurrent();

			//ask the user questions until an answer is reached
			done = false;
			while (!done)
			{
				//asks user a question
				userAns = askUser(tree);

				if (userAns == 'Y')
				{
					//if the current position in tree is not a leaf
					if (!tree.isLeaf())
					{
						tree.goLeft();
					}
					else
					{
						//Computer wins
						mockPlayer();
						done = true;
					}
				}
				else
				{
					if (!tree.isLeaf())
					{
						tree.goRight();
					}
					else
					{
						//Learn the players answer
						learnPlayerAnswer(tree);
						done = true;
						
					}
				}
			}

			choice = doAgain();
			if (choice != 'Y')
			{
				again = false;
			}
		}

		//overwritesFile with current data.
		overwriteFile(tree, outfile, file);
		
	}
	else
	{
		cout << "Failed loading data!" << endl;
	}
	
	

	return 0;
}

string openFile(ifstream& infile)
{
	string  inputFile;

	cout << "Enter input file name: ";
	cin >> inputFile;

	infile.open(inputFile, ios::in | ios::out);

	return inputFile;
}

void thinkPrompt()
{
	cout << "Think of something and I will try to guess what it is." << endl;
	cout << "Give your answers as 'Y' for yes and 'N' for no." << endl;
}


char askUser(SmartTree &tree)
{
	string contents;
	char userAns;
	bool goodAns;

	contents = tree.provideContents();

	do
	{
		goodAns = false;
		if (!tree.isLeaf())
		{
			cout << contents << endl;
		}
		else
		{
			cout << "Are you thinking of " << contents << "?" << endl;
		}
		cin >> userAns;
		userAns = toupper(userAns);

		if (userAns == 'Y' || userAns == 'N')
		{
			goodAns = true;
		}
		else
		{
			cout << "Please give a proper answer: 'Y'/'N'" << endl;
		}

	} while (goodAns != true);



	return userAns;
	
}

void mockPlayer()
{
	cout << "Hmm hmm it's only natural that my superior intelligence would ";
	cout << "prevail." << endl;
}

void learnPlayerAnswer(SmartTree& tree)
{
	string ques, ans;

	cin.ignore();
	cout << "W-What on earth were you thinking of then!" << endl;
	getline(cin, ans);

	cout << "O-oh I see. I would have thought of that, if, um...";
	cout << endl; 
	cout << "Ahem! Anyhow, give me a question that would your answer";
	cout << endl;
	cout << "from mine of which yours would be the correct answer.";
	cout << endl;
	getline(cin, ques);

	//if the user forgot to put a question mark on the question
	//add one
	if (ques.length() - 1 != '?')
	{
		ques.append("?");
	}
	
	cout << endl;

	tree.updateTree(ques, ans);
	cout << "Very well. I will update my database with your information. Tch.";
	cout << endl;
}


char doAgain()
{
	char choice;

	cout << "Do you want to play again. Y or N (anything else means N)";
	cout << endl;
	cin >> choice;
	cout << endl;

	choice = toupper(choice);

	return choice;
}

void overwriteFile(SmartTree& tree, ofstream& outfile, string file)
{
	outfile.open(file);

	//prints tree to file
	if (outfile)
	{
		tree.preorderTravP(outfile);
	}
	else
	{
		cout << "File could not be opened for overwritting!" << endl;
	}

	outfile.close();
}
