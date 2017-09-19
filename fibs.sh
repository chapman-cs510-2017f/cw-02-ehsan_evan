#!/bin/bash

### Rather than using "read", you can use command line arguments.
### The variable name $1 will be the first argument of the program, etc.
### n = $1
read -p "enter an integer value n, and n terms of the Fibonacci sequence will be returned: " n

if [ $n -lt 1 ];
then
 echo argument must be a positive integer value
 exit 1
fi

### Better to put these variable definitions inside your function
f1=0
f2=1

echo "The first $n terms of the Fibonacci sequence are:"

function fibb() {
 for (( i=0;i<=$1;i++ ))
 do
	echo -n "$f1 "
	fn=$((f1+f2))
	f1=$f2
	f2=$fn
 done
 echo
}

fibb n
