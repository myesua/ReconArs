#!/bin/bash

clear

# variables
break="======================================================="


echo $break
echo "This is a simple DNS recon script"
echo "It searches for DNS record of any domain name."
echo $break

# Asking for input
echo -n "Enter a domain name, e.g domain.com : "
read dn
read -p "Press <enter> to continue..."
echo "Starting recon on " $dn

firefox &
sleep 3
firefox --new-tab https://www.nslookup.io/domains/$dn/dns-records/ &
sleep 2
firefox --new-tab https://mxtoolbox.com/SuperTool.aspx?action=a%3a$dn&run=toolpage &
sleep 2
firefox --new-tab https://dnschecker.org/all-dns-records-of-domain.php?query=$dn&rtype=ALL&dns=google &
