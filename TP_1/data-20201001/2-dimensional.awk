BEGIN {
	prev = -1;
}

{
	# skip comment or empty lines
	if($1 == "#" || $0 == "")
		next;

	if(prev != -1)
		print prev, $1;

	prev = $1;
}

