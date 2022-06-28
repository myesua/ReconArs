#!/bin/bash

clear 

break="============================================================"
echo $break
echo "This is a simple recon on targets."
echo "Enter first and last name to begin a search"
echo $break

# assigning variables
fname=$fname
lname=$lname

# Asking for input
echo -n "Enter first name: "
read fname
# Checking for no input
if [ -z $fname ]; 
	then
   echo "You did not enter a first name"
   echo "Make sure you enter both first and last name"
   exit
fi

echo -n "Enter last name: "
read lname
# Checking for no input
if [ -z $lname ];
   then
   echo "You did not enter a last name"
   echo "Make sure you enter both first and last name"
   exit
fi

# Draw an horizontal line
echo $break
# Instructions
echo "Follow directions (your firefox browser will be initiated)"
read -p "Press <enter> to continue..." 

echo "Starting recon on $fname $lname..."
firefox --new-tab https://www.411.com/name/$fname-$lname/ &
firefox --new-tab https://peekyou.com/$fname"_"$lname &
firefox --new-tab https://www.linkedin.com/search/results/people/?keywords=$fname%20$lname &
firefox --new-tab https://www.cvgadget.com/person/$fname/$lname &
firefox --new-tab https://www.pipl.com/search/?q=$fname+$lname &
firefox --new-tab https://www.spokeo.com/search/?q=$fname+$lname &
firefox --new-tab https://www.zabasearch.com/people/$fname+$lname/ &
