#!/bin/bash

#open your browser, go to http://192.168.100.10/
#We expect to see a message from opsSchool. What do you get? Please fix it.
#Please fix the issue and add the command that fixes the issue to exercise3-fix.sh.

#add fix to exercise3 here
echo "Start excersice 3------"
echo "-----allow all to access port 80 from any site (previously denied) -------"

sudo sed  -i  's/deny from all/Allow from all/i'  /etc/apache2/sites-available/default
status=$?
echo "status=$?"
if [ ${status} -eq "0" ];
        then
        echo "********restarting apache2 service********"
        sudo service  apache2 reload
        echo "****service reloaded with code = $?****"
else
        echo "********updating available sites went wrong ***status = $? ******"
fi

echo "End excersice 3------"

