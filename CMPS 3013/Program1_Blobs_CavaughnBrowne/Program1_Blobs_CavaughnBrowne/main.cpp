//Programmed By: Cavaughn Browne
//CMPS 3013 - Professor Tina Johnson
//Program 1 - Blob World

#include <iostream>
#include <fstream>
#include <string>

using namespace std;

//Purpose: To open input and output files
//Requires: ifstream and ofstream variables
//Returns: nothing
void openFiles(ifstream& infile, ofstream& outfile);

//Purpose:To print a heading to the output file
//Requires: ofstream outfile
//Returns: nothing
void printHeading(ofstream& outfile);

//Purpose:To print an error message to the screen
//Requires: nothing
//Returns: nothing
void printError();


//Purpose: To read in from a file the contents of a blob world
//Requires: a 2D array, it's SIZE(dimensions) and ifstream
//Returns: nothing
void readInput(int SIZE, char blobWorld[][22], ifstream& infile);

//Purpose: To mutate blobs and count them
//Requires: 2D array, it's SIZE(dimensions) , and ifstream infile
//Returns: nothing
void mutateBlobs(int SIZE, char blobWorld[][22], int r, int c);

//Purpose: To print the blob world and the number of blobs if it was mutated.
//Requires: SIZE(dimensions) of the 2D array, the 2D array, ofstream outfile,
//numBlobs and  bool mutated
//Returns: nothing
void printBlobWorld(int SIZE, char blobWorld[][22], ofstream& outfile, 
	bool mutated, int numBlobs);

int main()
{
	ifstream infile;
	ofstream outfile;
	const int SIZE = 22;
	char blobWorld[SIZE][SIZE];
	int numBlobs = 0;
	bool mutated = false;


	openFiles(infile, outfile);

	if (infile)
	{
		printHeading(outfile);

		//puts a border within the 2D array
		for (int r = 0; r < SIZE; r += (SIZE - 1))
		{
			for (int c = 0; c < SIZE; c++)
			{
				blobWorld[r][c] = '0';
			}
		}

		for (int r = 1; r < (SIZE - 1); r++)
		{
			for (int c = 0; c < SIZE; c += (SIZE - 1))
			{
				blobWorld[r][c] = '0';
			}
		}

		readInput(SIZE, blobWorld, infile);

		//Prints original blob world
		printBlobWorld(SIZE, blobWorld, outfile, mutated, numBlobs);
		//traverse to find Blobs
		for (int r = 1; r < (SIZE - 1); r++)
		{
			for (int c = 1; c < (SIZE - 1); c++)
			{
				if (blobWorld[r][c] == '*')
				{
					mutateBlobs(SIZE, blobWorld, r, c);
					numBlobs++;
				}
			}
		}

		mutated = true;

		//prints mutated blob world
		printBlobWorld(SIZE, blobWorld, outfile, mutated, numBlobs);
	}
	else
	{
		//Error message: input file couldn't be opened
		printError();
	}
	
	system("pause");
	return 0;
}

void openFiles(ifstream& infile, ofstream& outfile)
{
	string inputFile, outputFile;

	cout << "Enter the name of the input file: ";
	cin >> inputFile;

	infile.open(inputFile);

	cout << "Enter the name of the output file: ";
	cin >> outputFile;

	outfile.open(outputFile);
}

void printHeading(ofstream& outfile)
{
	outfile << "Welcome Cavaughn Browne's Icky Blob Program!" << endl;
	outfile << "This program traverses through a world filled with icky blobs";
	outfile << endl << "and transforms them from being made of an icky";
	outfile << endl << "substance '*' to a highly useful form of energy '#'.";
	outfile << endl << "It also counts the number of blobs it finds there ";
	outfile << endl << "The blobs live in a mysterious 2D Matrix World of ";
	outfile << endl << "which only this program can decipher from a high tech";
	outfile << endl << "file." << endl << endl;
}

void printError()
{
	cout << "Error! Could not open the input file requested." << endl;
}

void readInput(int SIZE, char blobWorld [][22], ifstream& infile)
{

	char blobPixel;

	for (int r = 1; r < (SIZE - 1); r++)
	{
		for (int c = 1; c < (SIZE - 1); c++)
		{
			infile >> blobPixel;
			blobWorld[r][c] = blobPixel;
		}

	}
}

void mutateBlobs(int SIZE, char blobWorld[][22], int r, int c)
{

	if (blobWorld[r][c] == '*')
	{
		blobWorld[r][c] = '#';
		mutateBlobs(SIZE, blobWorld, r, (c + 1));
		mutateBlobs(SIZE, blobWorld, r, (c - 1));
		mutateBlobs(SIZE, blobWorld, (r + 1), c);
		mutateBlobs(SIZE, blobWorld, (r - 1), c);
	}

}

void printBlobWorld(int SIZE, char blobWorld[][22], ofstream& outfile, 
	bool mutated, int numBlobs)
{
	

	if (!mutated)
	{
		outfile << "Original World: " << endl << endl;
	}
	else
	{
		outfile << "World with mutated blobs: " << endl << endl;
	}
	//Print world to file
	for (int r = 1; r < 21; r++)
	{
		for (int c = 1; c < 21; c++)
		{
			outfile << blobWorld[r][c] << " ";
		}

		outfile << endl;
	}

	outfile << endl; 
	
	if (mutated)
	{
		outfile << endl << numBlobs << " blobs were found." << endl;
	}
}