// Lexicographic permutations.cpp : Defines the entry point for the console application.
//Cavaughn Browne

#include <iostream>
#include <string>

using namespace std;

void lexiPermut(string p);
void swap(string &input, int a, int b);


int main(int argc, char argv[])
{
	string string1;
	string string2;
	cout << "Enter a string to be permutated: " << endl;
	cin >> string1;

	string2 = ' ' + string1;

	lexiPermut(string2);
	return 0;
}

void lexiPermut(string p)
{
	int k, n, j, r, s, size = p.length();

	//generate permutations
	do
	{
		//output
		for (int i = 1; i < size; i++)
		{
			cout << p[i];
		}
		cout << endl;

		//find the index k of the leftmost entry to be changed
		n = 0;
		while (n < (size-1))
		{
			if (p[n] < p[n + 1])
			{
				k = n;

			}

			n++;
		}
		
		if (k > 0)
		{
			//determine the new value for p subscript k
			n = 0;
			while (n < size)
			{
				if (p[n] > p[k])
				{
					j = n;
				}
				
				n++;
			}
			swap(p, j, k);

			//prepare to rearrange
			r = k + 1;
			s = (size - 1);

			//rearrange
			while (r < s)
			{
				swap(p, r, s);
				r = r + 1;
				s = s - 1;
			}
		}
	}
	while (k != 0);

}

void swap(string &input, int a, int b)
{
	char temp;
	temp = input[a];
	input[a] = input[b];
	input[b] = temp;
}