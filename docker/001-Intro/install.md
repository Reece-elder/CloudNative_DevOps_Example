# Installation

Firstly you should update the package manager
sudo apt-get update

Curl should be installed (curl grabs web data)
sudo apt install curl -y

curl the script at the 'get docker' site and runs it as a bash script
curl https://get.docker.com | sudo bash

Add the current user to the docker group (allowing docker commands)
sudo usermod -aG docker $(whoami)

Restart the current terminal (reboot etc)

Check you've been added to the docker group
`cd /etc`
`cat group`
Find docker group and see if your name is there


