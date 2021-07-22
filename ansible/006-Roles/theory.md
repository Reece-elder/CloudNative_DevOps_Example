# Roles

Roles are ways of reusing tasks that can be grouped together for some sort of objective
This group of tasks can be be called wherever access is found

## Directory Structure

roles -> <name of role> -> tasks -> main.yaml
important the file is called main.yaml within the tasks folder within the roles folder

|─ playbook.yaml
└─ roles
    |─ common
    |  └─ tasks
    |     └─ main.yaml
    |─ docker
    |  └─ tasks
    |     └─ main.yaml
