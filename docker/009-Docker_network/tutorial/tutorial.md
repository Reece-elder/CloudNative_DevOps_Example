# Tutorial

1) Create new folder and cd to it
2) `docker network create new-network` Creates a new bridge network
3) docker run -d --network new-network --name server bobcrutchley/python-http-server:latest
4) run curl localhost:9000 to access container
5) `touch nginx.conf` to create new nginx conf, changing server to our name if we choose to
6) Create dockerfile for nginx
7) `docker run -d --network new-network -p 80:80 --name nginx_cont nginx_new`
8) Access external IP address

## Exercise - Do Tutorial

## Exercise - Do duo task

