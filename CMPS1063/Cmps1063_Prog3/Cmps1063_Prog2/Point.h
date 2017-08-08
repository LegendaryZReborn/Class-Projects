//Cavaughn Browne
//CMPS 1063 Prog 2 Point class declaration
/*
DataTypeName
Point

domain
Each point consists of an x value and a y value

operations
provide an x value
provide a y value
set an x value
set a y value

*/

#pragma once
class Point
{
public:
	//Purpose: Constructor to initialize variables
    //Requires: none
	//Returns: none
	Point();

	//Copy Contructor
	Point(const Point& otherPoint);

	//destructor 
	~Point();

	//Purpose: provides the x coordinate of point
	//Requires: none
	//Returns: a double x
	double provideX();

	//Purpose: provides the y coordinate of point
	//Requires: none
	//Returns: a double y
	double provideY();
	
	//Purpose: Sets the x and y coordinates of point
	//Requires: newX and newY
	//Returns: none
	void setX(double newX);

	//Purpose: Sets y coordinates of point
	//Requires: newX and newY
	//Returns: none
	void setY(double newY);

	//Compares two points
	//Requires: otherPoint
	//Returns: -1 if point is < otherPoint; 0 if equal ; 1 otherwise
	int comparePoint(Point otherPoint);

	


private:
	double x; //x coordinate value
	double y; //y coordinate value
};

