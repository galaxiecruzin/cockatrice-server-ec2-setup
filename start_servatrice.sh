#!/bin/bash
HOME=/opt/cockatrice-server-ec2-setup

# Start Servatrice
if [ -f /usr/local/bin/servatrice ]
then
  cd $HOME
  sudo killall servatrice
  mkdir /home/ubuntu/.local/share/data/Cockatrice/Servatrice -p
  sudo cp $HOME/servatrice.ini /home/ubuntu/.local/share/data/Cockatrice/Servatrice/servatrice.ini
  #Start servatrice in background
  /usr/local/bin/servatrice &
fi

