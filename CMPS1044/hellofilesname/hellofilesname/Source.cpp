//nnabuenyi victor
//cs-1 ramona wuthrich
//lab2-input output files
//september 12,2014
/*the program gets a birth date and two numbers from the input.txt file.
it finds the sum and the product of two numbers, output header information,
a name, birth date, the two values, the sum and the product of the two values.

*/


#include <iostream>
#include <fstream>
using namespace std;

int main()
{
	int birth_Date;
	float A, B, Sum, Product;
	ifstream infile;
	ofstream outfile;

	infile.open("input.txt");
	outfile.open("output.txt");
	infile >> birth_Date;

	infile >> A >> B;
	Sum = A + B;
	Product = A * B;

	outfile << "nnabuenyi victor " << endl;
	outfile << "cs-1 ramona wuthrich" << endl;
	outfile << "lab2-input output files" << endl;
	outfile << "september 12, 2014" << endl;
	outfile << "the program gets a birth date and two numbers from the input.txt file" << endl;
	outfile << "it finds the sum and the product of two numbers, output header information," << endl;
	outfile << "a name, birth date, the two values, the sum and the product of the two values." << endl;
	outfile << endl;
	
	outfile << "Nnabuenyi, Victor\n";

	outfile << birth_Date;
	outfile << " A and B have the value " << A << " " << B << endl;
	outfile << " the sum is " << Sum << endl;
	outfile << " the product is " << Product << endl;


	infile.close();
	outfile.close();
	return 0;
}