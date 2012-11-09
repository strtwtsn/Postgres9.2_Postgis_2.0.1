#!/bin/bash
read -p "What is the name of the apps server? " -e host
read -p "Which user do you want to connect as? " -e user
read -p "What is their password? " -e password
read -p "What is the name of the old db server? " -e olddb
read -p "what is the name of the new db server? " -e newdb
sed -i "1i SSH_HOST=$host" /usr/local/src/apps.sh
sed -i "2i SSH_USER=$user" /usr/local/src/apps.sh
sed -i "3i SSH_PASS=$password" /usr/local/src/apps.sh
echo $olddb > /usr/local/src/olddb
echo $newdb > /usr/local/src/newdb
