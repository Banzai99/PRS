BEGIN {
	prev[0] = -1;
	prev[1] = -1;
}

{
	# skip comment or empty lines
	if($1 == "#" || $0 == "")
		next;

	if(prev[0] != -1 && prev[1] != -1)
		print prev[0], prev[1], $1;

	prev[0] = prev[1];
	prev[1] = $1;
}

