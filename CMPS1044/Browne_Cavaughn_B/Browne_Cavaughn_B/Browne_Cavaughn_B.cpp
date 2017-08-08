// Cavaughn, Browne
//October 09, 2014
//This program reads input: name, package letter and minutes
//used by a customer from a file. After, calculates the total 
//bill according to the package. The Customer's name and the 
//total bill amount is then printed to the output file.

#include <iostream>
#include <iomanip>
#include <fstream>
#include <string>

using namespace std;

int main() //Main Program
{
	//Declarations
	string name;
	char package_l;
	int mins, num_lines, add_mins, i = 0;
	double total_bill;
	ifstream infile;
	ofstream outfile;

	infile.open("phone.dat");  //Open input file

	//Check if file has opened
	if (infile)
	{
		cout << "Input file was successfully opened!" << endl; 
	}
	else
	{
		cout << "Failed to open input file!" << endl;
	}

	outfile.open("Browne_Cavaughn_out.txt"); //Open output file

	//Check if file has opened
	if (outfile)
	{
		cout << "Output file was successfully opened!" << endl;
	}
	else
	{
		cout << "Failed to open output file!" << endl << endl;
	}

	outfile << "Cavaughn Browne" << endl << endl;

	infile >> num_lines;  //Read number of lines from file

	//Start while loop as long as i is less than num_lines
	while (i < num_lines)
	{
		infile >> name >> package_l >> mins; //read input from input file

		//Decisions according to options
		if (package_l == 'A')
		{
			if (mins > 300)
			{
				add_mins = mins - 300;
				total_bill = 9.95 + (add_mins *0.08);
			}
			else
			{
				total_bill = 9.95;
			}
		}
		else if (package_l == 'B')
		{
			if (mins > 600)
			{
				add_mins = mins - 600;
				total_bill = 14.95 + (add_mins *0.06);
			}
			else
			{
				total_bill = 14.95;
			}
		}
		else if (package_l == 'C')
		{
			total_bill = 19.95;
		}
		else
		{
			cout << "Invalid input" << endl;
		}
		
		//Output bill information for the month
		outfile << fixed << setprecision(2);
		outfile << name << "'s bill for this month is $" << total_bill;
		outfile << "." << endl;

		i++; //Increment counter
	}

	system("pause"); //Pauses program

	//Close files
	infile.close();
	outfile.close();
	return 0;
}