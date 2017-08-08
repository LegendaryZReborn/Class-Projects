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

	//Purpose:Remove point from the list
	//Requires: the index of the point to be removed
	//Returns: none
	void removePoint(int index);

	//Purpose: To provide a point in the list of points
	//Requires: index_num which is >= 0 but < current_num and x and y
	//Returns: x and y
	void providePoint(int index_num, double& x, double& y);
	 
	//Purpose: Provides current number of points in the list
	//Require: none
	//Returns: current_num
	int provideCurrentNum();

	//Purpose: Sorts the points in the list
	//Requires: none
	//Returns: none
	void sortPointList();

	//Purpose: Search the list for a requested point
	//Requires: x and y coordinates
	//Returns: index of the requested point
	int searchPointList(double x, double y);


private:
	static const int MAXPOINTS = 1000;
	typedef Point PointsL[MAXPOINTS];

	//List of Point 1000 point objects
	PointsL points;
	int current_num;

	//Purpose: Swaps two points
	//Requires: index of the current unsorted point
	//Returns: none
	void pointSwap(int index);
	
};

