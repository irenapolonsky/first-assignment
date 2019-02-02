#!/bin/bash
#Exercise2:
#in server 1, Run the following command "curl http://www.ascii-art.de/ascii/ab/007.txt"
#What went wrong? Please fix the issue and add the command that fixes the issue to exercise2-fix.sh
#add fix to exercise2 here

echo "Start excersice 2------" 
echo "-----going to remove www.ascii-art.de from etc hosts table-------"
sudo sed -i '/127\.0\.0\.1 www\.ascii-art\.de/d' /etc/hosts
status=$?
if [ ${status} -eq "0" ];
        then
        echo "entry deleted successfully"
	echo "site www.ascii-art.de is reachable now"
   
	curl http://www.ascii-art.de/ascii/ab/007.txt

else
        echo "********something went wrong ***status $? ******"
fi

echo "End excersice 2------" 