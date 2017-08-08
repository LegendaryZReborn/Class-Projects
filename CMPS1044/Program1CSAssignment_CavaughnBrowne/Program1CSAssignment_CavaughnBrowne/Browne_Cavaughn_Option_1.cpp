//Cavaughn, Browne

//Course - CS 1044 Ramona Wuthrich

//Purpose - This program asks the user to enter a value of yards. The 
//program then calculates the equivalent amount in feet, inches, miles,
//and meters. The program then outputs the results. These tasks are 
//repeated 4 more times.

#include <iostream>

using namespace std;

int main(){

	//Declaration of Variables
	double yards, feet, inches, miles, meters;
	int counter;

	//Header Information
	cout << "Brought to you by Cavaughn Browne" << endl;
	cout << "Course - CS 1044 Ramona Wuthrich" << endl;
	cout << "Purpose - This program asks the user to enter a " << endl;
	cout << "value of yards. The program then calculates the " << endl;
	cout << "equivalent amount in feet, inches, miles, and " << endl;
	cout << "meters. The program then outputs the results. " << endl;
	cout << "These tasks are repeated 4 more times." << endl << endl; 

	for (counter = 0; counter < 5; counter++){   //Begin Loop

		 //Prompt user for input
		cout << "Enter the amount of yard(s) that you want to " << endl;  
		cout <<"convert then press enter" << endl;
		cin >> yards;   //stores input in variable yards

	//Calcuation of yards to feet, inches, miles and meters
		feet = yards * 3;
		inches = yards * 36;
		miles = yards * 0.000568182;
		meters = yards * 0.9144;
		
	//Output the converted values
		cout << " Inches = " << inches << endl;
		cout << " Feet = " << feet << endl;
		cout << " Miles = " << miles << endl;
		cout << " Meters  = " << meters << endl;
		cout << endl;

	//Loop ends

	}
	
	cout << "Thank You for testing my program ~ Cavaughn Browne" << endl;

	system("pause");  // Pauses the program
	return 0;

}