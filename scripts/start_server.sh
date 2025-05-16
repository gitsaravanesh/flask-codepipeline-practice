#!/bin/bash
set -xe

cd /var/www/myapp

# Activate virtual environment
source venv/bin/activate

# Ensure logs directory exists
mkdir -p logs

# Stop existing Gunicorn process if running
if pgrep gunicorn > /dev/null; then
    echo "Stopping existing Gunicorn process..."
    pkill gunicorn
    sleep 2
fi

# Start new Gunicorn process
echo "Starting Gunicorn..."
gunicorn -b 0.0.0.0:5000 app:app > logs/gunicorn.log 2>&1 &
