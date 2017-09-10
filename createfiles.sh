#!/bin/bash
mkdir tmpfiles
cd tmpfiles
for i in `seq 1 100`;
do
	echo Temporary file$i > file$i.tmp
done
