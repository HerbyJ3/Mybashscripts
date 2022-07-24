#!/bin/bash
sudo apt-get update
sudo apt-get install httpd
sudo apt-get install ruby2.0
sudo apt-get install wget
cd /home/ubuntu
wget https://bucket-name.s3.region-identifier.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto