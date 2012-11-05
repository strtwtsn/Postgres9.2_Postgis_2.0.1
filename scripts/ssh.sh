read -p "Which host do you want to connect to? " -e host
read -p "Which user do you want to connect as? " -e user
read -p "What is the users password? " -e password
sed -i "3i set IPaddress $host" /usr/local/src/ssh.exp
sed -i "4i set Username $user" /usr/local/src/ssh.exp
sed -i "5i set Password $password" /usr/local/src/ssh.exp

