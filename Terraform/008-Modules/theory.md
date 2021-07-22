# Modules

A module is a collection of configuration files, generally consisting of
- main.tf
- variables.tf
- outputs.tf
- terraform.tfvars

## Use of Modules

Modules allow you to gather all 'resources' for a single 'thing' 
E.g a VPC. VPCs (with Subnets IGW etc) consist of a number of resources to create one thing. 

Creating a VPC module means you can just reuse that. 

Another use case is in 'things' which you'll need to create multiples of, such as EC2s.

## Module scope

When using modules outputs and vars are local to the directory. 
Generally all module variables are defaults or blanks, but the root main.tf sets the variables

Outputs are created in the modules, raised up to the root main.tf and outputted from there <DIAGRAM>

