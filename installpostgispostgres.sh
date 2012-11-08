#!/bin/bash
sudo apt-get -y update 
sudo apt-get -y install wget
cd /usr/local/src
wget https://raw.github.com/strtwtsn/Postgres9.2_Postgis_2.0.1/master/scripts/ssh.exp
chmod a+x /usr/local/src/ssh.exp
wget https://raw.github.com/strtwtsn/Postgres9.2_Postgis_2.0.1/master/scripts/ssh.sh
chmod a+x /usr/local/src/ssh.sh
/usr/local/src/ssh.sh
wget https://raw.github.com/strtwtsn/Postgres9.2_Postgis_2.0.1/master/scripts/findreplace.sh
/usr/local/src/findreplace.sh
wget https://raw.github.com/strtwtsn/Postgres9.2_Postgis_2.0.1/master/scripts/sshapps.exp
apt-get -y update
apt-get -y install build-essential zlib1g-dev libssl-dev libreadline-dev libyaml-dev git
cd /usr/local/src
wget ftp://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.3-p194.tar.gz
tar -xvzf ruby-1.9.3-p194.tar.gz
cd ruby-1.9.3-p194/
./configure --prefix=/usr/local
make && make install
rm /usr/local/src/ruby-1.9.3-p194.tar.gz
gem install chef ruby-shadow --no-ri --no-rdoc
sudo git clone https://github.com/strtwtsn/Postgres9.2_Postgis_2.0.1.git /var/chef
sudo chef-solo -c /var/chef/config/chef-solo.rb -j /var/chef/roles/postgres.json

