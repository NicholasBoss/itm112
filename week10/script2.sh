#!/bin/bash 
# part 1 
# If directory doesn't exist, prompt user to create

if [[ ! -d $1 ]]; then
	read -p "$1 Does not exist. Do you want to create it (y/n)? "
	if [[ $REPLY = 'y' ]]; then
		echo "Creating Directory $1"
		mkdir $1
	else		
		exit
	fi
elif [[ -d $1 ]]; then
	echo "Directory $1 exists"
	if [[ ! -e $1/$2 ]]; then
		read -p "$2 Does not exist. Do you want to create it (y/n)? "
		if [[ $REPLY = 'y' ]]; then
			echo "Creating File $2 in Directory $1"
			touch $1/$2
			echo "Here is a list of files in Directory $1:"
			ls -l $1
			exit
		else
			echo "Here is a list of files in Directory $1:"
			ls -l $1
			exit
		fi
	fi
fi



