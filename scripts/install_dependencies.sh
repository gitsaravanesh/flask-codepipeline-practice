#!/bin/bash

cd /var/www/myapp

# Install Python dependencies
sudo apt-get update
sudo apt-get install -y python3 python3-pip
pip install "flask>=2.0,<2.1" "werkzeug>=2.0,<2.1"
pip3 install -r requirements.txt
