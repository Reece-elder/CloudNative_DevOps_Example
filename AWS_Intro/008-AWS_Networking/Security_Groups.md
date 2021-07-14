# Security Groups

Collections of rules of how resources can talk to one another
Security Groups can span Subnets and cover multiple resources
OR multiple security groups in one Subnet

Connected to Instances NOT subnets

Generally security groups you change *inbound* rules and outbound matches

## Tutorial

- VPC
- Security Groups > Create Security Group
- Add a name, Description and choose the VPC
- Add an inbound rule(s)
- Add a rule to allow SSH connection:
    - Type: custom TCP OR SSH
    - Protocol: TCP
    - Port: 22
    - Source: Anywhere OR My IP

- Add another rule for RDS
    - custom TCP OR MySQL
    - TCP
    - 3306
    - Anywhere (My IP wont work as you'll be connecting from the EC2 you created)
- Add a tag

## Exercise 
Create a Security group that an EC2 and an RDS will be able to connect to

