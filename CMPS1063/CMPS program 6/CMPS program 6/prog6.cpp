//Cavaughn Browne
//CMPS program 6 - Nested Shapes
//Catherine Stringfellow
//Purpose: This program reads in tokens, and information about shapes from a 
//file and according to the token, draws shapes nested or unnested.

#include <iostream>
#include <fstream>
#include <string>
#include "StackType.h"
#include "GRPX245.H"

using namespace std;


//Purpose: Prints a welcome message to the screen
//Requires: none
//Returns: none
void welcomeM();

//Purpose: Prints a ending message to the screen
//Requires: none
//Returns: none
void endM();

//Purpose: Opens input file
//Requires: infile
//Returns: none
void openFile(ifstream& infile);

//Purpose: Print an error to the screen
//Requires: none
//Returns: none
void errorFile();

//Purpose: Print an error to the screen
//Requires: none
//Returns: none
void errorShape();

//Purpose: Print an error to the screen for unexpected input
//Requires: none
//Returns: none
void errorToken();

//Purpose: Read properties and directions from the input file
//Requires: infile, x, y, width, height and shape all passed by reference
//Returns: -1 if direction is ')', 0 if direction is ']',1 if the direction '('
//, 2 if none of those and x, y, width, height and shape by reference
void getTokens(ifstream& infile, Coord& shapeCoord, int& width, int& height,\
	string& shape, int& signal);


int main()
{
	// Initializes the graphics system and and then draw desired image.                                                   
	// width, height, depth, number of channels
	CImg<unsigned char> theImage(MAXX, MAXY, 1, 3);
	CImgDisplay main_disp(theImage, "Nested Shapes");

	// Write 255  to every pixel (ie turn it white), then display the image.
	theImage.fill(255);
	theImage.display(main_disp);


	ifstream infile;
	int signal, width, height;
	Coord shapeCoord, refCoord;
	string shape;
	StackType coordStack;

	
	// initialize refCoord to 10, 10
	refCoord.x = 10;
	refCoord.y = 10;

	//Put the refCoord on the stack initial refCoord onto the stack
	if (!coordStack.IsFull())
	{
		coordStack.Push(refCoord);
	}

	welcomeM();

	openFile(infile);

	if (infile)
	{

        //Gets tokens thens sends back a signal indicating course of action
		getTokens(infile, shapeCoord, width, height, shape, signal);
		while (!infile.eof())
		{
			switch (signal)
			{
			case 1:

				//Pop the refCoord off the stack before
				if (!coordStack.IsEmpty())
				{
					coordStack.Pop(refCoord);
				}

				//Put the refCoord back onto the stack before getting
				//the refCoord for the new shape, if the stack is not full
				if (!coordStack.IsFull())
				{
					coordStack.Push(refCoord);
				}

				
				//calculate refCoord to draw the shape
				refCoord.x = refCoord.x + shapeCoord.x;
				refCoord.y = refCoord.y + shapeCoord.y;
				//Draw shape in relation to current base shape's refCoord;
				if (shape == "oval")
				{
					//Draws an Oval
					InvertOval(refCoord.x, refCoord.y, width, height, theImage);
				}
				else if (shape == "rectangle")
				{
					//Draws a Rectangles
					InvertRect(refCoord.x, refCoord.y, width, height, theImage);
				}
				else
				{
					errorShape();
					exit(1);
				}
				
				// show the revised drawing
				theImage.display(main_disp);

				if (!coordStack.IsFull())
				{
					coordStack.Push(refCoord);
				}


				break;

			case -1:
				//Make previous drawn figure the current base figure
				coordStack.Pop(refCoord);
				break;

			case 0:
				//terminate definition of the whole nested figure
				coordStack.MakeEmpty();

				// re-initialize refCoord to 10, 10
				refCoord.x = 10;
				refCoord.y = 10;
				break;

			default:
				//Prints an error for unexpected input
				errorToken();
				exit(1);
				break;
			}

            //Gets tokens thens sends back a signal indicating course of action
				getTokens(infile, shapeCoord, width, height, shape, signal);

		}
		
	}
	else
	{
		errorFile();
	}


	endM();
	infile.close();

	//give instructions to user to close the display, then wait for them to do so
	theImage.draw_text(0, MAXY - 15, "Click the Close Button to EXIT", black);
	theImage.display(main_disp);
	system("pause");
	main_disp.close();
	return 0;
}



void welcomeM()
{
	cout << "Welcome to Cavaughn's Wacky Nested Shapes Program where" << endl;
	cout << "wacky tokens become shapes!" << endl << endl;
}

void endM()
{
	cout << "Thanks for using Cavaughn's Wacky Nested Shapes Program." << endl;
	cout << "Remember kids. Stay Gold!!" << endl;
}

void openFile(ifstream& infile)
{
	string iName;

	cout << "Enter the name of the input file: ";
	cin >> iName;
	 
	cout << endl;
	infile.open(iName);
}

void errorFile()
{
	cout << "Error! Input File was not opened." << endl;
}


void errorShape()
{
	cout << "Incorrect shape input (Note: Must be all lower case letters)";
	cout << endl;
}

void errorToken()
{
	cout << "Error! Unexpected token input." << endl;
}

void getTokens(ifstream& infile, Coord& shapeCoord, int& width, int& height,\
	string& shape, int& signal)
{
	char token;

	infile >> token;
	switch (token)
	{
	case '(':	
		infile >> shapeCoord.x >> shapeCoord.y >> width >> height >> shape;
		signal = 1;
		break;

	case ')':
		signal = -1;
		break;
	
	case ']':
		signal = 0;
		break;

	default: 
		signal = 2;
		break;

	}
}


