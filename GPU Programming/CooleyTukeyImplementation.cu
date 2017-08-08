//GPU Programming - Project
//Name: Cavaughn Browne
//Parallel Programming Date: 12/5/2016

//Reads N sets of data from a file called data.dat and processes them using 
//the FFT-Cooley Tukey Algorithm. 

//compile with these lines with the data.dat file in the same directory
//module load cuda
//nvcc -arch=compute_35 -code=sm_35 CooleyTukeyImplementation.cu -o a.out


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

int main(int argc, char **argv)
{
	
	FILE *fp;

	fp = fopen("data.dat", "r");
	int N = atoi(argv[1]);
	struct ComplexNum Xk;
	struct ComplexNum x[N];
	struct ComplexNum XkResults[N];
	struct ComplexNum evenP;
	struct ComplexNum oddP;
	double c, s, realPart, imgPart;
	int m, k, j;
	float time;
	cudaEvent_t start, stop;

	j = 0;
	
		while(j < N && !feof(fp))
		{
			fscanf(fp, "%lf", &x[j].real);
			fscanf(fp, "%lf", &x[j].imag);
			
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

	cudaEventCreate(&start);
	cudaEventCreate(&stop) ;
	cudaEventRecord(start, 0);
	
	clock_t st = clock(), diff;
	
	for (k = 0; k < N; k++)
	{
		double theta = (-2 * PI * k) / (N / 2);

		evenP.real = 0;
		evenP.imag = 0;
		oddP.real = 0;
		oddP.imag = 0;
		
		for ( m = 0; m < N / 2; m++)
		{
			c = cos(theta * m);
			s = sin(theta * m);
			
			//Even Indexed Part Computation
			realPart = (x[2 * m].real *c) - ((x[2 * m].imag * s));
			evenP.real += realPart;
			imgPart = (x[2 * m].real *s) + ((x[2 * m].imag * c));
			evenP.imag += imgPart;

			//Odd Indexed Part Computation
			realPart = (x[(2 * m) + 1].real *c) - ((x[(2 * m) + 1].imag * s));
			oddP.real += realPart;
			imgPart = (x[(2 * m) + 1].real *s) + ((x[(2 * m) + 1].imag * c));
			oddP.imag += imgPart;
		}

		//Add the real and the odd part sums and store the result.
		Xk.real = evenP.real + (cos(theta / 2) * oddP.real) - (sin(theta / 2) * oddP.imag);
		Xk.imag = evenP.imag + (cos(theta / 2) * oddP.imag) + (sin(theta / 2) * oddP.real);
		XkResults[k] = Xk;
	}
	
	//print first 8
	int p;
	for(p = 0; p < 8; p++)
	{
		printf("XR[%d] : %lf\nXI[%d] : %lf\n", p, XkResults[p].real, p, XkResults[p].imag);

	}
	
	diff = clock() - st;
	cudaEventRecord(stop, 0);
	cudaEventSynchronize(stop);
	cudaEventElapsedTime(&time, start, stop);
	
	printf("Cuda Time:  %3.1f ms \n", time);
	printf("C Time: %3.1f ms \n", diff);

}