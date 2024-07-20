#!/bin/bash

# write the menu, display disk usage, memory usage, 
# print content of specified file, exit

while true; do
	cat <<- _EOF_
		Please Select:

		1. Display the disk usage
		2. Display the memory usage
		3. Print the content of $1
		4. Exit

	_EOF_
	read -p "Enter Selection [1-4] > "
	if [[ "$REPLY" =~ ^[1-4]$ ]]; then	
		if [[ "$REPLY" == '1' ]]; then	
			df -h
			continue
		fi	
		if [[ "$REPLY" == '2' ]]; then
			free -h
			continue
		fi
		if [[ "$REPLY" == '3' ]]; then
			while read p; do
				echo "$p"
			done < $1
			continue
		fi
		if [[ "$REPLY" == '4' ]]; then
			break
		fi
	else
		echo "Invalid entry."
	fi
done
