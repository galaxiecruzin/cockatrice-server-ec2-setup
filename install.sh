#!/bin/bash
HOME=/opt/cockatrice-server-ec2-setup

# Install Teamspeak3
if [ ! -f /$HOME/teamspeak3-server_linux-amd64/ts3server_startscript.sh ]
then
  echo "Installing ts3server..."
  cd $HOME
  wget http://dl.4players.de/ts/releases/3.0.11.3/teamspeak3-server_linux-amd64-3.0.11.3.tar.gz
  tar -zxf teamspeak3-server_linux-amd64-3.0.11.3.tar.gz
  ./start_teamspeak3.sh &
fi

if [ ! -f /usr/local/bin/servatrice ]
then
  echo "Compiling Seravtrice..."
  cd $HOME
  sudo add-apt-repository ppa:ubuntu-sdk-team/ppa -y
  sudo apt-get update -y
  sudo apt-get install build-essential g++ qtmobility-dev libprotobuf-dev protobuf-compiler libqt4-dev cmake libgcrypt11-dev zlib1g-dev -y
  git clone https://github.com/Cockatrice/Cockatrice.git ../Cockatrice
  mkdir ../Cockatrice/build
  cd ../Cockatrice/build
  cmake -DWITH_SERVER=1 -DWITH_CLIENT=0 ..
  make
  sudo make install
fi

# Start Servatrice
if [ -f /usr/local/bin/servatrice ]
then
  cd $HOME
  ./start_servatrice.sh &
fi

