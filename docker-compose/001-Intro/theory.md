# Docker Compose

Docker-compose is an open source tool to create and run multiple docker containers with a single command. 
More work for a singular container deployment, but useful for multi service applications

<4 part micro serviced (reverse proxy, front, back, RDS) diagram>
- Human error
- Length
- Not repeatable

## How

Docker-compose uses YAML
`docker-compose.yaml` OR `docker-compose.yml`

Yaml = shopping list => what you need to get, NOT how to get them

## Installation

sudo apt-get update
sudo apt install -y curl jq

Set which version to download
version=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | jq -r '.tag_name')

download to /usr/local/bin/docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/${version}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

make the file executable
sudo chmod +x /usr/local/bin/docker-compose

docker-compose --version

## Services 

A service is a deployment of the same containers
A service CAN be one nginx container
CAN be 5 of the same flask-apps
