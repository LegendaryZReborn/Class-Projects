//Cavaughn Browne
//CS-1 Ramona Wuthrich
//Program 5 - Premier Checking
//This program will read in data from an input file, 
//determine if they qualified that month, and 
//display certain results in an output file.

#include <iostream>
#include <string>
#include <fstream>
#include <iomanip>
#include <cstdlib>

using namespace std;

int main()
{
	ifstream readFile;
	ofstream writeFile;

	readFile.open("bank.dat");
	writeFile.open("Browne_Cavaughn_prog5.txt");
	if (!readFile)
	{
		writeFile << "Error: could not open input file" << endl;
		system("pause");
		exit(1);
	}

	if (!writeFile)
	{
		writeFile << "Error: could not open output file" << endl;
		system("pause");
		exit(1);
	}
		//constant variables
		const int NUM_CUST = 20;
		const int NUM_TRANS = 30;

		//Transaction struct
		struct transaction {
			char trans_type;
			double trans_amount;
		};

		//Struct holding customer information
		struct customer {

			string name;
			int acc_num;
			double opening_bal;
			double daily_balance;
			double total_dailyb = 0;
			double ending_bal;
			transaction cus_trans[NUM_TRANS];
			bool any_interest = false;
			bool sufficient_db = true;
			bool enuf_dcp = false;
			int count_dcp = 0;
			bool any_dd = false;
			bool enuf_obp = false;
			int count_obp = 0;
			double interest = 0;
		};

		//Array of each customer record
		customer cust_records[NUM_CUST];

		//Nest loop reads each customer's information including
		//all transactions each customer has made for the month.
		for (int c = 0; c < NUM_CUST; c++)
		{
				readFile >> cust_records[c].name;
				readFile >> cust_records[c].acc_num;
				readFile >> cust_records[c].opening_bal;
			for (int t = 0; t < NUM_TRANS; t++)
			{
				readFile >> cust_records[c].cus_trans[t].trans_type;
				readFile >> cust_records[c].cus_trans[t].trans_amount;
			}
		}

		//Nested loop first calculates daily balance for each customer, 
		//starting from the opening balance, and taking to account each
		//transaction made. Also, the requirements for interest are 
		//checked. The closing balance and interests, if any, is
		//calculated for each customer and results are written to
		//a file.
		

		for (int c2 = 0; c2 < NUM_CUST; c2++)
		{
			cust_records[c2].daily_balance = \
				cust_records[c2].opening_bal;

			for (int t2 = 0; t2 < NUM_TRANS; t2++)
			{
				switch (cust_records[c2].cus_trans[t2].trans_type)
				{
				case 'A':
					cust_records[c2].any_dd = true;
				case 'B': 
				case 'M': 
					    cust_records[c2].daily_balance += \
							cust_records[c2].cus_trans[t2].trans_amount;

						cust_records[c2].total_dailyb += \
							cust_records[c2].daily_balance;

						if (cust_records[c2].daily_balance < 500)
							cust_records[c2].sufficient_db = false;
					break;
				
				case 'D': 
					cust_records[c2].count_dcp++;
					cust_records[c2].daily_balance -= \
						cust_records[c2].cus_trans[t2].trans_amount;

					cust_records[c2].total_dailyb += \
						cust_records[c2].daily_balance;

					if (cust_records[c2].daily_balance < 500)
						cust_records[c2].sufficient_db = false;
					break;

				case 'O': 
					cust_records[c2].count_obp++;
				case 'K':
				case 'T':
					cust_records[c2].daily_balance -= \
						cust_records[c2].cus_trans[t2].trans_amount;

					cust_records[c2].total_dailyb += \
						cust_records[c2].daily_balance;

					if (cust_records[c2].daily_balance < 500)
						cust_records[c2].sufficient_db = false;
					break;
			

				}

			}

			if (cust_records[c2].count_dcp >= 12)
				cust_records[c2].enuf_dcp = true;

			if (cust_records[c2].count_obp >= 2)
				cust_records[c2].enuf_obp = true;

			if (cust_records[c2].enuf_dcp == true && \
				cust_records[c2].enuf_obp == true && \
				cust_records[c2].sufficient_db == true && \
				cust_records[c2].any_dd == true)

				cust_records[c2].any_interest = true;

			writeFile << cust_records[c2].name << endl;
			writeFile << cust_records[c2].acc_num << endl;
			writeFile << fixed << setprecision(2);

			if (cust_records[c2].any_interest == true)
			{

				cust_records[c2].interest = \
					(cust_records[c2].total_dailyb / NUM_TRANS) * (0.022 /12);

				cust_records[c2].ending_bal = \
					cust_records[c2].daily_balance + cust_records[c2].interest;

				writeFile << cust_records[c2].name << \
					" qualified for premium checking." << endl;

				writeFile << "Interest: $" << \
					cust_records[c2].interest << endl;

				writeFile << "Closing Balance: $" << \
					cust_records[c2].ending_bal << endl << endl;

			}

			else

			{
				cust_records[c2].ending_bal = \
					cust_records[c2].daily_balance;

				writeFile << cust_records[c2].name << " " \
					<< "did not qualify for premium checking." << endl;

				writeFile << "Interest: $" \
					<< cust_records[c2].interest << endl;

				writeFile << "Closing Balance: $" \
					<< cust_records[c2].ending_bal << endl << endl;

			}
				
		}

	return 0;

}