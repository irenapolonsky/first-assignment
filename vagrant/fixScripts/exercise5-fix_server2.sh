#!/bin/bash
#add fix to exercise5-server2 here

#ssh between servers without typing a password or the need to approve new servers,
#Please add the needed configuration in order to ssh password-less from server1 to sever2 and without host key checking

echo "**********************************"
echo "Start exercise 5 on server1"
echo "**** going to update StrictHostKeyChecking on ssh_config file -***********"

sudo sed  -i  's/#   StrictHostKeyChecking ask/StrictHostKeyChecking no/i' /etc/ssh/ssh_config

status=$?
if [ ${status} -eq "0" ];
        then
        echo "*****StrictHostKeyChecking is set to no in ssh_config*****"

        else
        echo "********update of ssh_config of server1 failed ***status $? ******"
fi
echo "End exercise 5 on server2"
