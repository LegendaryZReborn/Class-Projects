//Name: Cavaughn Browne
/* C Example */
/*MPI code 
P0 starts with a value of 191 and passes it to P1 which adds
a value of 111 and passes it to P2 which adds 222 and passes it to 
P3 which adds 333 and passes it back to P0 which prints out the result.
*/
#include <mpi.h>
#include <stdio.h>

int main (int argc, char* argv[])
{
  int rank, size, val;
  
  MPI_Init (&argc, &argv);      /* starts MPI */
  MPI_Comm_size (MPI_COMM_WORLD, &size);        /* get number of processes */
  MPI_Comm_rank (MPI_COMM_WORLD, &rank);        /* get current process id */
 
	if(rank == 0)
	{
		val = 191;
		//sends the value to the next process
		MPI_Send(&val,1, MPI_INT, rank + 1, 0, MPI_COMM_WORLD);
		
		//recieve the final value fromm process 3
		MPI_Recv(&val, 1, MPI_INT, 3, 0, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
		
		//output the final val
		printf("THE FINAL VALUE IS %d\n", val);
	}
	else
	{
		//recieve a value from the previous rank (process)
		MPI_Recv(&val, 1, MPI_INT, rank - 1, 0, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
		
		val += 111 * rank;
		
		//send the value to the next process in line
		MPI_Send(&val, 1, MPI_INT, (rank + 1)%size, 0, MPI_COMM_WORLD);
	}
	
  
  MPI_Finalize();
  return 0;
}
