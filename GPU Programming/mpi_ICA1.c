/* C Example */
#include <mpi.h>
#include <stdio.h>

#define N 16000

int main (int argc, char* argv[])
{
  int rank, size, r;
  int in;
 
  
  MPI_Init (&argc, &argv);      /* starts MPI */
  MPI_Comm_size (MPI_COMM_WORLD, &size);        /* get number of processes */
  MPI_Comm_rank (MPI_COMM_WORLD, &rank);        /* get current process id */
  //printf( "Hello world from process %d of %d\n", rank, size );
  int result = 0;
  int i;
		
	if(rank != 0)
	{
		//Receive array data from rank 0
		int A[N/size];
		MPI_Recv(A, N/size, MPI_INT, 0, 0, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
		
		for(i = 0; i < ((N/size)); i++)
		{
		
			result += A[i]; 

		}
		printf("Rank %d 's result is %d\n", rank, result);
		//send to rank 0
		MPI_Send(&result, 1, MPI_INT, 0, 0, MPI_COMM_WORLD);
	}
	else
	{
		int re;
		int s;
		int A[N], otherR[size-1];
		//have rank 0 create the array 
	    for(in = 0; in < N; in++)
		{
		  A[in] = 1;
		}
		
		//send array data to each of the other processes
		for(re = 1; re < size; re++)
		{
			MPI_Send(A + (re * (N / size)) , N/size, MPI_INT, re, 0, MPI_COMM_WORLD);
		}
		
	 
		//calculate this processes result
		for(i = 0; i < ((N/size)); i++)
		{
			result += A[i]; 
		}
		printf("Rank %d 's result is %d\n", rank, result);

		
		for(re = 1; re < size; re++)
		{
			//rank receives
			MPI_Recv(otherR + (re - 1), size - 1, MPI_INT, re, 0, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
			//printf("OTHERR %d = %d\n", re -1, otherR[re - 1]);
		}
		
		for(s = 0; s < size - 1; s++)
		{
			result += otherR[s];
			
		}
		
		printf("THE ANSWER IS %d\n", result);
	}
  
  MPI_Finalize();
  return 0;
}
