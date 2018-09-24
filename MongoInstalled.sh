#!/bin/bash
echo "Adding the MongoDB Repository"
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.0 multiverse" | sudo tee /etc/apt sources.list.d/mongodb-org-4.0.list

echo "Reloading local package database."
sudo apt-get update

echo "Downloading MongoDb"
sudo apt-get install -y mongodb-org

echo "Starting MongoDB service"
sudo systemctl mongod start
