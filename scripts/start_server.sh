#!/bin/bash
set -xe

cd /var/www/myapp

# Activate the virtual environment
source venv/bin/activate

# Ensure logs directory exists
mkdir -p logs

# Start the Flask app using Gunicorn inside the virtual environment
gunicorn -b 0.0.0.0:5000 app:app > logs/gunicorn.log 2>&1 &
