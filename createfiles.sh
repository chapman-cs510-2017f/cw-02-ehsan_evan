#!/bin/bash
mkdir tmpfiles
cd tmpfiles                                 ### Since you entered a directory, it is polite to exit it again when done
for i in `seq 1 100`;                       ### No semicolon needed, since you put a line break anyway
do
	echo Temporary file$i > file$i.tmp  ### Beware spaces. Put quotes around strings to prevent ambiguity when spaces are involved"
done

### cd - ### This will return to the original directory where the script was called
