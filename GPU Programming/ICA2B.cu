#include <stdio.h>

#define N 64


void vectorAdd(int A_h[][N], int B_h[][N], int C_h[][N]);

__global__ void vectorAddKernel(int *A_d, int *B_d, int *C_d);

int main()
{
	int A_h[N][N];
	int B_h[N][N];	
	int C_h[N][N];


	for(int i = 0; i < N; i++)
	{
		for(int j = 0; j < N; j++)
		{
			A_h[i][j] = 2;
			B_h[i][j] = 1;
		}
	}
	
	vectorAdd(A_h, B_h, C_h);
	
	for(int r = 0; r < N; r++)
	{
		for(int c = 0; c < N; c++)
		{
			printf("C[%d][%d] is %d\n", r, c, C_h[r][c]);
		}
	}
	return 0;
}

void vectorAdd(int A_h[][N], int B_h[][N], int C_h[][N])
{	
	int size = N * N * sizeof(int);
	int *A_d, *B_d, *C_d;

	cudaMalloc((void**)&A_d, size);
	cudaMalloc((void**)&B_d, size);
	cudaMalloc((void**)&C_d, size);
	
	cudaMemcpy(A_d, A_h, size, cudaMemcpyHostToDevice);
	cudaMemcpy(B_d, B_h, size, cudaMemcpyHostToDevice);

	vectorAddKernel<<< 4, 1024 >>>(A_d, B_d, C_d);
	cudaMemcpy(C_h, C_d, size, cudaMemcpyDeviceToHost);

	cudaFree(A_d);
	cudaFree(B_d);

	cudaFree(C_d);

}


__global__ void vectorAddKernel(int *A_d, int *B_d, int *C_d)
{
	int id = (blockIdx.x * blockDim.x) + threadIdx.x;
	
	C_d[id] = A_d[id] + B_d[id];
}
