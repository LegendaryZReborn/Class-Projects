//Cavaughn Browne
//AMGraph is a Graph made from an adjacency matrix and a vector 
//to store names that corresponds to each index integer of the 
//vector (also for the matrix)

#include "AMGraph.h"


AMGraph::AMGraph()
{
	

	adjacencyMatrix.resize(default_size, vector<bool>(default_size));


	namesToNumber.resize(default_size);

	//initializing the matrix
	for (int r = 0; r < default_size; r++)
	{
		for (int c = 0; c < default_size; c++)
		{
			adjacencyMatrix[r][c] = false;
		}
	}

	size = default_size;
	nameCount = 0;

}

AMGraph::AMGraph(int psize)
{
	size = psize;
	
	adjacencyMatrix.resize(size, vector<bool>(size));
	namesToNumber.resize(size);

	//initializing the matrix
	for (int r = 0; r < size; r++)
	{
		for (int c = 0; c < size; c++)
		{
			adjacencyMatrix[r][c] = false;
		}
	}
	nameCount = 0;

}

AMGraph::AMGraph(AMGraph& otherGraph)
{
	size = otherGraph.size;
	
	adjacencyMatrix.resize(size, vector<bool>(size));
	namesToNumber.resize(size);

	//initializing the matrix with other matrix
	for (int r = 0; r < size; r++)
	{
		for (int c = 0; c < size; c++)
		{
			adjacencyMatrix[r][c] = otherGraph.adjacencyMatrix[r][c];
		}

		namesToNumber[r] = otherGraph.namesToNumber[r];
	}

	nameCount = 0;
}

void AMGraph::insertToGraph(string name1, string name2)
{
	bool isThere1 = false, isThere2 = false;
	int index1, index2;

	//search the vector to see if the names are already there
	for (int n = 0; n < nameCount; n++)
	{
		if (name1 == namesToNumber[n])
		{
			isThere1 = true;
		}

		if (name2 == namesToNumber[n] && name2 != name1)
		{
			isThere2 = true;
		}
	}

	//Add the name1  to the appropriate spot
	if (isThere1 == false)
	{
		namesToNumber[nameCount] = name1;
		nameCount++;
	}
	
	//Add the name2  to the appropriate spot
	if (isThere2 == false)
	{
		namesToNumber[nameCount] = name2;
		nameCount++;
	}

	
		//search for the index of each name
		for (int i = 0; i < nameCount; i++)
		{
			if (namesToNumber[i] == name1)
				index1 = i;

			if (namesToNumber[i] == name2)
				index2 = i;
		}

		//"add" edge between the two names meaning make 
		//the indexed spot in the adjacency matrix
		//corresponding to the two names contain true.
		if (name1 != name2)
		{
			adjacencyMatrix[index1][index2] = true;
			adjacencyMatrix[index2][index1] = true;
		}
	
	
}

bool AMGraph::isEdge(int num1, int num2)
{
	return adjacencyMatrix[num1][num2];
}

string AMGraph::provideName(int num)
{
	return namesToNumber[num];
}

void AMGraph::createGraphComplement()
{

	//Go through the Matrix and invert each index except the diagonal
	//which should be all false
	for (int r = 0; r < size; r++)
	{
		for (int c = 0; c < size; c++)
		{
			//ignores diagonal indicies
			if (r != c)
			{
				if (adjacencyMatrix[r][c] == true)
				{
					adjacencyMatrix[r][c] = false;
				}
				else
				{
					adjacencyMatrix[r][c] = true;
				}
			}
		}
	}
}


void AMGraph::operator =(AMGraph& otherGraph)
{
	size = otherGraph.size;

	adjacencyMatrix.resize(size, vector<bool>(size));
	namesToNumber.resize(size);

	//initializing the matrix with other matrix
	for (int r = 0; r < size; r++)
	{
		for (int c = 0; c < size; c++)
		{
			adjacencyMatrix[r][c] = otherGraph.adjacencyMatrix[r][c];
		}

		namesToNumber[r] = otherGraph.namesToNumber[r];
	}

	nameCount = 0;
}
AMGraph::~AMGraph()
{
}
