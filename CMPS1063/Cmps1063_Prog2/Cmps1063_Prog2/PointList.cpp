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

void PointList::providePoint(int index_num, double& x, double& y)
{
	x = points[index_num].provideX();
	y = points[index_num].provideY();
}
int PointList::provideCurrentNum()
{
	return current_num;
}

PointList::~PointList()
{
}
