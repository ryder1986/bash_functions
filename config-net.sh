#!/bin/bash
#echo "starting zenith server init in  $PWD "
#iptables -F 
#svnserve -d -r /svn-server
#smbd -D
#/usr/sbin/setenforce 0 
#ifconfig enp0s3  up




#!/bin/bash
CONFIG_FILE=/etc/bash-local-settings
if [ -e $CONFIG_FILE ];then
source $CONFIG_FILE
else
echo $CONFIG_FILE  does not exist, exiting
exit 1
fi

#echo $ACTIVE_IF_NAME
#echo $IP


ifconfig  $ACTIVE_IF_NAME   $IP  netmask 255.255.255.0
route add default gw 192.168.1.1
echo "nameserver 114.114.114.114" >> /etc/resolv.conf


