#!/bin/bash
HOME=/opt/cockatrice-server-ec2-setup

# Start Servatrice
if [ -f /usr/local/bin/servatrice ]
then
  cd $HOME
  sudo killall servatrice
  mkdir /opt/cockatrice-server-ec2-setup/.local/share/data/Cockatrice/Servatrice/ -p
  sudo cp $HOME/servatrice.ini /opt/cockatrice-server-ec2-setup/.local/share/data/Cockatrice/Servatrice/servatrice.ini
  #Start servatrice in background
  /usr/local/bin/servatrice --config /opt/cockatrice-server-ec2-setup/.local/share/data/Cockatrice/Servatrice/servatrice.ini &
fi

