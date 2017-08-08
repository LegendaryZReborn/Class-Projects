//Cavaughn Browne
#include <iostream>
#include "BalancedBST.h"
#include <fstream>
#include "BST.h"


using namespace std;

int main()
{
	BalancedBST tree;
	BST tree2;
	int height;
	double averageH;
	double averageD;
	long long int num;
	fstream infile;
	infile.open("out.txt");

	////srand(7);
	for (int i = 1; i < 6; i++)
	{
	//	//tree.insertNode(rand() % INT_MAX);
		tree.insertNode(i);
		tree2.insertNode(i);
	}

	//infile >> num;

	/*while (infile)
	{
		tree.insertNode(num);
		tree2.insertNode(num);
		infile >> num;
	}*/
	cout << "Balanced";
	cout << endl;

	height = tree.calculateTreeHeight();
	cout <<  "Height: " << height;
	cout << endl;

	averageH = tree.calculateAverageNH();
	cout << "Average Height: " << averageH;
	cout << endl;

	averageD = tree.calculateAverageND();
	cout << "Average Depth: " << averageD;
	cout << endl;


	cout << "UnBalanced";
	cout << endl;

	height = tree2.calculateTreeHeight();
	cout << "Height: " << height;
	cout << endl;

	averageH = tree2.calculateAverageNH();
	cout << "Average Height: " << averageH;
	cout << endl;

	averageD = tree2.calculateAverageND();
	cout << "Average Depth: " << averageD;
	cout << endl;
	return 0;
}