//Cavaughn Browne
//CMPS 1063 Prog 2 Point class definition

#include "Point.h"
using namespace std;

Point::Point()
{
	y = 0;
	x = 0;
}

Point::Point(const Point& otherPoint)
{
	x = otherPoint.x;
	y = otherPoint.y;
}
double Point::provideX()
{
	return x;
}

double Point::provideY()
{
	return y;
}

void Point::setX(double newX)
{
	x = newX;
	
}

void Point::setY(double newY)
{
	y = newY;
}

int Point::comparePoint(Point otherPoint)
{
	double pointX = provideX();
	double otherX = otherPoint.provideX();
	if (pointX < otherX)
		return -1;
	else if (pointX == otherX)
		return 0;
	else
		return 1;
}

Point::~Point()
{
}
