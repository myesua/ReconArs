#!/bin/bash

clear

# Global variables
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
RED='\033[1;31m'
Neutral='\033[0m'

meduim='************************************************'

export YELLOW
export BLUE
export RED
export Neutral

export medium

echo "***************************************************"
echo "Welcome to Recon Arsenal!"
echo "You can do recon on many things including yourself"
echo "***************************************************"
echo "Loading...please give me some seconds"
sleep 3
echo
echo "1. Recon on yourself"
echo "2. Recon on people"
echo "3. Recon DNS record of a domain name"
echo "4. Recon robots.txt of a target"
echo "5. Open multiple urls at once"
echo
echo -n "Choose an option: "
read option

echo "You entered number $option"
echo "Loading...please give me some seconds"
sleep 2
case $option in
	1) ./yourself.sh;;
	2) ./people.sh;;
	3) ./dnsrecord.sh;;
	4) ./robotstxt.sh;;
	5) ./urls.sh;;
	6) ./whois.sh;;
	*) echo "You have entered a wrong choice."
esac
