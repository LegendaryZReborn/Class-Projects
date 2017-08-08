//Cavaughn Browne
//CMPS-3013 Dr. Tina Johnson
//Purpose: This program reads in an adjacency list of peple into a Graph and 
//then makes introductions between the people who don't already know each
//other on the list.

#include <iostream>
#include <fstream>
#include <string>
#include "AMGraph.h"

using namespace std;


//Purpose: To open input and output files
//Requires: ifstream and ofstream variables
//Returns: nothing
void openFiles(ifstream& infile, ofstream& outfile);

//Purpose:To print a heading to the output file
//Requires: ofstream outfile
//Returns: nothing
void printHeading(ofstream& outfile);

//Purpose:To print a goodbye statement to the output file
//Requires: ofstream outfile
//Returns: nothing
void printGoodbye(ofstream& outfile);

// Purpose:Inserts names and information from input file to graph
//Requires: AMGraph instance passed by refence, ofstream infile
//Returns: nothing
void insertToGraph(AMGraph& graph1, ifstream& infile);

//Purpose: Make the introductions between the persons who don't yet know
//each other
//Requires: AMGraph passed by reference, ofstream& outfile, and int size
//Returns: nothing
void makeIntroductions(AMGraph& graph2, ofstream& outfile, int size);

int main()
{
	ifstream infile;
	ofstream outfile;
	int size;
	

	openFiles(infile, outfile);
	printHeading(outfile);

	if (infile)
	{
		infile >> size;
		AMGraph graph1(size);
		AMGraph graph2(size);
		
		//reads names from file and inputs them into graph 
		insertToGraph(graph1, infile);

		//Copy the graph in another graph then create the complement from that
		//graph
		graph2 = graph1;
		graph2.createGraphComplement();

		outfile << "Introductions:" << endl << endl;

		//traverse below the diagonal and make introductions
		makeIntroductions(graph2, outfile, size);

		printGoodbye(outfile);
		
	}
	else
	{
		cout << "Error! Input file could not be opened." << endl;
	}


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
	outfile << "Welcome Cavaughn Browne's Make New Friends Program!" << endl;
	outfile << "This program reads in an adjacency list of peple into a Graph";
	outfile << endl;
	outfile << "and then makes introductions between the people who don't";
	outfile << endl;
	outfile << "already know each on the list." << endl << endl;

}

void printGoodbye(ofstream& outfile)
{
	outfile << endl;
	outfile << "Thank You for using Cavaughn Browne's ";
	outfile << "Make New Friends Program." << endl;
	

}


void insertToGraph(AMGraph& graph1, ifstream& infile)
{
	string name1, name2;

	infile >> name1 >> name2;

	while (infile)
	{
		graph1.insertToGraph(name1, name2);
		infile >> name1 >> name2;
	}

}

void makeIntroductions(AMGraph& graph2, ofstream& outfile, int size)
{
	string name1, name2;
	
	for (int r = 0; r < size; r++)
	{
		for (int c = 0; c < r; c++)
		{
			if (c != r && graph2.isEdge(r, c))
			{
				name1 = graph2.provideName(c);
				name2 = graph2.provideName(r);

				outfile << name1 << " is introduced to " << name2 << ".";
				outfile << endl;
			}
		}

	}
}