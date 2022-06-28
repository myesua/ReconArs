#!/bin/bash 

clear

echo "****************************************************"
echo "This is a simple interactive shell   ***************"    
echo "****************************************************"

echo "THE SHELL!"
echo -n "Tell me your first name: "
read fname
echo -n "Tell me your last name: "
read lname

echo "Welcome to the SHELL, $fname $lname."
echo -n "Do you want to know how popular you are? y/n: "
read answer
if [ $answer == "y" ];
   then
   echo "Wait, I will start searching for how popular you are..."
   sleep 1
   read -p "Press <enter> to continue"
   firefox &
   sleep 2
   firefox --new-tab  https://www.google.com/search?q=$fname+$lname &
else
	echo "You didn't make a positive choice"
	sleep 1 
	echo "Thanks for visiting"   
  	sleep 1
fi
