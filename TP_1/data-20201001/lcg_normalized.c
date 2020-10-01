/*
 * Linear Congruential Generator
 */

#include <stdio.h>
#include <stdlib.h>

#define LCG_A 7
#define LCG_C 0
#define LCG_M 1000


int main(int argc, const char* argv[]) {
	int seed;  /* LCG seed */
	int i = 1; /* current iteration */
	int x;     /* current random value */

	/* process commmand line */
	if(argc != 2) {
		fprintf(stderr, "\nSyntax: %s <seed>\n\n", argv[0]);
		return(0);
	}
	seed = atoi(argv[1]);
	fprintf(stdout, "# LCG, a=%d, c=%d, m=%d, seed=%d\n\n",
	        LCG_A, LCG_C, LCG_M, seed);

	/* generate 2*LCG_M - 1 random values */
	x = seed;
	while(i < 2*LCG_M - 1) {
		fprintf(stdout, "%9f\n", ((double)x)/(LCG_M-1));
		x = ((LCG_A*x) + LCG_C) % LCG_M;
		i++;
	}

	return(0);
}


