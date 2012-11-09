read -p "Which host do you want to connect to? " -e host
read -p "Which user do you want to connect as? " -e user
read -p "What is the users password? " -e password
sed -i "1i SSH_HOST=$host" /usr/local/src/db.sh
sed -i "2i SSH_USER=$user" /usr/local/src/db.sh
sed -i "3i SSH_PASS=$password" /usr/local/src/db.sh
