//Cavaughn Browne
//CS 1  Ramona Wuthrich
/*
This program uses 4 functions to reads strings, one at a time, from an 
input file. One function checks to see if the string is in the format 
mm/dd/yyyy. If it is, another function then parses the string to 
separate the month, day and year. Another function checks to see if the
date is valid. A 4th function prints a border at the top and bottom of 
the output file. 
*/

#include <iostream>
#include <fstream>
#include <string>
#include <iomanip>
using namespace std;

ifstream infile;
ofstream outfile;

//Function Prototypes
void prettyPrint(string name, ofstream& thisOutfile);
bool isValidFormat(string theString);
void parseStringToDate(string thisDateString, int& thisMonth, \
	int& thisDay, int& thisYear);
bool isValidDate(int thisMonth, int thisDay, int thisYear);

int main()
{
	string dateString; //String to hold each possible date
	int month, day, year; // int form of month, day, and year
	infile.open("Date_Strings.dat");
	outfile.open("Browne_Cavaughn_dates.txt");

	if (infile) // .dat file is opened
	{
		if (outfile) // output file is opened
		{
			prettyPrint("Cavaughn Browne", outfile); //Print a border
			while (infile >> dateString) // Read a string
			{
				if (isValidFormat(dateString)) //Check for valid format
				{
					//Get month, day, and year in integer form
					parseStringToDate(dateString, month, day, year);
					//Check to see if it's a valid date
					if (isValidDate(month, day, year))
					{
						//Display the valid date in its original format
						outfile << dateString << endl;
					}
					else
						outfile << "INVALID DATE\n"; //Display if date
					//isn't valid

				}
				else outfile << "INVALID FORMAT\n"; //Display if format
				//isn't correct
			}
			//Print a "footer" after all strings have bee read in
			prettyPrint("Cavaughn Browne", outfile);
			outfile.close();
		}
		else
			cout << "Could not open the output file. \n";
		infile.close();
	}
	else
		cout << "Could not open Date_Strings.dat\n";

	system("pause");
	return 0;
}

/*
This function checks to see if the string:
1. is exactly 10 chars long.
2. checks all chars but the 3rd and 6th chars for a digit.
3. chexks the 3rd and 7th chars for a '/'
*/

bool isValidFormat(string theString)
{
	//Logic assumes the string is balid until
	// an invalid condition is found
	bool isValid = true;
	if (theString.length() == 10)
	{
		int x = 0;
		while (x < 10 && isValid == true)
		{
			if (x != 2 && x != 5)
			{
				if (!isdigit(theString.at(x)))
					isValid = false;
			}
			else
			if (theString.at(x) != '/')
				isValid = false;
			x++;
		}
	}
	else
		isValid = false;
	return isValid;
}

/*
This function uses the subtr function to get the month, day, and year 
as separate strings and then use the atoi function to save them as 
integers. month, day, and year are passed bu reference so that multiple
values can be returned.
*/
void parseStringToDate(string theString, int& thisMonth, \
	int& thisDay, int& thisYear)
{
	thisMonth = atoi(theString.substr(0, 2).c_str());
	thisDay = atoi(theString.substr(3, 2).c_str());
	thisYear = atoi(theString.substr(6, 4).c_str());
}

/*
This function uses the parsed data from parseStringToDate
and checks for the validity of the date according to the
Gregorian calendar.
*/
bool isValidDate(int thisMonth, int thisDay, int thisYear)
{
	//Assume the date is valid initially
	//until an invalid condition is found
	bool validDate = true;
	//Assumes the year is not a leap year
	//until it is proven to meet leap year conditions

	bool leapYear = false;
	if (thisYear >= 1582)
	{
		if ((thisYear % 4 == 0 && thisYear % 100 != 0) || \
			thisYear % 400 == 0)
			leapYear = true;

		if (thisYear == 1582)
		{
			if (thisMonth < 10)
				validDate = false;
			else if (thisDay < 15)
				validDate = false;
		}
		else
		{


			if (thisMonth >= 1 && thisMonth <= 12)
			{
				if (thisMonth == 4 || thisMonth == 6 || thisMonth == 9 || \
					thisMonth == 11)
				{
					if (!(thisDay >= 1 && thisDay <= 30))
						validDate = false;

				}
				else if (thisMonth == 2)
				{
					if (leapYear == true)
					{
						if (!(thisDay >= 1 && thisDay <= 29))
							validDate = false;

					}
					else
					{
						if (!(thisDay >= 1 && thisDay <= 28))
							validDate = false;
					}

				}
				else
				{
					if (!(thisDay >= 1 && thisDay <= 31))
						validDate = false;
				}
			}
			else
				validDate = false;
		}
	}
	else
		validDate = false;

	return validDate;
	
	
}

/*
This function prints out a header/footer when called.
*/
void prettyPrint(string name, ofstream& thisOutfile)
{
	for (int r = 0; r < 2; r++)
	{
		for (int i = 0; i < 10; i++)
			outfile << "** " ;
		outfile << endl;
	}
	
	for (int j = 0; j < 3; j++)
	{
		if (j == 1)
			outfile << "**" << setw(20) << name << setw(7) << "**" \
			<< endl;
		else
		outfile << "**" << setw(27) << "**" << endl;
	}

	for (int r = 0; r < 2; r++)
	{
		for (int i = 0; i < 10; i++)
			outfile << "** ";
		outfile << endl;
	}


}