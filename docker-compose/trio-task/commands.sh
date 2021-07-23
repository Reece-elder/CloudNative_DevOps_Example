#! /bin/bash

# Create the network
docker network create test-network

echo ==================================
echo Network Created
echo ==================================

# cd to nginx
cd nginx/

# Building docker image
docker build -t nginx .

cd ..
cd flask-app/

docker build -t flask-app .

cd ..
cd db/

docker build -t mysql . 

cd ..

# Running the Mysql container
docker run -d --network test-network --name mysql mysql

# Running the flask-app
docker run -d --network test-network --name flask-app flask-app

# Running the nginx container
docker run -d -p 80:80 --network test-network --name nginx nginx
