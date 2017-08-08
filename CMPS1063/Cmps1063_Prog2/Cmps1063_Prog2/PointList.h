//Cavaughn Browne
//CMPS 1063 Prog 2 Pointlist class declaration
/*
DataTypeName
PointList

domain
Each element consists of a Point

operations
Add to list
Provide Point
Provide current number

*/
#pragma once
#include "Point.h"


class PointList
{
	
public:
	

	PointList(); //constructer initializes
	~PointList();


	//Purpose:Adds a point to points
	//Requires:double x and y
	//Returns: none
	void addToList(double x, double y);

	//Purpose: To provide a point in the list of points
	//Requires: index_num which is >= 0 but < current_num and x and y
	//Returns: x and y
	void providePoint(int index_num, double& x, double& y);
	 
	//Purpose: Provides current number of points in the list
	//Require: none
	//Returns: current_num
	int provideCurrentNum();



private:
	static const int MAXPOINTS = 1000;
	typedef Point PointsL[MAXPOINTS];

	//List of Point 1000 point objects
	PointsL points;
	int current_num;
	
};

