#!/bin/sh
 
if [ $(id -u) eq 0 ]
then
 

user = $(whoami)
 
start-dir = "/etc/rc.d"
start-dir = "/etc/init.d"
location = $start/update-prefs.$user
 
chmod +x $location
ln -s $location /etc/rc2.d/S10update-prefs.$user
 
 
cp ~/Projects/ehryk.github.com/linux/update-prefs.sh $start/update-prefs-$user.sh