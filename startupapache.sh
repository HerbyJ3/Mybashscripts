#!/bin/bash
sudo yum install httpd -y
sudo systemctl enable httpd
sudo systemctl start httpd
echo "If you can read this then your script works" > /var/www/html/index.html
