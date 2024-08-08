#!/bin/sh 
rm -f $1.exe 
if (g++ -o $1.exe $1.cpp -Wall -pedantic -lm -g) then 
	echo "### COMPILOU ###" 
	if !(./$1 < $1.in > $1.out 2>&1) then 
		echo "### RUNTIME ERROR ###" >> $1.out 
	fi 
	less $1.out 
fi