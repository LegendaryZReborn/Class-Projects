//Cavaughn Browne
//CMPS - 1063 Program 2 Part A
//Professor: Catherine Stringfellow
//Purpose - This program reads in the cooordinates of two points
//from an input file and calculates the distance between the two points. 
//It then outputs the two points and the distance under appropriate headings.

#include <iostream>
#include <fstream>
#include "Point.h"
#include "PointList.h"
#include <cmath>
#include <string>
#include <iomanip>

using namespace std;

//Purpose: Prints welcome message to the screen
//Requires: none
//Returns: none
void welcomeM();

//Purpose: Prints end message to the screen
//Requires: none
//Returns: none
void endM();

//Purpose: Opens input file and output file
//Requires: none
//Returns: none
void openFile(ifstream& infile, ofstream& outfile);

//Purpose: Prints error message
//Requires: none
//Returns: none
void errorFile();

//Purpose: Gets a point from the input file and stores it in points
//Requires: infile, object points passed by reference
//Returns: points
void getPoint(ifstream& infile, PointList& points);
  
//Purpose: Find the distance between two points
//Requires: object points
//Returns: the distance
double findDistance(PointList points, int i, int current_number);

//Purpose: To print Table heading
//Requires: outfile stream
//Returns: none
void printHeading(ofstream& outfile);

//Purpose: Prints points and the distance
//Requires: distance and objects firstPoint and secondPoint 
//Returns: none
void printResults(double distance, PointList points,\
	int i, int current_number, ofstream& outfile);

void printTotalDistance(ofstream& outfile, double total_distance);


int main()
{
	ifstream infile;
	ofstream outfile;
	PointList points;
	int current_number;
	double distance, total_distance = 0;
	
	//Prints a welcome message to the screen
	welcomeM();

	openFile(infile, outfile);

	if (infile)
	{
		//gets a point from the input file and stores it in points
		getPoint(infile, points);

		while(!infile.eof())
		{
			getPoint(infile, points);
		}

		current_number = points.provideCurrentNum();
		printHeading(outfile);

		for (int i = 0; i < current_number; i++)
		{	
			//calculates the distance between the two points
			distance = findDistance(points, i, current_number);
			total_distance += distance;
			//prints the two points and distance under appropriate headings
			printResults(distance, points, i, current_number, outfile);
		}

		printTotalDistance(outfile, total_distance);
	}
	else
	{
		//Prints error message if file was not  successfully opened
		errorFile();
	}

	//Prints an ending message to the screen
	endM();

	system("pause");
	return 0;
}

void welcomeM()
{
	cout << "Welcome to Cavaughn's Many Points Distance Program!";
	cout << endl << endl;
}

void endM()
{
	cout << "Thank you for using the Many Points Distance Program. Bye!";
	cout << endl;
}

void openFile(ifstream& infile, ofstream& outfile)
{
	string fileName;
	string outputfile;
	cout << "Enter the name of the input file: ";
	cin >> fileName;
	
	cout << "Enter the name of the output file: ";
	cin >> outputfile;

	//Opens input file
	infile.open(fileName);
	//Opens output file
	outfile.open(outputfile);
}

void errorFile()
{
	cout << "Error! Input file was not opened." << endl;
}

void getPoint(ifstream& infile, PointList& points)
{
	double newX, newY;

	//Reads in a and stores it in point sobject
	infile >> newX >> newY;
	points.addToList(newX, newY);
}

double findDistance(PointList points, int i, int current_number)
{
	double distance;
	double X1, Y1, X2, Y2;

	//gets coordinates of point 1 from the point list
	points.providePoint(i, X1, Y1);

	//Loop discerns if it is the last point on the list 
	//and uses the last and first point if it is the last point
	if (i < (current_number - 1))
	{
		i++;
		//gets coordinates of point 2 from the point list
		points.providePoint(i, X2, Y2);
	}
	else
	{
		i = 0;
		//gets coordinates of point 2 from the point list
		points.providePoint(i, X2, Y2);
	}

	//Calculate distance
	distance = sqrt(((pow((X1 - X2), 2)) + (pow((Y1 - Y2), 2))));

	return distance;
}

void printHeading(ofstream& outfile)
{
	outfile << "Cavaughn Browne" << endl;
	outfile << "Many Points Distance Progam" << endl << endl;
	outfile << setw(10) << "Point" << setw(16) << "Point" << setw(20) << "Distance" << endl;
}

void printResults(double distance, PointList points, \
	int i, int current_number, ofstream& outfile)
{
	double X1, Y1, X2, Y2;
	// gets coordinates of point 1 from the point list
	points.providePoint(i, X1, Y1);

	//Loop discerns if it is the last point on the list is reached
	//and uses the last and first point if it is the last point
	if (i != (current_number - 1))
	{
		i++;
		//gets coordinates of point 2 from the point list
		points.providePoint(i, X2, Y2);
	}
	else
	{
		i = 0;
		//gets coordinates of point 2 from the point list 
		points.providePoint(i, X2, Y2);

	}
	
	outfile << fixed << setprecision(0);
	outfile << setw(10) << X1 << "," << Y1 << setw(16) << X2 << "," << Y2;
	outfile <<  setprecision(2) << setw(20) << distance << endl \
		<< endl;

}

void printTotalDistance(ofstream& outfile, double total_distance)
{
	outfile << "Total distance is " << total_distance << endl;
}