#!/bin/bash

cd /var/www/myapp

# Install Python dependencies
sudo apt-get update
sudo apt-get install -y python3 python3-pip
sudo pip3 install --upgrade pip
sudo pip3 install --ignore-installed Flask