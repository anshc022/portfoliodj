#!/bin/bash

# Install PostgreSQL development package
apt-get update && apt-get install -y postgresql-server-dev-all

# Install Python dependencies
pip install -r requirements.txt

# Run Django migrations
python manage.py migrate

# Collect static files
python manage.py collectstatic --noinput