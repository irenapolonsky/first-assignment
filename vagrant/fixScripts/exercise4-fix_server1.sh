#!/bin/bash
#Exercise4:
#We would like to ssh between the servers using their names rather than their ips.
#Please add the option to ssh between the two servers using names (server1 and server2).

#add fix to exercise4-server1 here

echo "-----------------------"
echo "Start excercise 4 on server1"

echo "***** adding server2 to the list of hosts on server1 *******"

sudo sed -i '$ a 192.168.100.11 server2' /etc/hosts

status=$?
if [ ${status} -eq "0" ];
        then
        echo "********server2 added successfully to /etc/hosts *******"
else
        echo "********adding server to the /etc/hosts failed ***status = $? ******"
fi
echo "End excercise 4 on server1"
