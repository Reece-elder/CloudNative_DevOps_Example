# Ansible Install

Ansible can be installed using APT and adding a new repository to your APT

sudo apt-get update
sudo apt install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y

Check if ansible is installed with

ansible --version