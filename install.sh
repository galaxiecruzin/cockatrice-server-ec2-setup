#!/bin/bash
#
# Install script
#
# sudo apt-get install git -y

# sudo chown ubuntu:ubuntu /opt
# sudo mount /dev/xvdb1 /opt

# cd /opt
# git clone git@github.com:galaxiecruzin/cockatrice-server-ec2-setup.git
# cd cockatrice-server-ec2-setup
# ./install.sh

# Install and configure mysql
# sudo apt-get install mysql-server -y
# mysql -u root -p < /opt/cockatrice-server-ec2-setup/database_first.sql
# mysql -u root -p < /opt/cockatrice-server-ec2-setup/servatrice_back.sql

# wget http://dl.4players.de/ts/releases/3.0.11.3/teamspeak3-server_linux-amd64-3.0.11.3.tar.gz
# tar -zxf teamspeak3-server_linux-amd64-3.0.11.3.tar.gz
# cd teamspeak3-server_linux-amd64

# start teamspeak
# cd /opt/cockatrice-server-ec2-setup/teamspeak3-server_linux-amd64
# killall ts3server_startscript.sh 
# ./ts3server_startscript.sh start

# Servatrice
# cd /opt/cockatrice-server-ec2-setup/Cockatrice/build
#sudo make install
mkdir /home/ubuntu/.local/share/data/Cockatrice/Servatrice -p
sudo cp /opt/cockatrice-server-ec2-setup/servatrice.ini /home/ubuntu/.local/share/data/Cockatrice/Servatrice/servatrice.ini
# Start servatrice in background
sudo killall servatrice
/usr/local/bin/servatrice&

