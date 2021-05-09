#!/usr/bin/env bash
set -euxo pipefail

# Import the public key used by the package management system
wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -

# Create a list file for MongoDB
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" \
    | tee /etc/apt/sources.list.d/mongodb-org-4.4.list

# Reload local package database
apt-get update

# Install the MongoDB packages
apt-get install -y mongodb-org

# Allow to connect from outside of VM
sed -i 's/127.0.0.1/0.0.0.0/' /etc/mongod.conf

# Start MongoDB
systemctl enable mongod
systemctl start mongod
systemctl status mongod

# Waiting MongoDB to start
sleep 5

# Create DB and user
mongo < /vagrant/mongodb_setup_db_and_user.sql

# Fill-in tables and data
mongo dwdb -u manager -p ranger < /vagrant/mongodb_collections_create_insert.sql