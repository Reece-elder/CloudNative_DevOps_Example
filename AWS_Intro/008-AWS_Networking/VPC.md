# VPC - Virtual Private Cloud 

## Theory
VPCs are isolated sections of AWS
Exist in private RFC 1918 IPv4, not directly routable from internet
These VPCs can't directly talk to each other so they *can* use the same CIDR blocks 
If the same CIDR block though they *CAN NEVER* talk to each other, different CIDR blocks can

Most resources belong to a VPC (or subnet group) saying what their IP address is
Private IP that isn't accessible to the public 

## Tutorial 
DONT USE WIZARD
- VPC
- Your VPCs
- Create VPC
- Add VPC Name
- VPC Cidr Block (10.0.0.0/16)

## Exercise
Create a VPC 

