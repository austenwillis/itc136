#!/bin/bash
diskused=$(df -h | grep "/dev/sda1" | awk '{print $5}')
memfree=$(free -mh | grep Mem: | awk ' {print  $7}')
connections=$( netstat | grep tcp )
users=$( who )

echo -en "This is a snapshot of yor current system:

       \e[32m  Disk Used: $diskused
        
        \e[35m  Free Memory: $memfree
        
       \e[31m Logged in Users: $users
\e[46m        
Open Internet Connections:
$connections
\e[49m
"


echo "
color info:

"
