#!/bin/bash
read -p "What is the name of the apps server? " -e host
read -p "Which user do you want to connect as? " -e user
read -p "What is their password? " -e password
read -p "What is the name of the old db server? " -e olddb
read -p "what is the name of the new db server? " -e newdb
sed -i "3i set IPaddress $host" /usr/local/src/sshapps.exp
sed -i "4i set Username $user" /usr/local/src/sshapps.exp
sed -i "5i set Password $password" /usr/local/src/sshapps.exp
echo $olddb > /usr/local/src/olddb
echo $newdb > /usr/local/src/newdb
