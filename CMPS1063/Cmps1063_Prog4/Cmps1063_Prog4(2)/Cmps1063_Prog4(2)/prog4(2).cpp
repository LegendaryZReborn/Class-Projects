//Cavaughn Browne
//Program 4 (2)
//This program prints MANY numbers, with commas inserted properly using a recursive function. 

#include <iostream>
#include <fstream>
#include <cstdio>
#include <string>

using namespace  std;

//Purpose: Prints a welcome message 
//Requires: none
//Returns: none
void welcomeM();

//Purpose: Prints an end message
//Requires: none
//Returns: none
void endM();

//Purpose: Opens output file
//Requires: none
//Returns: none
void openFile(ofstream& outfile);

//Purpose: Reads in many numbers from the user
//Requires: none
//Returns: the numbers from the user
long readNumber();

//Purpose: Prints the numbers entered by the user formatted with commas
//Requires: long number, and int count
//Returns: none

void printNumber(long number, int count, ofstream& out);

int main()
{
	int count = 0;
	long number;
	ofstream out;

	welcomeM();
	openFile(out);
	
	//get numbers from the user
	number = readNumber();

	//if the user entered -1 the program ends
	while (number != -1)
	{
		printNumber(number, count, out);
		number = readNumber();
	}
	

	endM();
	out.close();
	system("pause");
	return 0;
}

void welcomeM()
{
	cout << "Cavaughn Browne" << endl;
	cout << "Program 4" << endl << endl;
	cout << "Here is Cavaughn Browne's program that prints your long"<< endl;
	cout << "numbers formatted with commas" << endl << endl;
}

void endM()
{
	cout << endl;
	cout << "This is the end beautiful friends. Stay Gold! *Salutes*" << endl;
}


void openFile(ofstream& outfile)
{
	string outputfile;

	cout << "Enter the name of the output file: ";
	cin >> outputfile;

	//Opens output file
	outfile.open(outputfile);
}

long readNumber()
{
	long num;

	cout << "Enter some numbers. Enter -1 to stop: ";
	cin >> num;

	return num;
}


void printNumber(long number, int count,ofstream& out)
{
	if (number != 0)
	{
		//increment level of recursion
		count++;
		//print all but the last digit with commas
		printNumber(number / 10, count, out);
		
		
		cout << (number % 10);
		out << (number % 10);

		//determine if a coma should be printed based on level,
		//should not print a comma after last digit
		if (((count + 2) % 3) == 0 && count != 1)
		{
			cout << ',';
			out << ',';
		}
		
		//decrement level of recursion
		count--;
		if (count == 0)
		{
			cout << endl;
			out << endl;
		}
	}

}