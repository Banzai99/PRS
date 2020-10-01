/*
 * Linear Congruential Generator,
 * implemented using Schrage's algorithm
 */

#include <stdio.h>
#include <stdlib.h>


#define LCG_A 16807
#define LCG_C 2
#define LCG_M 2147483648

int main(int argc, const char* argv[]) {
	long int seed;  /* LCG seed */
  long int i = 1; /* current iteration */
	long int x;     /* current random value */

	/* process commmand line */
	if(argc != 2) {
		fprintf(stderr, "\nSyntax: %s <seed>\n\n", argv[0]);
		return(0);
	}
	seed = atoi(argv[1]);
	fprintf(stdout, "# LCG, a=%d, c=%d, m=%ld, seed=%ld\n\n",
	        LCG_A, LCG_C, (long int)LCG_M, seed);

	/* define internal variables */	
	long int q = LCG_M / LCG_A;
	long int r = LCG_M % LCG_A;
	long int x_div_q, x_mod_q;

	/* generate 100000 random values */
	x = seed;
	while(i < 100000) {
		fprintf(stdout, "%.9f\n", ((double)x)/(LCG_M-1));
		x_div_q = x / q;
		x_mod_q = x % q;
		x = LCG_A*x_mod_q - r*x_div_q;
		if(x < 0) x += LCG_M;
		i++;
	}

	return(0);
}


