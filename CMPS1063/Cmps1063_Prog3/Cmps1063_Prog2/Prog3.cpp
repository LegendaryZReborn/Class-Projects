//Cavaughn Browne
//CMPS - 1063 Program 2 Part A
//Professor: Catherine Stringfellow
//Purpose - This program reads in the cooordinates of a number of points
//from an input file and calculates the distance between successive points. 
//It then outputs the points and the distance under appropriate headings and
//the total distance overall.

#include "CImg.h"
using namespace cimg_library;

#include <iostream>
#include <fstream>
#include "Point.h"
#include "PointList.h"
#include <cmath>
#include <string>
#include <iomanip>
#include <cstdlib>

using namespace std;

//Constants
const int MAXX = 600;                            //width of the image
const int MAXY = 600;                            //height of the image
const unsigned char white[] = { 255, 255, 255 };  //pen color

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

//Purpose: Prints point is not found error
//Requires: none
//Returns: none
void pointNotFound();

//Purpose: Gets a point from the input file and stores it in points
//Requires: infile, object points passed by reference
//Returns: points
void getPoint(ifstream& infile, PointList& points);
  
//Purpose: Find the distance between two points
//Requires: object points
//Returns: the distance
double findDistance(PointList points, int i, int current_number);

//Purpose: Askes user if they want to search for a point to remove
//Requires: none
//Returns: char choice
char searchOrNot();

//Purpose: Askes user for a point to search for and searches the list for it
//Requires: none
//Returns: index of point
int searchForPoint(PointList points);

//Purpose: To print Table heading
//Requires: outfile stream
//Returns: none
void printHeading(ofstream& outfile);

//Purpose: Prints points and the distance
//Requires: distance and objects firstPoint and secondPoint 
//Returns: none
void printResults(double distance, PointList points,\
	int i, int current_number, ofstream& outfile);

// Purpose: Prints the total distance
//Requires: total_distace and outfile
//Returns: none
void printTotalDistance(ofstream& outfile, double total_distance);

//Purpose: Calculates and prints the results using other functions
//Requires: points and outfile 
//Returns: none
void calculateAndPrint(PointList points, ofstream& outfile);

//Purpose:Initializes the graphics system and then draws desired image.
//Requires: points
//Returns: none
void drawPoints(PointList& points);

int main()
{
	ifstream infile;
	ofstream outfile;
	PointList points;
	char choice;
	int current_number, index;
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

		//calculates and prints results
		calculateAndPrint(points, outfile);
		//draws unsorted points
		drawPoints(points);

		//sorts point list using a binary sort 
		points.sortPointList();
		
		//calculates and prints results
		calculateAndPrint(points, outfile);

		//draws sorted Points
		drawPoints(points);

		//The users choice whether they want to search for a point to remove or not
		choice = searchOrNot();

		if (choice == 'Y')
		{
			index = searchForPoint(points);

			//index equalling -1 signals that the point is 
			//not in the list
			if (index == -1)
			{
				//Error prints if point is not in the list
				pointNotFound();
			}
			else
			{
				points.removePoint(index);

				//calculates and prints results
				calculateAndPrint(points, outfile);
				//Draws points after removal of a point
				drawPoints(points);
			}
		}
	}
	else
	{
		//Prints error message if file was not  successfully opened
		errorFile();
	}

	//Prints an ending message to the screen
	endM();

	infile.close();
	outfile.close();
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

void pointNotFound()
{
	cout << "Point was not found!" << endl;
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

char searchOrNot()
{
	char choice;
	do
	{
		cin.clear(); //clears error flags
		cin.ignore(10000, '\n');  //ignores up to 10000 characters
		cout << "Do you want to search for a point to remove? Y or N: ";
		cin >> choice;
		choice = toupper(choice);
	} while (choice != 'Y' && choice != 'N');

	return choice;
}

int searchForPoint(PointList points)
{
	double x, y;
	int index;

	cout << "Enter x and y coordinates of a point to search for and remove: ";
	cin >> x >> y;

	index = points.searchPointList(x, y);
	return index;
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
	outfile << "Total distance is " << total_distance << endl << endl;
}

void calculateAndPrint(PointList points, ofstream& outfile)
{
	int current_number;
	double distance, total_distance = 0;

	printHeading(outfile);
	current_number = points.provideCurrentNum();
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

void drawPoints(PointList& points)
{
	//width, height, depth, number of channels
	CImg<unsigned char> theImage(MAXX, MAXY, 1, 3);
	CImgDisplay main_disp(theImage, "Connect the Dots");

	//Write 0 to every pixel (i.e. turn it black), then display the image.
	theImage.fill(0);
	theImage.display(main_disp);

	Point p1, p2;
	double x, y;
	int current_num = points.provideCurrentNum();

	//draw lines between each successive point
	for (int i = 0; i < current_num - 1; i++)
	{
		points.providePoint(i, x, y);
		p1.setX(x);
		p1.setY(y);

		points.providePoint(i + 1, x, y);
		p2.setX(x);
		p2.setY(y);

		//draw line
		theImage.draw_line(p1.provideX() * 2, p1.provideY() * 2,
			p2.provideX() * 2, p2.provideY() * 2, white);

	}

	//Connect the last and first point
	points.providePoint(current_num - 1, x, y);
	p1.setX(x);
	p1.setY(y);

	points.providePoint(0, x, y);
	p2.setX(x);
	p2.setY(y);

	//draw line
	theImage.draw_line(p1.provideX() * 2, p1.provideY() * 2,
		p2.provideX() * 2, p2.provideY() * 2, white);

	//give instructions to user to close the display, then wait for them to do so
	theImage.draw_text(0, 500, "Click the Close X Button to EXIT", white);
	theImage.display(main_disp);
	system("pause");
	main_disp.close();

}