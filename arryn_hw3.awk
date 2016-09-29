#!/bin/awk -f
BEGIN{
	FS="," 
}
{
	if(substr($4, length($4) - 3)+0 > 1900){
	print $2", from "$4" to "$5;
}
}
END{
}

