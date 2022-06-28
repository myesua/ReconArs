#!/bin/bash

clear
##############################################################
# Global variables
YELLOW='\e[33m'
BLUE='\e[3;93m'
RED='\e[31m'
GREEN='\e[32m'
Reset='\e[0m'
medium="**************************************************"



# Function - Front Banner
f_banner(){
echo -e "${GREEN}
           __      __
|  | |__| |  | || |__
|/\| |  | |__| || ___|
                  
By Joshua Mayowa${Reset}"  
}
f_banner
echo -e "${YELLOW}${medium}${Reset}"
echo -e "${BLUE}Usage${Reset}"
echo -e "${BLUE}Domain: target.com${Reset}"
echo -e "${YELLOW}${medium}${Reset}"

echo -n "Enter a domain name: "
read domain
echo "Whois initializing for $domain"
sleep 1
echo -n "Do you want to save the result into a file? y/n: "
read response

if [[ "${response[0]}" == "y" ]];
	then
	echo -n "Enter your desired name to save as: "
	read file
	whois $domain > $HOME/$file
	sleep 1
	echo "Result saved into your home directory as $HOME/$file"
else
	echo "You entered a negative value. Result will be printed on the cmd, processing..."
	sleep 1
	whois $domain	 
fi
