#!/bin/bash
CONFIG_FILE=/etc/bash-local-settings
if [ -e $CONFIG_FILE ];then
source $CONFIG_FILE
else
echo $CONFIG_FILE  does not exist, exiting
exit 1
fi

echo $ACTIVE_IF_NAME
echo $IP
