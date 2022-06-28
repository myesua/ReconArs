#!/bin/bash

clear

rm tmp 2> /dev/null

break="====================================================="
echo $break
echo "Recon the robots.txt of your target."
echo $break

# Get user input
echo -n "Enter domain name: "
read dn
if [ -z $dn ];
	then
	echo "You have not entered a domain name"
	exit
fi

# Instructions
echo "Follow the instructions below"
sleep 2
read -p "Press <enter> to continue"
sleep 2
echo "Recon started on target..."

# Get robots.txt of domain name entered
wget -q $dn/robots.txt 
cat robots.txt | grep "Disallow" | awk -F':' '{ print $2 }' > tmp

rm robots.txt 2> /dev/null

firefox &
sleep 3

# Iterate through each disallowed directory in the robots.txt file downloaded, and fire up firefox.
for i in $(cat tmp);
	do
	firefox --new-tab $dn$i &
	sleep 2
done
