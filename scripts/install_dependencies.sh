#!/bin/bash
set -xe

cd /var/www/myapp

# Install Python and virtualenv support
sudo apt-get update
sudo apt-get install -y python3 python3-pip python3-venv

# Create and activate virtual environment
python3 -m venv venv
source venv/bin/activate

# Install dependencies
pip install -r requirements.txt
