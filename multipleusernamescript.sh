#!/bin/bash
echo "Please input a new user below:"
read -p 'Username: ' usrname
if getent passwd $usrname > /dev/null;then
        echo $usrname "already exists, please wait......................................................................"
        sleep 4
        echo "Username(s) will not be added"
else
    for user in $usrname
    do
            useradd -m $user
            echo  'Username(s) has been added to the system. Use the command "tail /etc/passwd" to confirm'
            break
    done
fi
