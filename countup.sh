#!/bin/bash
read -p "enter a positive integer: " n
if [ $n -lt 1 ]; then
	echo argument must be a positive integer
	exit 1
fi

count=1
while [ $n -ge $count ];
do
 echo -n " $count"
 let count+=1
done
echo
