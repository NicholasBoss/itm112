#!/bin/bash

# write a script to play the rock, paper, scissors game 

while true; do
	cat <<- _EOF_
		Please Select:

		1. Rock
		2. Paper
		3. Scissors
		4. Done

	_EOF_
	read -p "Enter Your Choice [1-4] > "
	if [[ "$REPLY" =~ ^[1-4]$ ]]; then	
		if [[ "$REPLY" == '1' ]]; then
			echo ""	
		      	COMPUTER=$(( ( RANDOM % 3 ) + 1 ))	
			echo "You chose 1. Rock"
			if [[ "$REPLY" == "$COMPUTER" ]]; then
				echo "Computer chose 1. Rock"
				echo "You tied. Try Again."
				echo ""
				continue
			elif [[ "$COMPUTER" == 2 ]]; then
				echo "Computer chose 2. Paper"
				echo "You Lose!"
				echo ""
				continue
			elif [[ "$COMPUTER" == 3 ]]; then
				echo "Computer chose 3 Scissors"
				echo "You Win!"
				echo ""
				continue
			fi
			continue
		fi	
		if [[ "$REPLY" == '2' ]]; then
			echo ""
			COMPUTER=$(( ( RANDOM % 3 ) + 1 ))
			echo "You chose 2. Paper"
			if [[ "$REPLY" == "$COMPUTER" ]]; then
				echo "Computer chose 2. Paper"
				echo "You tied. Try Again."
				echo ""
				continue
			elif [[ "$COMPUTER" == 3 ]]; then
				echo "Computer chose 3. Scissors"
				echo "You Lose!"
				echo ""
				continue
			elif [[ "$COMPUTER" == 1 ]]; then
				echo "Computer chose 1. Rock"
				echo "You Win!"
				echo ""
				continue
			fi
			continue
		fi
		if [[ "$REPLY" == '3' ]]; then
			echo ""
			COMPUTER=$(( ( RANDOM % 3 ) + 1 ))
			echo "You chose 3. Scissors"
			if [[ "$REPLY" == "$COMPUTER" ]]; then
				echo "Computer chose 3. Scissors"
				echo "You tied. Try Again."
				echo ""
				continue
			elif [[ "$COMPUTER" == 2 ]]; then
				echo "Computer chose 2. Paper"
				echo "You Lose!"
				echo ""
				continue
			elif [[ "$COMPUTER" == 1 ]]; then
				echo "Computer chose 1. Rock"
				echo "You Win!"
				echo ""
				continue
			fi
			continue
		fi
		if [[ "$REPLY" == '4' ]]; then
			echo ""
			echo "Bye"
			break
		fi
	else
		echo "Invalid entry."
	fi
done
