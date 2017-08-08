//Cavaughn Browne
//AMGraph is a Graph made from an adjacency matrix and a vector 
//store names that corresponds to each index integer of the 
//vector (also for the matrix)
#include <string>
#include <vector>
#pragma once

using namespace std;

class AMGraph
{
public:
	//Constructor
	AMGraph();

	//Parameterized contstructor
	AMGraph(int size);

	//copy constructor
	AMGraph(AMGraph& otherGraph);
	//Purpose: Inserts vertices and any edges into the adjacency matrix
	//Requires: string name1 and name2 with the integers associated with them.
	//Returns: nothing
	void insertToGraph(string name1, string name2);

	//Purpose: checks to see if there is an edge between two vertices
	//Requires: num1 and num2(indexes in the matrix)
	//Returns: bool egde (true if there is an edge, false if not);
	bool isEdge(int num1, int num2);

	//Purpose: Provides the name corresponding to an integer
	//Requires: int num (must be less than the size of the vector)
	//Returns: string name
	string provideName(int num);
	
	//Purpose: Creates and the complement to the graph
	//Requires: nothing
	//Returns: nothing
	void createGraphComplement();
	~AMGraph();

	//Purpose: overloads the = operator to add meaning to assigning a graph
	//Requires: another graph
	//Returns: a graph
	void operator =(AMGraph& otherGraph);


private:

	const int default_size = 10;
	int size;
	int nameCount;
	vector<vector<bool>> adjacencyMatrix;
	vector<string> namesToNumber;
};

