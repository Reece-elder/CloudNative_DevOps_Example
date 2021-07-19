# Inventory

The Ansible inventory is the list of hosts that Ansible can and should connect to
It allows you to add:
- IP addresses
- Keys
- Usernames
- Any other details needed to add

default hosts file at /etc/ansible/hosts 

when running ansible commands you can specify the inventory with -i

## Custom Inventory

Inventory files are created with yaml

All values are children of all:

Hosts contain a list of hosts 

## Custom Playbook

