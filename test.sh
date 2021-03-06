#!/bin/bash
echo "Please input a new user below:"
read -p 'Username: ' name
echo "Checking existing usernames...................Please wait"
sleep 3
while true; do
        if getent passwd $name > /dev/null; then
                echo "This user already exists, please re-enter a new user"
                read -p 'Username: ' name
        else
                sudo useradd -m $name
                echo "Processing new user.........................Please wait"
                sleep 3
                echo $name "has been added as a new usename"
                break
        fi
done
