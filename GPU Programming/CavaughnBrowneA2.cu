//Cavaughn Browne

#include <stdio.h>

#define N 32


//function that will multiply the matrix with the vector by calling the kernel
//requires a matrix, vector and the resulting vector

void matrixVectorM(float A_h [][N], float B_h [][1], float C_h [][1]);

//kernel
__global__ void matrixVectorMKernel(float *A_d, float *B_d, float *C_d);

int main()
{
	float A_h[N][N];
	float B_h[N][1];	
	float C_h[N][1];
	float sum = 0;


	for(int i = 0; i < N; i++)
	{
		for(int j = 0; j < N; j++)
		{
			A_h[i][j] = 0.5;
		}
		
		B_h[i][0] = 1.5;
	}
	
	
	matrixVectorM(A_h, B_h, C_h);
	
	//sum all the elements of the result	

	for(int i = 0; i < N; i++)
	{
		sum += C_h[i][0];
	}
	
	printf("C[%d][%d] is %f\n", 0, 0, C_h[0][0]);
	printf("C[%d][%d] is %f\n", N - 1, 0, C_h[N-1][0]);
	printf("Sum of all the elements in the resulting vector is %f", sum);
	
	return 0;
}

void matrixVectorM(float A_h[][N], float B_h[][1], float C_h[][1])
{	
	int size = N * N * sizeof(float);
	int size2 = N * 1 * sizeof(float);
	float *A_d, *B_d, *C_d;

	//allocate memory for the data on the gpu
	cudaMalloc((void**)&A_d, size);
	cudaMalloc((void**)&B_d, size2);
	cudaMalloc((void**)&C_d, size2);
	
	//copies existing data over to gpu from the host
	cudaMemcpy(A_d, A_h, size, cudaMemcpyHostToDevice);
	cudaMemcpy(B_d, B_h, size2, cudaMemcpyHostToDevice);

	//multiplies the matrix by the vector; uses 1 block of
	//32 threads.
	matrixVectorMKernel<<< 1, 32 >>>(A_d, B_d, C_d);
	
	//copy over the results back to the host
	cudaMemcpy(C_h, C_d, size2, cudaMemcpyDeviceToHost);
	
	//free gpu memory
	cudaFree(A_d);
	cudaFree(B_d);																											

	cudaFree(C_d);

}


__global__ void matrixVectorMKernel(float *A_d, float *B_d, float *C_d)
{
	//each thread is the dot production of a row of the matrix
	// and the vector. each thread computes a row of the result
	int id, id2;
	C_d[threadIdx.x] = 0;
	for(int i = 0; i < N; i++)
	{
		id = threadIdx.x * N + i;
		C_d[threadIdx.x] += A_d[id] * B_d[i];

	}
	
}
