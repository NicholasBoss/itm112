#!/bin/bash

int1=14
int2=7
result=0

multiply () {
	result="$(($int1 * $int2))"
	echo "$int1 * $int2 = $result"
}

divide () {
	result="$(($int1 / $int2))"
	echo "$int1 / $int2 = $result"
}

echo "DEBUG: multiply ()"
multiply
echo "DEBUG: divide ()"
divide
