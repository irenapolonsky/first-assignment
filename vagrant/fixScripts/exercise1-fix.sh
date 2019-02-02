#!/bin/bash
#exercise1:
#in server 1, Run the following command "curl http://www.textfiles.com/art/bnbascii.txt" 
#What went wrong? Please fix the issue and add the command that fixes the issue to exercise1-fix.sh
#add fix to exercise1 here

echo "-----------------------" 
echo "Start excersice 1------" 
echo "-----going to delete an entry 208.86.224.90/32 from ip table --------"
sudo ip route del 208.86.224.90/32
status=$?
if [ ${status} -eq "0" ];
        then
        echo "entry deleted successfully"
	echo "site http://www.textfiles.com is reachable now"
   
	curl http://www.textfiles.com/art/bnbascii.txt

else
        echo "********something went wrong ***status $? ******"
fi

echo "End excersice 1------" 
