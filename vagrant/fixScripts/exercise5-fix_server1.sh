#!/bin/bash
#add fix to exercise5-server1 here

#ssh between servers without typing a password or the need to approve new servers,
#Please add the needed configuration in order to ssh password-less from server1 to sever2 and without host key checking

echo "======================================= Start excersice 5==============================================="
echo "======================================= Start excersice 5==============================================="
echo "======================================= Start excersice 5==============================================="

echo "**** going to update StrictHostKeyChecking on ssh_config file -***********"

sudo sed  -i  's/#   StrictHostKeyChecking ask/StrictHostKeyChecking no/i' /etc/ssh/ssh_config

status=$?
if [ ${status} -eq "0" ];
        then
        echo "*****StrictHostKeyChecking is set to No in ssh_config*****"
   
	else
        echo "********update of ssh_config of server1 failed ***status $? ******"
fi

cat /vagrant/fixScripts/server1_id_rsa_pub.txt  > /home/vagrant/.ssh/id_rsa.pub
cat /vagrant/fixScripts/server1_id_rsa.txt  > /home/vagrant/.ssh/id_rsa

status=$?
if [ ${status} -eq "0" ];
        then echo "*****keys copied successfuly ****"
        else
        echo "********something went wrong status $? ******"
fi

echo "***setting permissions to 400 ***"
chmod 644 /home/vagrant/.ssh/id_rsa.pub
chmod 600 /home/vagrant/.ssh/id_rsa

status=$?
if [ ${status} -eq "0" ];
        then echo "*****permissions assigned*****"
        else
        echo "********something went wrong status $? ******"
fi

echo "***append a public key to the authorized_keys on the target server***"
cat /vagrant/fixScripts/server2_id_rsa_pub.txt  >> /home/vagrant/.ssh/authorized_keys

status=$?
if [ ${status} -eq "0" ];
        then echo "*****public key of server 2 is authorized on Server1*****"
        else
        echo "********something went wrong status $? ******"
fi


echo "======================================= End excersice 5==============================================="
echo "======================================= End excersice 5==============================================="
echo "======================================= End excersice 5==============================================="