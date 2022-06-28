#!/bin/bash

clear

break="===================================================="
echo "This is a script to automate backup. It backups home directory to /tmp/"
echo $break
echo
user=$(whoami)
input=/home/$user
output=/tmp/{$user}_home_$(date +%Y-%m-%d_%H%M%S).tar.gz

tar -czf $output $input
echo "Backup of $input completed! Details about the output backup file:"
ls -l $output


