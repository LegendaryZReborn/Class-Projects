//Cavaughn Browne
//CS-1
//This program reads from a file 12 numbers on each line and 
//for each line calculates the number of even numbers, the 
//number of positive numbers, the sum of odd numbers, and
//whether there is at least one zero.

#include <iostream>
#include <fstream>
#include <iomanip>
#include <string>

using namespace std;

int main()
{
	//Declarations
	int num, numlines, numeven = 0, numpos = 0, oddsum = 0;
	int num1, num2, num3, num4, num5, num6, num7, num8, num9, num10, num11;
	string zeroes = "No";
	ifstream infile;
	ofstream outfile;
	infile.open("numbers.dat");   //Opens input file
	outfile.open("Browne_Cavaughn_B.txt");  //Opens output file

	//Checks to see if the files are accessible 
	if (infile && outfile)
		cout << "File has successfully opened!" << endl;
	else
		cout << "Something has gone wrong!" << endl;

	outfile << "Cavaughn Browne" << endl << endl;

	infile >> numlines;   //Reads the number of lines from file

	outfile << "Lines" << setw(15) << "# of Evens" << setw(18);
	outfile << "# of Positives" << setw(15) << "Sum of Odds" << setw(15);
	outfile << "Any zeroes" << endl;

	//The first loop in the nested loop controls the line number and the
	//second loop the number of even numbers, the number of positive 
	//numbers, the sum of odd numbers, and whether there is at least one 
	//zero for every line.

	for (int row = 1; row <= numlines; row++) 
	{
		for (int col = 0; col < 12; col++) 
		{
			infile >> num;
			if (num % 2 == 0)
			{
				numeven++;
			}
			if (num > 0)
			{
				numpos++;
			}
			if (num % 2 == 1 || num % 2 == -1)
			{
				oddsum += num;
			}
			if (num == 0)
			{
				zeroes = "Yes";
			}
		}

		//Output results
		outfile << row << setw(19) << numeven << setw(18);
		outfile << numpos << setw(14) << oddsum << setw(16);
		outfile << zeroes << endl;

		numeven = 0;
		numpos = 0;
		oddsum = 0;
		zeroes = "No";
	}

	system("pause");   //pause program
	return 0;

}