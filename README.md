# cockatrice-server-ec2-setup
This script will prepare and install TeamSpeak3 and Servatrice on an Ubuntu machine.

# Prepare for Install
sudo apt-get install git -y
sudo chown ubuntu:ubuntu /opt #specific for EC2
sudo mount /dev/xvdb1 /opt #specific for EC2
cd /opt
git clone https://github.com/galaxiecruzin/cockatrice-server-ec2-setup.git
cd /opt/cockatrice-server-ec2-setup

# Install and configure mysql
sudo apt-get install mysql-server -y
mysql -u root -p < /opt/cockatrice-server-ec2-setup/database_first.sql
mysql -u root -p < /opt/cockatrice-server-ec2-setup/servatrice_back.sql

# Then finally run the install script
./install.sh

