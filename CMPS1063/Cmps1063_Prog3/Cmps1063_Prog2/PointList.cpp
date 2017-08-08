// Cavaughn Browne
//CMPS 1063 Prog 2 Point class definition

#include "PointList.h"
using namespace std;

PointList::PointList()
{
	current_num = 0;

}


void PointList::addToList(double x, double y)
{
	points[current_num].setX(x);
	points[current_num].setY(y);
	current_num++;
}

void PointList::removePoint(int index)
{
	
	for (int i = index; i < current_num - 1; i++)
	{
		points[i] = points[i + 1];
	}
	points[current_num - 1].setX(0);
	points[current_num - 1].setY(0);
	current_num--;
}

void PointList::providePoint(int index_num, double& x, double& y)
{
	x = points[index_num].provideX();
	y = points[index_num].provideY();
}
int PointList::provideCurrentNum()
{
	return current_num;
}

void PointList::sortPointList()
{
	bool isPlaced;
	int compareResult, s;
	double y1, y2;
	
	for (int i = 1; i < current_num; i++)
	{
		s = i;
		isPlaced = false;
		while (s > 0 && !isPlaced)
		{
			//compares current point with previous points as necessary 
			//return -1 if current < previous. 0 if current = previous
			//and 1 otherwise
			compareResult = points[s].comparePoint(points[s - 1]);

			if (compareResult == -1)
			{
				//swaps both points if current point < previous point
				pointSwap(s);
				s--; 
			}
			else if (compareResult == 1)
			{
				//set to true if point is placed correctly
				isPlaced = true;
			}
			else
			{
				//Swaps the coordinates if the x are equal and the current
				//point's y is less than the previous points y
				y1 = points[s].provideY();
				y2 = points[s - 1].provideY();
				if (y1 < y2)
					pointSwap(s);

				isPlaced = true;
			}
		}
	}
}


int PointList::searchPointList(double x, double y)
{
	bool found = false;
	int first = 0, last = (current_num - 1), mid;
	double xs, ys;

	while (!found && first <= last)
	{
		mid = (first + last) / 2;
		xs = points[mid].provideX();
		ys = points[mid].provideY();
		if (x == xs && y == ys)
		{
			found = true;	
		}
		else if (x < xs)
		{
			last = mid - 1;
		}
		else
		{
			first = mid + 1;
		}
	}

	if (found)
		return mid;
	else
		//-1 is the indicator for main to check if the point was actually
		//found or not.
		return -1;
	
}

void PointList::pointSwap(int index)
{
	Point temp = points[index];

	points[index] = points[index - 1];
	points[index - 1] = temp;



}
PointList::~PointList()
{
}
