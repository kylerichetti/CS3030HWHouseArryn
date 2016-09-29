#!/bin/awk -f
BEGIN{
	FS="," 
}
{
	print $2" "$4" - "$5
}
END{
}

