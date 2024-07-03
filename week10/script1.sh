#!/bin/bash

# %b = what we put in, %m is what we want 
DATE=$(date -d"01 $1 2024" +%m)

if [ $((DATE % 2)) -eq 0 ]; then
	echo "$1 is an even month"
else
	echo "$1 is an odd month"
fi

if [ $((INT % 2)) -eq 0 ]; then
	echo "$2 is an even day"
else
	echo "$2 is an odd day"
fi
