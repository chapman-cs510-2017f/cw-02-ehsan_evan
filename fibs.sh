#!/bin/bash

read -p "enter an integer value n, and n terms of the Fibonacci sequence will be returned: " n

if [ $n -lt 1 ];
then
 echo argument must be a positive integer value
 exit 1
fi

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
