BEGIN {
	bin_size = 0.1;
	cnt = 0;
	max = 0;
}

{
	# skip comment or empty lines
	if($1 == "#" || $0 == "")
		next;

	bin = binning($1);

	pdf[bin]++;

	if(bin > max)
		max = bin;

	cnt++;
}

END {
	for(i=0; i<=max; i++) {
		printf("%8s %.3f %.4f\n", \
		       "prng_pdf", (i+0.5)*bin_size, pdf[i]/(cnt*bin_size));
	}
	printf("\n");
}

function binning(x) {
	bin = x/bin_size;
	if(bin % 1 == 0)
		return (bin-1);
	else
		return bin < 0 ? int(bin) - 1 : int(bin)
}
