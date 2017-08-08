//Assigntment #1
//Name: Cavaughn Browne 
//Parallel Programming Date: 10/9/2016

//Reads N sets of data from a file called data.dat and processes them using 
//the FFT-Cooley Tukey Algorithm. When building with gcc compiler, you must use -lm 
//parameter to let the compiler know program is using math.h on Maverick

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>


#define PI 3.141592653589793

struct ComplexNum 
{
	double real;
	double imag;
};

void FFT(ComplexNum* signals, int N);

__global__ void FFT_Kernel(ComplexNum* signals_d, ComplexNum* evenOddR, int N, int k);

__global__ void FFT_KernelSuper(ComplexNum*signals_d, ComplexNum* XkResults, ComplexNum* evenOddR, int N);

__global__ void sumEvenOddS(ComplexNum* evenOddR, int N, int k);

int main(int argc, char **argv)
{
	
	FILE *fp;

	fp = fopen("data.dat", "r");
	int N = atoi(argv[1]);
	int j;
	struct ComplexNum x[N];
	
	j = 0;
	
		while(j < N && !feof(fp))
		{
			fscanf(fp, "%lf", &x[j].real);
			fscanf(fp, "%lf", &x[j].imag);
			//printf("XR[%d]: %f\n", j, x[j].real);
			//printf("XI[%d]: %f\n", j, x[j].imag);
			j++;
		}
		
		
	

	
	if(j < N)
	{
		for(; j < N; j++)
		{
			x[j].real = 0;
			x[j].imag = 0;
		}
	}
	printf("TOTAL PROCESSED SAMPLES: %d\n", N);
	FFT(x, N);
	
}

void FFT(ComplexNum* signals, int N)
{
	int size = N * 2* sizeof(double);
	int size2 = (N/2) * 2* sizeof(double)* (N/2) * 2* sizeof(double);
	int threads;
	int blocks;
	ComplexNum* signals_d;
	ComplexNum* XkResults_d;
	ComplexNum* evenOddR_d;
	ComplexNum XkResults_h[N];


	float time;
	cudaEvent_t start, stop;

	
	if(N < 1024)
	{
		threads = N % 1024;
		blocks = N/threads;
		
	}
	else if(N % 1024 == 0)
	{
		threads = 1024;
		blocks = N/threads;
		
	}
	else
	{
		threads = 1024;
		blocks = (N/threads) + 1;
		

	}
	cudaMalloc((void**)&signals_d, size);
	cudaMemcpy(signals_d, signals, size, cudaMemcpyHostToDevice);
	
	cudaMalloc((void**)&XkResults_d, size);
	cudaMalloc((void**)&evenOddR_d, size2);
	
	cudaEventCreate(&start);
	cudaEventCreate(&stop) ;
	cudaEventRecord(start, 0) ;

	clock_t st = clock(), diff;
	
	//call Kernel
	FFT_KernelSuper<<<blocks, threads>>>(signals_d, XkResults_d, evenOddR_d, N);
	
	
	diff = clock() - st;
	cudaEventRecord(stop, 0);
	cudaEventSynchronize(stop);
	cudaEventElapsedTime(&time, start, stop);
	
	cudaMemcpy(XkResults_h, XkResults_d, size, cudaMemcpyDeviceToHost);
	
	cudaFree(signals_d);
	cudaFree(XkResults_d);
	cudaFree(evenOddR_d);

	//print out the first 8
	int p;
	for(p = 0; p < 8; p++)
	{
		printf("XR[%d] : %lf\nXI[%d] : %lf\n", p, XkResults_h[p].real, p, XkResults_h[p].imag);	
	}
	
	
	printf("Cuda Time:  %3.1f ms \n", time);
	printf("C Time: %3.1f ms \n", diff);
	
}

__global__ void FFT_Kernel(ComplexNum* signals_d, ComplexNum* evenOddR, int N, int k)
{
	struct ComplexNum evenOddS;
	struct ComplexNum evenP;
	struct ComplexNum oddP;
	double c, s, realPart, imgPart;
	int m;
	
	
	//thread will compute Xk....k = threadIdx.x
	//int k
	m = blockIdx.x * blockDim.x + threadIdx.x;
	double theta = (-2 * PI * k) / (N / 2);
	 if(m < (N / 2))
	 {
		evenP.real = 0;
		evenP.imag = 0;
		oddP.real = 0;
		oddP.imag = 0;
		
		
		//Even
		c = cos(theta * m);
		s = sin(theta * m);
		realPart = (signals_d[2 * m].real *c) - ((signals_d[2 * m].imag * s));
		evenP.real += realPart;
		imgPart = (signals_d[2 * m].real *s) + ((signals_d[2 * m].imag * c));
		evenP.imag += imgPart;

		//Odd
		realPart = (signals_d[(2 * m) + 1].real *c) - ((signals_d[(2 * m) + 1].imag * s));
		oddP.real += realPart;
		imgPart = (signals_d[(2 * m) + 1].real *s) + ((signals_d[(2 * m) + 1].imag * c));
		oddP.imag += imgPart;
		
		evenOddS.real = evenP.real + (cos(theta / 2) * oddP.real) - (sin(theta / 2) * oddP.imag);
		evenOddS.imag = evenP.imag + (cos(theta / 2) * oddP.imag) + (sin(theta / 2) * oddP.real);


		evenOddR[(k * (N/2)) + m] = evenOddS;

	}
		
		

}


__global__ void FFT_KernelSuper(ComplexNum*signals_d, ComplexNum* XkResults, ComplexNum* evenOddR, int N)
{
	int k = blockIdx.x * blockDim.x + threadIdx.x;
	
	//Calculates N/2 even and odd parts. Sums the even and odd part each thread
	FFT_Kernel<<< 1, 1024 >>>(signals_d, evenOddR, N, k);
	cudaDeviceSynchronize();

	sumEvenOddS <<<1, 1024 >>>(evenOddR, N, k);
	
	XkResults[k] = evenOddR[k * (N/2)];	
}

__global__ void sumEvenOddS(ComplexNum* evenOddR, int N, int k)
{
	//Reduction: Interleaved addressing referenced from the nvidia website
	int s;
	int tid = (k*(N/2)) + (blockDim.x * blockIdx.x + threadIdx.x);
	for(s=1; s < N/2; s *= 2) {
		if (threadIdx.x % (2*s) == 0) 
		{
			evenOddR[tid].real += evenOddR[tid + s].real;
			evenOddR[tid].imag += evenOddR[tid + s].imag;

		}
	__syncthreads();
	}
	
}
