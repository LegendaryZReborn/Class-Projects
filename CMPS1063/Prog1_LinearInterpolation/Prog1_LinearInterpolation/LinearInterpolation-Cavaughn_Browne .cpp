//Cavaughn Browne    02/04/2015
//Program 1- LinearInterpolation.cpp 
//This program reads in a number of pairs of x,y values (maximum 10) 
//and stores them in a 2 dimensional array. It prints out the 
//said input table to screen and output file. It then accepts a user
//input of an x value that exists between the x values in the table 
//and calculates the corresponding y value. The x value and y value 
//are then printed to an output file and to the screen.

#include <iostream>
#include <fstream>
#include <iomanip>

using namespace std;

//Constants
const int MAXROWS = 2, MAXCOLS = 10;

//2D Array Typedef
typedef double TableType[MAXROWS][MAXCOLS];

///function prototypes

//Purpose: open streams
//Requires: an input stream and output stream
//Returns: an opened input stream and an opened output stream
void openFiles(ifstream & infile, ofstream & outfile);

//Purpose: print error message
//Requires: none
//Returns: none
void printError();

//Purpose:print error message
//Requires: none
//Returns: none
void printErrorx();

//Purpose: print a heading
//Requires: output stream
//Returns: none
void printHeading(ofstream & outfile);

//Purpose: prints the Input Table
//Requires: output stream, numPairs and 2d Array dataValues
void printTable(ofstream & outfile, int numPairs, TableType dataValues);


//Purpose: Askes the user if they want to interpolate another value
//Requires: none
//Returns: none
char userDecision();

//Purpose: read in values into a 2D array
//Requires: an input stream, numPairs variable a 2D array to store datavalues
//Returns: a number of double values in a 2D array and the number of Pairs
void getValues(ifstream & infile, int& numPairs, TableType dataValues);

//Purpose: Get value of x from the user
//Requires: Number of Pairs and 2d array of data.
//Returns: A valid x value is returned
double getValidX(TableType dataValues, int numPairs);

//Purpose: Calculate the interpolated value y
//Requires: x inputed by the user and 2d array of data
//Returns: Interpolated y value.
double interpolateY(double x, TableType dataValues);

//Purpose: outputs the value of x and the interpolated y.
//Requires: output stream, x value and interpolated y value.
//Returns: none
void outputResults(ofstream & outfile, double x, double y);

//Purpose: prints exit message.
//Requires: none
//Returns: none
void printWelcome()
{
	cout << "Welcome to Cavaughn Browne's Linear Interpolation";
	cout << "program!" << endl;
	cout << endl;
}

//Purpose: prints exit message.
//Requires: none
//Returns: none
void printExit()
{ 
	cout << "Thank you for using this program. Bye." << endl;
	
}

int main()
{
	TableType dataValues; //table for storing x,y pairs
	ifstream infile;
	ofstream outfile;
	double x, y;
	int numPairs;
	char choice;

	printWelcome();

	openFiles(infile, outfile);

	if (infile)
	{
		getValues(infile, numPairs, dataValues);

		printHeading(outfile);
		printTable(outfile, numPairs, dataValues);

		if (numPairs <= MAXCOLS && numPairs >= 0)
		{
			do
			{
				//Get valid x input from the user
				x = getValidX(dataValues, numPairs);

				//Calculate the interpolated value for y
				y = interpolateY(x, dataValues);
				
				//Output results
				outputResults(outfile, x, y);

				//Asks user if they will continue interpolating or not
				choice = userDecision(); 
			} while ((choice == 'Y') || (choice == 'y'));
		}
		else
		{
			printErrorx();
		}
	}
	else
	{
		printError();
	}
	printExit();
	system("pause");
	return 0;
}


void openFiles(ifstream & infile, ofstream & outfile)
{
	char inFileName[40];
	char outFileName[40];

	//open input stream
	cout << "Enter the input file name: " << endl;
	cin >> inFileName;
	infile.open(inFileName);

	//open output stream
	cout << "Enter the output file name: " << endl;
	cin >> outFileName;
	outfile.open(outFileName);
	cout << endl;
}


void printError()
{
	cout <<  "Error opening file, file may not exist" << endl;
}

void printErrorx()
{
	cout << "Number of pairs is more the Max Number of coloumns" << endl;
}

void printHeading(ofstream & outfile)
{

	outfile << "Cavaughn Browne" << endl;
	outfile << "Program 1 - LinearInterpolation.cpp" << endl;
	outfile << "This program reads in a number of pairs of x,y" << endl;
	outfile << "values (maximum 10) and stores them in a 2" << endl;
	outfile << "dimensional array It prints out the said" << endl;
	outfile << "input table to screen and output file. It" << endl;
	outfile << "then accepts a user input of an x value" << endl;
	outfile << "that exists between the x values in the" << endl;
	outfile << "table and calculates the corresponding y value." << endl;
	outfile << "The x value and y value are then printed to an" << endl;
	outfile << "output file and to the screen." << endl << endl;
	cout << "Cavaughn Browne" << endl;
	cout << "Program 1 - LinearInterpolation.cpp" << endl << endl;
	cout << "This program reads in a number of pairs of x,y" << endl;
	cout << "values (maximum 10) and stores them in a 2" << endl;
	cout << "dimensional array It prints out the said" << endl;
	cout << "input table to screen and output file. It" << endl;
	cout << "then accepts a user input of an x value" << endl;
	cout << "that exists between the x values in the" << endl;
	cout << "table and calculates the corresponding y value." << endl;
	cout << "The x value and y value are then printed to an" << endl;
	cout << "output file and to the screen." << endl << endl;
	
	
}

void printTable(ofstream & outfile, int numPairs, TableType dataValues)
{
	int row = 0;

	outfile << "Input Table" << endl;
	outfile << "x";
	cout << "Input Table" << endl;
	cout << "x";

	for (int col = 0; col < numPairs; col++)
	{
		outfile << setw(8) << dataValues[row][col];
		cout << setw(8) << dataValues[row][col];
	}

	outfile << endl;
	outfile << "y";
	cout << endl;
	cout << "y";

	row = 1;
	for (int col = 0; col < numPairs; col++)
	{
		outfile << setw(8) << dataValues[row][col];
		cout << setw(8) << dataValues[row][col];
	}

	outfile << endl << endl;
	cout << endl << endl;
}

char userDecision()
{
	char decision;

	cout << "Do you want to interpolate another value ? Y or N" << endl;
	cin >> decision;

	
	
	//loop ensures correct user input
	while (!((decision == 'Y') || (decision == 'N') || (decision == 'y') \
		|| (decision == 'n')))
	{
		cout << "Wrong keyboard input. Please type either Y or N." << endl;
		//clears any error flags
		cin.clear(); 
		//clears up to 10000 characters in cin buffer
		cin.ignore(10000, '\n'); 
	    cin >> decision;
	}

	return decision;
}


void getValues(ifstream & infile, int& numPairs, TableType dataValues)
{
	//read number of x,y pairs
	infile >> numPairs;       

	//Nested loop to store data values row by row
	for (int r = 0; r < MAXROWS; r++)  
	{
		for (int c = 0; c < numPairs; c++)
		{
			infile >> dataValues[r][c];
		}
	}

}

double getValidX(TableType dataValues, int numPairs)
{
	double X;

	cout << "Enter a valid x value." << endl;
	cin >> X;

	while (X < dataValues[0][0] || X > dataValues[0][numPairs - 1])
	{
		cout << "Invalid x value. Enter a VALID x value please" << endl;
		//clears any error flags
		cin.clear();  
		//clears up to 10000 characters in cin buffer
		cin.ignore(10000, '\n');  
		cin >> X;

	};

	return X;
}

double interpolateY(double x, TableType dataValues)
{
	int rw = 0, cl = 0;
	double xb, yb, xa, ya, Y;
	while (x >= dataValues[rw][cl])
	{
		if (x == dataValues[rw][cl])
		{
			Y = dataValues[rw + 1][cl];

			return Y;
		}
		else
		{
			xb = dataValues[rw][cl];
			xa = dataValues[rw][cl + 1];
			yb = dataValues[rw + 1][cl];
			ya = dataValues[rw + 1][cl + 1];

			

		}

		cl++;
	}
	//Calculating interpolated y
	Y = yb + ((ya - yb) / (xa - xb)) * (x - xb);

	return Y;
}

void outputResults(ofstream & outfile, double x, double y)
{
	outfile << fixed;
	outfile << setw(2) << "x" << setw(8) << "y" << endl;
	outfile << setprecision(1)<<  x << ", " << setprecision(4) << y << endl;
	cout << fixed;
	cout << setw(2) << "x" << setw(8) << "y" << endl;
	cout << setprecision(1) << x << ", " << setprecision(4) << y << endl;
}