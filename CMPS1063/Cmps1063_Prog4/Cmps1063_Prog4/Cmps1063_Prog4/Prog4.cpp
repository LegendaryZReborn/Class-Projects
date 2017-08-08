//Cavaughn Browne
//Program 4 
//Use recursive and iterative functions to calculate the sum for nth number
//of terms

#include <iostream>
#include <cmath>
#include <iomanip>

using namespace std;

//Purpose: Prints a welcome message 
//Requires: none
//Returns: none
void welcomeM();

//Purpose: Prints an end message
//Requires: none
//Returns: none
void endM();

//Purpose: Find the sum of n terms of the powers of 2 recursively
//Requires: int n, n > 0
//Returns: the sum 
int recursiveSummation(int n);

//Purpose: Find the sum of n terms of the powers of 2 iteratively
//Requires: int n, n > 0
//Returns:	the sum
int iterativeSummation(int n);

//Purpose:  Find the sum of n terms of the powers of 2 recursively
//Requires: int n, n > 0
//Returns: the sum
int thirdFunc(int n);

//Purpose: Prints the row of results for the nth term
//Requires: int n, result1, result2, result2  where n > 0
//Returns: none
void printRow(int n, int result1, int result2, int result3);

//Purpose: Print the headings for the table
//Requires: none
//Returns: none
void printHeading();



int main()
{
	int result1, result2, result3;

	welcomeM();
	//Prints table headingings
	printHeading();

	//loop for finding and printing sum results for n, 1 - 15
	for (int i = 1; i <= 15; i++)
	{
		result1 = recursiveSummation(i);
		result2 = iterativeSummation(i);
		result3 = thirdFunc(i - 1);
		printRow(i, result1, result2, result3);

	}

	endM();

	system("pause");
	return 0;
}


int recursiveSummation(int n)
{
	int i = n - 1;
	if (i == 0)			//base case
		return 1;

	else                //recursive
	{ 
		return pow(2, n - 1) + recursiveSummation(n - 1);
	}
}

int iterativeSummation(int n)
{
	int result = 0;
	for (int i = 0; i < n; i++)
	{
		result += pow(2, i);
	}

	return result;
}

int thirdFunc(int n)
{
	if (n == 0)			//base case
		return 1;

	else               //recursive
		return 2 * thirdFunc(n - 1) + 1;
}

void printRow(int n, int result1, int result2, int result3)
{
	cout << setw(4) << right << n << setw(10) << result1 << setw(12) << result2 << setw(10) << result3 << endl;
}

void printHeading()
{
	cout << setw(4) << right << "n" << setw(10) << "f(n) rec" << setw(12) << "f(n) loop" << setw(10) << "g(n-1)" << endl;
	cout << "  -----------------------------------" << endl;
}

void welcomeM()
{
	cout << "Cavaughn Browne" << endl;
	cout << "Program 4" << endl << endl;
	cout << "Here is Cavaughn Browne's program that does the same thing in ";
	cout << "three different ways (tediousness)" << endl << endl;
}

void endM()
{
	cout << endl;
	cout << "This is the end beautiful friends. Stay Gold! *Salutes*" << endl;
}