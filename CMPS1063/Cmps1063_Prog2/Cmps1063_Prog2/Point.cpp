//Cavaughn Browne
//CMPS 1063 Prog 2 Point class definition

#include "Point.h"
using namespace std;

Point::Point()
{
	y = 0;
	x = 0;
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


Point::~Point()
{
}
