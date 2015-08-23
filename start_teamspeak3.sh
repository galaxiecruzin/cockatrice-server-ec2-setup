#!/bin/bash
HOME=/opt/cockatrice-server-ec2-setup

# Restart Teamspeak3
if [ ! -f /$HOME/teamspeak3-server_linux-amd64/ts3server_startscript.sh ]
then
  echo "Restarting ts3server..."
  cd $HOME
  killall ts3server_linux_amd64 
  cd ./teamspeak3-server_linux-amd64/
  ./ts3server_startscript.sh start &
fi

