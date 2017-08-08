//Cavaughn Browne

#include <stdio.h>

#define N 1024


//function that will multiply the matrix with the vector by calling the kernel
//requires a matrix, vector and the resulting vector

float matrixVectorM(float A_h [][N], float B_h [][1], float C_h [][1]);

//kernel
__global__ void matrixVectorMKernel(float *A_d, float *B_d, float *C_d);

__global__ void addResult(float *C_d, float *sumR);
int main()
{
	float A_h[N][N];
	float B_h[N][1];	
	float C_h[N][1];
	float sum;


	for(int i = 0; i < N; i++)
	{
		for(int j = 0; j < N; j++)
		{
			A_h[i][j] = 0.5;
		}
		
		B_h[i][0] = 1.5;
	}
	
	//calculted the result and
	//sum all the elements of the result	
	sum = matrixVectorM(A_h, B_h, C_h);
	
	printf("C[%d][%d] is %f\n", 0, 0, C_h[0][0]);
	printf("C[%d][%d] is %f\n", N - 1, 0, C_h[N-1][0]);
	printf("Sum of all the elements in the resulting vector is %f", sum);
	
	return 0;
}

float matrixVectorM(float A_h[][N], float B_h[][1], float C_h[][1])
{	
	int size = N * N * sizeof(float);
	int size2 = N * 1 * sizeof(float);
	float *A_d, *B_d, *C_d;
	float sum [N];
	float *sumR;

	//allocate memory for the data on the gpu
	cudaMalloc((void**)&A_d, size);
	cudaMalloc((void**)&B_d, size2);
	cudaMalloc((void**)&C_d, size2);
	cudaMalloc((void**)&sumR, size2);

	
	//copies existing data over to gpu from the host
	cudaMemcpy(A_d, A_h, size, cudaMemcpyHostToDevice);
	cudaMemcpy(B_d, B_h, size2, cudaMemcpyHostToDevice);

	
	//multiplies the matrix by the vector; uses 4 block of
	//1024 threads.
	matrixVectorMKernel<<< 4, 256 >>>(A_d, B_d, C_d);
	
	//copy over the results back to the host
	cudaMemcpy(C_h, C_d, size2, cudaMemcpyDeviceToHost);
	cudaMemcpy(sumR, C_d, size2, cudaMemcpyDeviceToDevice);
	
	addResult<<< 1, 1024 >>>(C_d, sumR);
	cudaMemcpy(sum, sumR, size2, cudaMemcpyDeviceToHost);
	
	
	//free gpu memory
	cudaFree(A_d);
	cudaFree(B_d);																											

	cudaFree(C_d);
	cudaFree(sumR);
	
	return sum[0];

}


__global__ void matrixVectorMKernel(float *A_d, float *B_d, float *C_d)
{
	//each thread is the dot product of a row of the matrix
	// and the vector. each thread computes a row of the result
	
	int id = (blockDim.x * blockIdx.x) + threadIdx.x;
	int aId;
	C_d[id] = 0;
	for(int r = 0; r < N; r++)
	{
		aId = id * N + r;
		C_d[id] += A_d[aId] * B_d[r];
	}
	
}

__global__ void addResult(float *C_d, float *sumR)

{
	//Reduction: Interleaved addressing referenced from the nvidia website
	for
	(int s=1; s < blockDim.x; s *= 2) {
	if (threadIdx.x % (2*s) == 0) {
	sumR[threadIdx.x] += sumR[threadIdx.x + s];
	}
	__syncthreads();
	}
}
