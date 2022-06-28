#!/bin/bash

clear

# variables
break="======================================================="


echo $break
echo "This is a simple script to open multiple urls at once."
echo "It accepts a file containing urls, and fires up firefox."
echo $break

# Asking for input
echo -n "Enter the file location: "
read location

# Check for no input
if [ -z $location ];
	then
	echo "You did not enter a file location"
	exit
fi

# Check for wrong file location
if [ ! -f $location ];
	then
	echo "The file does not exist."
	exit
fi

read -p "Press <enter> to continue..."
echo "Starting recon on $location..."
 
for i in $(cat $location); 
	do
	firefox --new-tab $i & 
	sleep 1
done

