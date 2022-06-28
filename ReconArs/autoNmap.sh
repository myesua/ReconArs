#!/bin/bash

clear

# Variables
YELLOW='\e[33m'
BLUE='\e[3;94m'
RED='\e[31m'
GREEN='\e[32m'
RESET='\e[0m'
MEDIUM="**************************************************"


# functions
f_banner() {
	echo -e "${YELLOW}${MEDIUM}${RESET}"
	echo -e "${YELLOW}Welcome to NmapPTS${RESET}"
	echo -e "${YELLOW}Let me automate your port scanning tasks${RESET}"
	echo -e "${YELLOW}${MEDIUM}${RESET}"
	echo -e "${BLUE}Loading...please give me some seconds${RESET}"
}

menu(){
	echo -e "${BLUE}1. Scan specific port(s)"
	echo -e "2. Scan common ports"
	echo -e "3. Scan all ports"
	echo -e "-------------------------------------------------"
	echo -e -n "Choose an option: ${RESET}"
	read option
}

user_input_specific() {
	echo -n "Enter your target IP: " 
	read target
	echo -n "Enter the port(s) you wish to scan each seperated with a space: "
	read port
}

option1() {
	sudo nmap -sV -vv $target -p $(sed 's/\s+/,/g' <<< $port)
}

user_input() {
	echo -n "Enter your target IP: " 
	read target
}

option2() {
	sudo nmap -sV -vv --top-ports 10000 $target
}

option3() {
	sudo nmap -sV -vv -p "*" $target
}

specific_scan() {
	echo "You chooose option $option."
	sleep 1
	echo "Loading"
	sleep 1
	user_input_specific
	echo "Scanning ..."
	sleep 1
	option1
}

common_scan() {
	echo "You chooose option $option. \n This will take a while, be patient"
	sleep 1
	echo "Loading"
	sleep 1
	user_input
	sleep 1
	echo "Scanning ..."
	sleep 1
	option2
}

full_scan() {
	echo "You chooose option $option. \n This will take a lot of time, be patient"
	sleep 1
	echo "Loading"
	sleep 1
	user_input
	sleep 1
	echo "Scanning ..."
	sleep 1
	option3
}

scan_choice() {
	case $option in 
		1) specific_scan;;
		2) common_scan;;
		3) full_scan;;
	esac
}

f_banner
menu
scan_choice

exit

